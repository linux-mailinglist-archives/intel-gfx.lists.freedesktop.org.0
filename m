Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 397946D93E5
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 12:24:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C95510EB4C;
	Thu,  6 Apr 2023 10:23:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C79610E0E7
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 10:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680776637; x=1712312637;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U8pu7Du3uFiMXvZCh4+mOWOxjeBojpcCoiZhvYYXKAI=;
 b=jt+77ya2mI1LvZY8pKXwgch57N24EONq21Frwc0qrV75XNKulHB8c/CT
 ROqdrc2keMEtqvlJYnthLND4v0fJ5VpquIMpJwiLFTLqXyhrRFwC1qYGN
 eglwATafAxQ5nQRMpTMrQYhMKn1LzSQH/8fjJQRqreVe22AgoBx+X0xg0
 od82rpv35CMATd78zJ5n3Tkod5JwlR6rTHVlf9M5pLsCIUrTAYCDFjz9Y
 V+qiZycYLLhvj9PqJBS/TeUA6fXCvNa3slifUB+3xFKdGk6/Tx1m+yNYt
 UUtqnAPG0SOU2S1zEqOokc8SWnz9RbxgKpSk+HDc4dAXPUDuleGlZzZf7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="323077309"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="323077309"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 03:23:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="717405114"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="717405114"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 06 Apr 2023 03:23:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 03:23:55 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 03:23:55 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 03:23:55 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 03:23:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ceB1L0F5eWeD5xXJv596h1bbLsAgHswlX27OlIGEXnzrOU78bWxZKz0dc26nJkU9nC/WES4iuAa4KfoYrAmysOSfE56TqUDUbMnabf+jnIaoq5P5qTFo7+VdXmPGKITi1CYHm6WtAScheez257rPpVJqPmQYVKlhxeWEAF09tU3lvH2swxpnMrEo5UtB7fmRego06z35hot1ZwtlX4wrgs8vubCe+C9X0yQnTHhJwUhJtfYgfdsAKweVqI3X/0PEzhScn68f/NTHBZBtYXbO40t5A93Dsz8OyLnf2HUWmHoVDoCFBbv32OxFtw3soB7zUuxlbU6R4q/3Ifw7H90AxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ma9nvEFKRRIkDNo4mNC1IXgJnkawIbgMcd9XT6jjlDQ=;
 b=Zt8dSIdOoQpjEh4DFqUJwujOGSZ2wUV+cWYm0YDncXTuwIinlDAC5Ed/k00HyVr29xV/XD8dqa3KYMgC3pFmH6sHjoWhZYAmSE4xUwlhqMGe2YaTeiBJvXzg4bzy1JNEA3ibgkzYapGZpDDXKCiJat08W21hsaRQyc3UknGlRCh5UqkktsgumSKr3+GT8F6MOnrj/wN5xUVwKascVHpL+A+Z6rvax9kPtIyqqjsqx8PqsskE2rh7wMe5c/SHz7fnYDkh7RVl9foI/0A7IbyIcaEQJ+LyjZPsWxaQtc3cIr0GLZ9sHO6vHaRcnZYmV1mBkJShsEvq1U11CMYJZ0iFOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB2861.namprd11.prod.outlook.com (2603:10b6:805:61::14)
 by SA3PR11MB7463.namprd11.prod.outlook.com (2603:10b6:806:304::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Thu, 6 Apr
 2023 10:23:48 +0000
Received: from SN6PR11MB2861.namprd11.prod.outlook.com
 ([fe80::de69:69e7:6a19:9b55]) by SN6PR11MB2861.namprd11.prod.outlook.com
 ([fe80::de69:69e7:6a19:9b55%5]) with mapi id 15.20.6277.030; Thu, 6 Apr 2023
 10:23:48 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Query compressed bpp properly
 using correct DPCD and DP Spec info
Thread-Index: AQHZaGXr3jf6UsZUuE+hdM2XIIgH3K8eDDUAgAAGUrg=
Date: Thu, 6 Apr 2023 10:23:48 +0000
Message-ID: <SN6PR11MB286117F9445FD101280CCF89EF919@SN6PR11MB2861.namprd11.prod.outlook.com>
References: <20230406085802.7381-1-stanislav.lisovskiy@intel.com>
 <877cupz5yr.fsf@intel.com>
In-Reply-To: <877cupz5yr.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB2861:EE_|SA3PR11MB7463:EE_
x-ms-office365-filtering-correlation-id: e4dcd47d-5079-4dce-ad4b-08db36890279
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wvoMfzUf4Pg0Co9IVZ+1SJWtrVLr9KhX2HPdwXZLVfklIu77waLxFQmEDQ64sng6Z2/CCLSTR18RgIdwppVc5QLVm8sFwzS1SYuxrAZq0IHlzqI1Bs8mAzEUirAymVwHbiQ0KahXCrxVZf/w+1xdlOrs3YYqOBMx47o79nKuuA78tcHRZcYtBAitvDMIZqTH3h2TIOxqGTyTAkyNrVytm9H9OO0h4NoHs/KlRgkPAhffeY43+C221SBImQZZXGhv7HiuSgg9EB0+Zrn+qPYvLwFdIDK/VyUuSWbhZpfbDcippHHcVuXZ+PphNatfapxOC6gFxpXb8s5o09n5SsSy3Ii2FJpSx6szwpJnIsOM2YOzg1j5zceiVU88Bkb3ja6xElzp2z7s+CJNoOsPf9gZotWBHFDbRxOmJ4ywIGvkQ+HD4C9B+46afviuI3YMIii/WLpJ/HQ67thccPkvpFWSyCgF9V87Gzqnjx6nRlIlczNs7luH1i3eSTKDgtQE8m7eZHU5+zBT9EYqJV/sC0DE3djbVUUZAEK79vRMD3qgYwS+WJV0RM58iwI8f7wqeS3kD5b54rJOcRnGHxPMVsq5BSQ6xAlLEen1pVF1UDU835XCVGIpdaMMzvHLBkHDD9xY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2861.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(366004)(376002)(346002)(396003)(451199021)(2906002)(38100700002)(122000001)(5660300002)(66556008)(66476007)(82960400001)(38070700005)(66446008)(8936002)(52536014)(66946007)(4326008)(76116006)(64756008)(110136005)(41300700001)(8676002)(91956017)(83380400001)(316002)(33656002)(26005)(9686003)(7696005)(6506007)(186003)(55016003)(53546011)(478600001)(71200400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rMlq/NKAZf+jHvVCN7sYJkhpKeys6MuP9gGoKiW9VbjvJIQkoUPdexu6K2xa?=
 =?us-ascii?Q?8TQP2dAb4JXFeJgSzAjk3GsozXJ6sGE31lq14ZnsUIveFHAoDZICdhpyuVmD?=
 =?us-ascii?Q?WkfgcZzSjmwD6H24wnBB2lnk5ren1jRSzLWLHLpf6X5IL4e0MWPNUlkPODCe?=
 =?us-ascii?Q?RawfpjLHwXrNWgyN3je0mWP/22TBFIDbijTSGrKTi6GaS+bkuBlTQFzIg/uM?=
 =?us-ascii?Q?1TG151JEENAUu/i3cnqknqViH2x4n/XeQG2gcmHRUH9HBbYuWdWNuWo5zdGI?=
 =?us-ascii?Q?uvMmHAbl1yAV05xjN4y8Q+M7p2jDamm1nvYTu9AWysglBbW4fLp6a5sE4B2O?=
 =?us-ascii?Q?q6VkJFSx7bYi3Ami+qbzFYxmbzlZz9IJNw2Pu0IMdZBn0Gk2yheRwmbhTtt9?=
 =?us-ascii?Q?/Bu/v7VA3GGH/FD58ynI5lsVbACAoQuKUyiOPgUGQ56SUb3f1VP8i+5PqXrC?=
 =?us-ascii?Q?Ko+PhpjzMMySv/i7mQb56hhX/VoDwDK/3Z/OqgX2Mrw8s11fYZ0tq3PVAaiA?=
 =?us-ascii?Q?Q+nRPlRHhXmD1i63lPMCEIMyup5+3HpX5PRVEwn64P66ZU8A9cjDvoVlYHZb?=
 =?us-ascii?Q?Giot8pvYCHHtkjhWlxfntsdFwZF1FJU+QFfxxzM0/fKOGqNmVOi/bQ+eDnMu?=
 =?us-ascii?Q?Qx/C/yLkb7xFzhFh9zA9VuEvUfvqhIkVC9hr2vdOZjrENqEVpfj3PnQ9hYP2?=
 =?us-ascii?Q?qw8Yuv3MCUMc+wu4oCWL118joptS2KXrbeJySIcRPBLH9NqNYjf3Ft/g7sbO?=
 =?us-ascii?Q?FxyP67wg0lz4AsE5twmykJ7AjR7GsklOC9YEQFg9u/OnfKrSSoAKBxxbvWt8?=
 =?us-ascii?Q?2cmeaNRueBFhMUL6qn/G1TrJBS0HsTW5WYSc0bhy2PvIUSThKkkBLPXJsXmd?=
 =?us-ascii?Q?6y/aoldT03+JKZSVznHbNjKSwE6X9JG/4b0KLVBGnH6CHN/uXs54DaN9ehU7?=
 =?us-ascii?Q?BM5ceR9TSrUUBmyqsAomtTtn/AWZjZ7Be9ZJlQuatxAnEJk16fHDoKuDPJVF?=
 =?us-ascii?Q?X96V+xc0Vq4DQ84Wf+f6XjTpePUP2oxrsuiSfyImgImLb9X7P6IMEg+03UZn?=
 =?us-ascii?Q?nFliDFxL8fOFgnzLJwPl5+WzZ2jBFwPecK0kmyZIt+yczGCl96rZzRLgw/gR?=
 =?us-ascii?Q?p4Rw1ndFWKYOyxUcab/D7B8PigeS8mFHYCi+/ZwIRS+Cd0s6ZQ+uuFgG0Z5S?=
 =?us-ascii?Q?w6yK7rq01b2hBTJERhkjYEplbH0UAML5SSG5qs8q6yk9MoKnNA2Arz9fblTR?=
 =?us-ascii?Q?27gnLzJVQW087wjoNpkcPefa1fKOxSKCNN2jlK+O98D4fej7cxmqHltQEJ4E?=
 =?us-ascii?Q?vPhx8GqfkRSF9FH/H95s+eTZC44uIhng6uDbMUpiQ1hB7XVREyKwMy7UP/Dl?=
 =?us-ascii?Q?sGEvkQBvnhuJLm/JqSnWkGIxewUH6lPVZg28QoXHykocucZZL+FtKgJMmUym?=
 =?us-ascii?Q?bmNtJyjLW3XA9itHqLSpNNwNFWpn2C7DRvhmgZIYHs+UfRe0GWOfQWlh4neZ?=
 =?us-ascii?Q?71b/7dB0u4A+DuaKr4fEJqsGo1eJ63EfPSkexU7OMb/TWd2OJ2GaVjoDe9HO?=
 =?us-ascii?Q?VJ8s0g5izRB2p0eaVpTmkxnddwHozi4ShQUk6TGEjBCXXEyVbewl21cKYLDX?=
 =?us-ascii?Q?DQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2861.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4dcd47d-5079-4dce-ad4b-08db36890279
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2023 10:23:48.2771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hPYvQlmD4KOkELMMDCp8F0l8z3NO4NrGUDWWeTCzlT3BzE+Vuq3frV57jKr5lkRAC2c0TYpMgHk5Ta5s3aG849X4gMEBL3PIqpSsdMtROds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7463
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Query compressed bpp properly
 using correct DPCD and DP Spec info
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

Not planning to upstream that actually, just for some bug on gitlab.
Want to see if that helps the reporter, then at least there is an idea what=
s the problem.

________________________________________
From: Jani Nikula <jani.nikula@linux.intel.com>
Sent: Thursday, April 6, 2023 12:59 PM
To: Lisovskiy, Stanislav; intel-gfx@lists.freedesktop.org
Cc: Manasi Navare
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Query compressed bpp properly us=
ing correct DPCD and DP Spec info

On Thu, 06 Apr 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wr=
ote:
> Currently we seem to be using wrong DPCD register for reading compressed =
bpps,
> reading min/max input bpc instead of compressed bpp.
> Fix that, so that we now apply min/max compressed bpp limitations we get
> from DP Spec Table 2-157 DP v2.0 and/or correspondent DPCD register
> DP_DSC_MAX_BITS_PER_PIXEL_LOW/HIGH.
>
> This might also allow us to get rid of an ugly compressed bpp recalculati=
on,
> which we had to add to make some MST hubs usable.
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 76 ++++++++++++++-------
>  1 file changed, 52 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index a88b852c437c..9479c7e0b269 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -174,6 +174,50 @@ static int intel_dp_mst_compute_link_config(struct i=
ntel_encoder *encoder,
>       return 0;
>  }
>
> +static u16 dsc_max_sink_compressed_bppx16(const u8 dsc_dpcd[DP_DSC_RECEI=
VER_CAP_SIZE],
> +                                       struct intel_crtc_state *pipe_con=
fig,
> +                                       int bpc)
> +{
> +     u16 max_bppx16 =3D dsc_dpcd[DP_DSC_MAX_BITS_PER_PIXEL_LOW - DP_DSC_=
SUPPORT] |
> +                      (dsc_dpcd[DP_DSC_MAX_BITS_PER_PIXEL_HI - DP_DSC_SU=
PPORT] &
> +                       DP_DSC_MAX_BITS_PER_PIXEL_HI_MASK << DP_DSC_MAX_B=
ITS_PER_PIXEL_HI_SHIFT);

This duplicates drm_edp_dsc_sink_output_bpp().

Both have operator precedence wrong, leading to the high byte always
being ignored. For example, sink reported max bpp of 32 turns to 0, and
24 turns to 8.

Broken since 2018. 0575650077ea ("drm/dp: DRM DP helper/macros to get DP
sink DSC parameters").

The definition of DP_DSC_MAX_BITS_PER_PIXEL_HI_SHIFT is misleading wrt
all of our regular usage. We should never have a FOO_MASK << FOO_SHIFT
in code, the MASK should always be already shifted in place. Here we do,
because the shift is not for shifting the mask in place, it's for
combining the high and low bytes. But I don't really think
DP_DSC_MAX_BITS_PER_PIXEL_HI_SHIFT should exist, at all.

BR,
Jani.



> +
> +     if (max_bppx16)
> +             return max_bppx16;
> +     /*
> +      * If support not given in DPCD 67h, 68h use the Maximum Allowed bi=
t rate
> +      * values as given in spec Table 2-157 DP v2.0
> +      */
> +     switch (pipe_config->output_format) {
> +     case INTEL_OUTPUT_FORMAT_RGB:
> +     case INTEL_OUTPUT_FORMAT_YCBCR444:
> +             return bpc << 4;
> +     case INTEL_OUTPUT_FORMAT_YCBCR420:
> +             return (3 * (bpc / 2)) << 4;
> +     default:
> +             MISSING_CASE(pipe_config->output_format);
> +             break;
> +     }
> +
> +     return 0;
> +}
> +
> +static u16 dsc_min_compressed_bppx16(struct intel_crtc_state *pipe_confi=
g)
> +{
> +     switch (pipe_config->output_format) {
> +     case INTEL_OUTPUT_FORMAT_RGB:
> +     case INTEL_OUTPUT_FORMAT_YCBCR444:
> +             return 8 << 4;
> +     case INTEL_OUTPUT_FORMAT_YCBCR420:
> +             return 6 << 4;
> +     default:
> +             MISSING_CASE(pipe_config->output_format);
> +             break;
> +     }
> +
> +     return 0;
> +}
> +
>  static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *en=
coder,
>                                               struct intel_crtc_state *cr=
tc_state,
>                                               struct drm_connector_state =
*conn_state,
> @@ -191,8 +235,6 @@ static int intel_dp_dsc_mst_compute_link_config(struc=
t intel_encoder *encoder,
>       u8 dsc_bpc[3] =3D {0};
>       int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
>       u8 dsc_max_bpc;
> -     bool need_timeslot_recalc =3D false;
> -     u32 last_compressed_bpp;
>
>       /* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
>       if (DISPLAY_VER(i915) >=3D 12)
> @@ -228,6 +270,14 @@ static int intel_dp_dsc_mst_compute_link_config(stru=
ct intel_encoder *encoder,
>       if (max_bpp > sink_max_bpp)
>               max_bpp =3D sink_max_bpp;
>
> +     /* Get Min/Max compressed bpp's for those Input Bpps we got for sou=
rce/sink */
> +     max_bpp =3D min(max_bpp, dsc_max_sink_compressed_bppx16(intel_dp->d=
sc_dpcd, crtc_state, max_bpp / 3) >> 4);
> +     min_bpp =3D max(min_bpp, dsc_min_compressed_bppx16(crtc_state) >> 4=
);
> +
> +     /* Align compressed bpps according to our own constraints */
> +     max_bpp =3D intel_dp_dsc_nearest_valid_bpp(i915, max_bpp, crtc_stat=
e->pipe_bpp);
> +     min_bpp =3D intel_dp_dsc_nearest_valid_bpp(i915, min_bpp, crtc_stat=
e->pipe_bpp);
> +
>       slots =3D intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,=
 max_bpp,
>                                                    min_bpp, limits,
>                                                    conn_state, 2 * 3, tru=
e);
> @@ -235,28 +285,6 @@ static int intel_dp_dsc_mst_compute_link_config(stru=
ct intel_encoder *encoder,
>       if (slots < 0)
>               return slots;
>
> -     last_compressed_bpp =3D crtc_state->dsc.compressed_bpp;
> -
> -     crtc_state->dsc.compressed_bpp =3D intel_dp_dsc_nearest_valid_bpp(i=
915,
> -                                                                     las=
t_compressed_bpp,
> -                                                                     crt=
c_state->pipe_bpp);
> -
> -     if (crtc_state->dsc.compressed_bpp !=3D last_compressed_bpp)
> -             need_timeslot_recalc =3D true;
> -
> -     /*
> -      * Apparently some MST hubs dislike if vcpi slots are not matching =
precisely
> -      * the actual compressed bpp we use.
> -      */
> -     if (need_timeslot_recalc) {
> -             slots =3D intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crt=
c_state,
> -                                                          crtc_state->ds=
c.compressed_bpp,
> -                                                          crtc_state->ds=
c.compressed_bpp,
> -                                                          limits, conn_s=
tate, 2 * 3, true);
> -             if (slots < 0)
> -                     return slots;
> -     }
> -
>       intel_link_compute_m_n(crtc_state->dsc.compressed_bpp,
>                              crtc_state->lane_count,
>                              adjusted_mode->crtc_clock,

--
Jani Nikula, Intel Open Source Graphics Center
