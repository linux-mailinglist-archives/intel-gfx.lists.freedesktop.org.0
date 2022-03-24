Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BF54E652D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 15:31:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA1FF10E855;
	Thu, 24 Mar 2022 14:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E47D310E0D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 14:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648132299; x=1679668299;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=llxEBY8U5mA33q2GqlJlFC7Jf9Sk5tk+DCpFgFNsWIE=;
 b=Ungcd8r0Vz89FDDwdZ1DF6S85r92EpqrJn65451rGk3MPh+pEvqcFRVc
 e5CAMtvqnS7YMVl8SOr2+tUje+JoYpaJ7SSYymRMbQu2Ulkcc4BA3L19M
 5iTkIJG5mhxmQX271Lfuhbc8i4EFu8lcYWd1lbsMil0yoqWcWAt4gyd4s
 aHQX+coxhkvPvhdxAa+Vj7IfNCG4SXiCfpOl71m841TTuplFaZj81VJ4L
 SX/653AcmEy9AmKJG4P2sue39psLGudkvevJQiuD4onbnv+J+nqUsMede
 kksZvSCPmRNVs5gL57Q5lNVYk46dg+A8Bkk4AuWtHtCO/UEOaB8CEIL9T g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="238995937"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="238995937"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 07:31:38 -0700
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="501411453"
Received: from smurkank-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.102])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 07:31:37 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Mar 2022 14:31:22 +0000
Message-Id: <20220324143123.348590-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 0/1] lmem_size modparam
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

Test-with: 20220324142621.347452-1-matthew.auld@intel.com

-- 
2.34.1

