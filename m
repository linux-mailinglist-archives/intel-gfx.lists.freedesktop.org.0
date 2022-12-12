Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C21F649CF7
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 11:48:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C409310E194;
	Mon, 12 Dec 2022 10:48:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EA4A10E194
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 10:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670842105; x=1702378105;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:to:from:subject:message-id:date;
 bh=chnPSBx5ARznNXLbdENmpnbVlwuO02xzXqe+643tP3I=;
 b=V8lxRJxIV0Yf70+ZIYcmxmoBWYaojRSt66U2pfnTxIFcH+1rJpgNk77T
 X+0n0lRC6o61m3AtM228+qIY5x76zaNxbxShcaMAv8IlTkC/0n8adKOkF
 A+I+wxwN5BoX03K3Ta6rHiystYny7+DKWkQuqWKKJH6FY4dBrlx3T5dVd
 TNV6Io40ewyzdKqUYe8TlLgZFZ3GtpdYYMeYdJypTmguTeqqSX7SKL5Hu
 x4mBLXsxTP8X1rcGGZQ++Q+VnIX32UXrULBPoOQJj1x9DJVg50g2p2W0z
 ZRlCDVb/e0gtQqlipZL5PBP4fY/S4G1QcoXMijheqEwjy5vceYIs336Do Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="297502151"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="297502151"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 02:48:24 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="790446911"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="790446911"
Received: from dcarleto-mobl.ger.corp.intel.com (HELO localhost) ([10.252.5.3])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 02:48:23 -0800
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Y5IaHmRySwSipUSd@unerlige-ril>
References: <20221201010535.1097741-1-umesh.nerlige.ramappa@intel.com>
 <20221201010535.1097741-5-umesh.nerlige.ramappa@intel.com>
 <Y5IaHmRySwSipUSd@unerlige-ril>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <167084210067.7446.1559127945133707909@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 12 Dec 2022 12:48:20 +0200
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/mtl: Add OA support by
 enabling 32 bit OAG formats for MTL
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

(Switching to my @linux.intel.com address)

Quoting Umesh Nerlige Ramappa (2022-12-08 19:08:46)
> On Wed, Nov 30, 2022 at 05:05:35PM -0800, Umesh Nerlige Ramappa wrote:
> >Without an entry in oa_init_supported_formats, OA will not be functional
> >in MTL. Enable OA support by enabling 32 bit OAG formats for MTL.
> >
> Thanks Lionel for sharing the Mesa MR for MTL -
> https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/20228

We should not merge the userspace changes ahead of the kernel changes.
They should be ready and reviewed, but not merged.

Umesh and Lionel, please re-read the requirements for merging new uAPI:

https://www.kernel.org/doc/html/latest/gpu/drm-uapi.html#open-source-usersp=
ace-requirements

The order is clearly documented there:

"The kernel patch can only be merged after all the above requirements are m=
et, but it must be merged to either drm-next or drm-misc-next before the us=
erspace patches land."

To follow that, please revert the Mesa changes for now and follow the right
ordering.

Regards, Joonas

>=20
> Regards,
> Umesh
>=20
> >Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> >---
> > drivers/gpu/drm/i915/i915_perf.c | 1 +
> > 1 file changed, 1 insertion(+)
> >
> >diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i91=
5_perf.c
> >index 8369ae4b850d..a735b9540113 100644
> >--- a/drivers/gpu/drm/i915/i915_perf.c
> >+++ b/drivers/gpu/drm/i915/i915_perf.c
> >@@ -4772,6 +4772,7 @@ static void oa_init_supported_formats(struct i915_=
perf *perf)
> >               break;
> >
> >       case INTEL_DG2:
> >+      case INTEL_METEORLAKE:
> >               oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
> >               oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
> >               break;
> >--=20
> >2.36.1
> >
