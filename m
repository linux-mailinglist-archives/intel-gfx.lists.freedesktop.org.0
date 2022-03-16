Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDD14DABCB
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 08:25:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF1B110E6CC;
	Wed, 16 Mar 2022 07:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E15010E6CC
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 07:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647415539; x=1678951539;
 h=message-id:date:mime-version:to:from:subject:
 content-transfer-encoding;
 bh=k8G+orSXKOqnwAq09iYZXX7BNJoCXyNB+We5mqzn1uo=;
 b=U+kPMeBX1yqeuePY3cauUzt0rVsTKPC9sjm5NLUKT758as0HbKuba7Qe
 p6KNiJHQ/MBjYf4vbpsVUceZoJlGD9vOJL8g2HIxCJaRL6LZJQgvNLyEb
 eUYBTn1VGhTesqz++aUaswOx+G15qc2DbwnGcF9ZahvNoLJT2/41LgaqV
 w5ktt7sy1u6vgnhmUXXsE2wAVtfGU91ZW8s9XQheve96JNxomSSHe0t7A
 X4l72FBJ9OueP4KO4o3dflVd4JfLFEZat3SJhkTxOD5Dq7XQuyYRNj3SB
 UINU7+x8qDQksZsU7IwL3gZbLs3wl4RMsFScnP2kOY01cU7MESRZzabJx A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="342943289"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="342943289"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 00:25:36 -0700
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="557320546"
Received: from sfhansen-mobl1.ger.corp.intel.com (HELO [10.249.254.132])
 ([10.249.254.132])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 00:25:34 -0700
Message-ID: <162c1566-87c6-072f-d340-1693f6a71aea@linux.intel.com>
Date: Wed, 16 Mar 2022 08:25:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Ramalingam C <ramalingam.c@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Intel-gfx] Small bar recovery vs compressed content on DG2
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi!

Do we somehow need to clarify in the headers the semantics for this?

 From my understanding when discussing the CCS migration series with 
Ram, the kernel will never do any resolving (compressing / 
decompressing) migrations or evictions which basically implies the 
following:

*) Compressed data must have LMEM only placement, otherwise the GPU 
would read garbage if accessing from SMEM.
*) Compressed data can't be assumed to be mappable by the CPU, because 
in order to ensure that on small BAR, the placement needs to be LMEM+SMEM.
*) Neither can compressed data be part of a CAPTURE buffer, because that 
requires the data to be CPU-mappable.

Are we (and user-mode drivers) OK with these restrictions, or do we need 
to rethink?

Thanks,

Thomas


