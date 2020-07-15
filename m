Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E42C220DCD
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 15:15:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0F646E04A;
	Wed, 15 Jul 2020 13:15:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA74E6E04A
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 13:15:20 +0000 (UTC)
IronPort-SDR: +S8nPPnsmysBoWnbSH0kyxNC4nNF/vHdtQ6zwZfH3zLq6RswjlV/xfdUiXh4FSFVi7Jv023caw
 nW0W8k1cvu7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="233996438"
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="233996438"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 06:15:20 -0700
IronPort-SDR: wB2pXnpGwL6QpVdPmGB6aj2Uu41DLEGRLM1uaN8QLdo4u0urlokB8JEDpGEE9J9QfhdzZCUMrS
 DetlI4Db4r/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="308246428"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by fmsmga004.fm.intel.com with ESMTP; 15 Jul 2020 06:15:18 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.143) by
 IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 15 Jul 2020 14:15:14 +0100
Date: Wed, 15 Jul 2020 16:15:11 +0300
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: Melissa Wen <melissa.srw@gmail.com>
Message-ID: <20200715131511.hgm6sby3hvj7aatb@ahiler-desk1.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
References: <cover.1592991729.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1592991729.git.melissa.srw@gmail.com>
X-Originating-IP: [10.237.68.143]
Subject: Re: [Intel-gfx] [PATCH i-g-t 0/2] minor improvements to the
 kms_cursor_crc doc and some comments cleanup
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
Cc: rodrigosiqueiramelo@gmail.com, intel-gfx@lists.freedesktop.org,
 Rodrigo.Siqueira@amd.com, kernel-usp@googlegroups.com,
 aurabindo.pillai@amd.com, nicholas.kazlauskas@amd.com, twoerner@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 24, 2020 at 06:54:00AM -0300, Melissa Wen wrote:
> Hi,
> 
> I was studying the code of kms_cursor_crc test, and I just adjusted some comments
> and added descriptions for subtests.
> 
> Melissa Wen (2):
>   lib/igt_fb: change comments with fd description
>   test/kms_cursor_crc: update subtests descriptions and some comments

Seems like there's a conflict caused by your patch removing unused
parameters from igt_put_cairo_ctx().

Can you an send updated version and CC me on it?

In case of false positives please comment on the CI results with a short
explanation and CC Lakshmi <lakshminarayana.vudum@intel.com>

Thanks for the cleanup!

-- 
Cheers,
Arek
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
