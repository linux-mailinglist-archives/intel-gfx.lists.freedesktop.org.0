Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E543BDF69
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 00:31:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B73F6E5C1;
	Tue,  6 Jul 2021 22:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8214E6E5C1
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jul 2021 22:31:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="209161257"
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="209161257"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 15:31:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="645191051"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 06 Jul 2021 15:31:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 6 Jul 2021 15:30:59 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 6 Jul 2021 15:30:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 6 Jul 2021 15:30:59 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 6 Jul 2021 15:30:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YGJ/bcyuPQfe2a+pe7pFW3jAih3t7lBKkK1ROU0zlDj41l0gcyF1qGPVf9xrSItTCd277YRKHNRmsBBBQi9tc7AK169pSmtj5i6I6nAM/tAEAMS8lJA/29eLveUuriPJKN35A+NBcIc+Xzv/oMCu9xrzWhVW/apf04pCz38VVGUxb3RXFuxNhGLIWIpZoxZ9cyj8i62fFXCrc1zugMuKzSiika/p785Q0FzAWzzA7QFk5H8RM+8vkx61zhzaMlDREqaGubj2RZDbIpHdEumoS+K5aY1AC19ZztAMFcgFYbdZKxA3p59EeoZMeH9/e8F9eDqXUrQQdHE7z2JI8mtF4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z7kBewicCTU4Q4zZycw76TArw+xaStVlKrPEAqhHmH8=;
 b=ZpFLJf3LWr/lAYkmDvYMjs2Q6HnjMnkMinpmHm9g1buWhpQ0yuqY4RjAjxg5OBuDDHRVr1gZ0ADFYUTzDDzuwyNEAW9dIB90e84KCADkRIW3wbt1AnPNpRQWtTqOnZclF3N21LWK7LicPBi5SVuzgf7i0yLE1FFPrO1e/8vhchoHbWOD/nvZ/Tco/hTm2bHZiQcmCpq+3Nfbc0fOlg/9THW9i0w8VOsnkzb5EV59kC4CbY9EB/6xxzoZUuNbbfTZSlH+LtXARjohpHjTXyYRdrRbpHI4M0z41qnlhAhZZTycBDxIWcJrCRsncxGHhMhUGdYkz9ca9vKZXDlMJ8AHjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z7kBewicCTU4Q4zZycw76TArw+xaStVlKrPEAqhHmH8=;
 b=d05kHdHYLXRgOv/Css/VQd1OjTmEoTqqIqdYaZQwldRm19lqKwo96VjyVKcXFfbB3zuj2rINSmHgBgik0raIXDoekE9G1PYudY3tuQxlzekbofVtp01cldFw1ePtaN0JXv4wHqASdK3uIN+oLiRXmM00OE4PeVs/NgOYcI6CiEQ=
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by CO1PR11MB4803.namprd11.prod.outlook.com (2603:10b6:303:90::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.27; Tue, 6 Jul
 2021 22:30:57 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::995c:45e9:2c8b:d7fc]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::995c:45e9:2c8b:d7fc%3]) with mapi id 15.20.4287.033; Tue, 6 Jul 2021
 22:30:57 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/dp: DPTX writes Swing/Pre-emphs(DPCD
 0x103-0x106) requested during PHY Layer testing
Thread-Index: AQHXDBdQiC1zTvchoUK/PHDZY5TQ+Ks3VP0A
Date: Tue, 6 Jul 2021 22:30:57 +0000
Message-ID: <dbbe498252234d16c840af1914efcfa019f2fe2a.camel@intel.com>
References: <20200822064837.3276-1-khaled.almahallawy@intel.com>
 <20210226081554.984307-1-khaled.almahallawy@intel.com>
In-Reply-To: <20210226081554.984307-1-khaled.almahallawy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 95064147-d6b9-4d2c-c90e-08d940cdb9aa
x-ms-traffictypediagnostic: CO1PR11MB4803:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB480321D2FCF45EFB5557C73F891B9@CO1PR11MB4803.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HcCXEKYVbKouCE4FQrD6gI7vNpQ1/usfqeQEZolKozjK30tu3/QB7+QYSSGNKSNuyKL66tqG0ONGypTiXXfkP6/qmgnkrmroXVnGiyAEIr+r7I3BEBYMIA6Cn++vuqOmUX485riLPrUbk13Nl79aKdVphrxAa7dbCmHwnwPj/8EA4mzwyi3vsPbYNNuDNXb21dzhAE0EI1QKflfRgRc3DWJwi8nQes4QPotGunwQtr1378SitfqCdT2piGhrAu1iQSxXDmH0vULrpKj/E2rva+XOUdnnM+7CBK2dJRJx7dER/3XKFR/99bM4kWkEh+pbGf2a4f+/0oclyLuQwU4FEmfGFasNoupdXCrxUggx5+s/txxLzI+N0+vGc8FB6lfGkK/ZPq/SiHjn/yaFmSnM9B/AWug7PMBLogyPxtbmorBKfqE1AjAuxEFC8N/ncVPnmiirwRlKS6YFKkyY9EANPstt59j7Z2aYM9OLf7RAmo0elNJXiF1cFVXV3PerHbJJD+X6NWj+VL80SGhZbIE6kjEfL7+mpjQIG/36boH6ANERKWxrOREbY383BIp2b9fmzkN+ABJBegqJZKWK7/6Hbsly5qH9LcFre790h57Xyl2wMLpw3DWUEw3qS+qPQKVdaFzT9lpQ55vSr7cfjrdz6w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(39860400002)(136003)(366004)(346002)(6512007)(4326008)(64756008)(71200400001)(66946007)(66556008)(66476007)(76116006)(186003)(107886003)(66446008)(478600001)(91956017)(36756003)(6506007)(38100700002)(2906002)(8936002)(6916009)(8676002)(83380400001)(6486002)(86362001)(26005)(5660300002)(2616005)(54906003)(122000001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-15?Q?73WIa37vG9su/hfP0IZJNYHvqmzMPSycnaQLxc4goBsp7zVYyWlk93EYh?=
 =?iso-8859-15?Q?CrTEoPCZN0BMoi5ihlUqBCYfG9FdcNGJpFQi0LzpI1E7FlNaYrB2nDOBo?=
 =?iso-8859-15?Q?240ltgPjgF04UjtMtO3xQ73omut1sOG6HRVjLrxeA01urQ65renZZuvdk?=
 =?iso-8859-15?Q?YEFtJj5i0mU3toibf+T19q9zqsaSv+NZ6XIwa3EmOCThAsrKmLDGTI05l?=
 =?iso-8859-15?Q?ZEcM82tLSMlVW1jjebbD/AH/UBzez7pGIIWHjmQsGuisNjPNglC3tmSkf?=
 =?iso-8859-15?Q?t67tODmPEOZ83RO8h+10Zz2hktnBlqlacDVHOKBrETFBeYpDrxv7tBQ2u?=
 =?iso-8859-15?Q?Tx21IqdnLXPJOzP+rkJUrVQliEncDMuvOoArm/7oER6OV7mMQFeQOZn7D?=
 =?iso-8859-15?Q?yAs4QOVrN5gs/xJgRjOTxq8lnz4KiCUBHEDX+kwsgAm5iQzgTkX9gHWDu?=
 =?iso-8859-15?Q?IQqym4bM4s7c2VcxY97ZeQtPZa0jL50/pLyhAUmHulKhQBDL92nMHi1k0?=
 =?iso-8859-15?Q?Wm7GwMpYCeCwc45m5/1LQJowiFmhS9MpMRD812vQUO0WuogsaPp59GkT8?=
 =?iso-8859-15?Q?eFAN0vlugtWErtv62X+IJzJIuM23G+ONIPFwaR0wnS8ODusfN4b39wzC8?=
 =?iso-8859-15?Q?5WM4MdBEKHAtTCbkx1aFIP5vMKIDvbGvGqfb+KqfQHQxzBfCGFjAxJkyi?=
 =?iso-8859-15?Q?ntcIhdtcZ9dIo9iNjK/rmhHsl0jqcfLhQKwFHXLnRrlrtBwUCio1knbTb?=
 =?iso-8859-15?Q?DgIzHXt1LdYm4csKBF/Ccf8+6YbQTWzM/Rs0cS+IPirkPdjtpLA8UKECz?=
 =?iso-8859-15?Q?zyulSvtujjNk2AKQx+s3Z3x1w+t09+p0qY1Du9HTOXqV+PEKpj+muo8TV?=
 =?iso-8859-15?Q?ZR78RgfLkddOEfDQgROXGh3asnlMz+e39GkT81UQICF/yiVt9n4p55+o8?=
 =?iso-8859-15?Q?j9mVtPBpw8UcNMiXPnGgbDy+dkf5GBTbD3UQgjS8q7bUZVBEJ3iMbEcCY?=
 =?iso-8859-15?Q?jV6FjKRgPuPetQ5cKGF+Z5SIIo3LSjC4BvtyVTvqaPaTk7lk6jiQQKf8n?=
 =?iso-8859-15?Q?a+kpbfRkWyoRT346hsU/RZozO6TKpML0S1qS/jGqnHOtoBMhRZzxub+YW?=
 =?iso-8859-15?Q?9ajbtipfwCbIsizxVdWsgfcXsS8XyWuMnU/n2PRObL+r1AJvaqF9ZkC6v?=
 =?iso-8859-15?Q?XWIr81YKYJkstNsU0E7ihE3dWgCHkslhpK3SRLIwNGnk4m23N2Svofr4Q?=
 =?iso-8859-15?Q?DX6D/sMyCGsmrHd739sDlF/GHI7zHTswwEZrIknx+Wk4rAY3ksyhlAPBD?=
 =?iso-8859-15?Q?NnqIORb8559Q2Lf7bioER7vPcKWilbya3Afx8YriAJKby7lIBWcefZ/OI?=
 =?iso-8859-15?Q?ka04IAaDoqb+cT4z7L8wTjBGxu0a38+hqzhNKe15mVUOyT0MSGWTcFw?=
 =?iso-8859-15?Q?=3D=3D?=
Content-ID: <BB7D3ADEA7293E4099DC5113685EE65A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95064147-d6b9-4d2c-c90e-08d940cdb9aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2021 22:30:57.5692 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k6ph4N2IB4MOk+Br7+7+XfN/p2/xBmBVAn/ICu6zGIsTfZbcqmBgCjJifRD5qiaOttWAEeqQbqNb4ow6ra2u/VH4DgmroOl+ItuEwTjqpJ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4803
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dp: DPTX writes
 Swing/Pre-emphs(DPCD 0x103-0x106) requested during PHY Layer testing
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Imre,

I applied this patch to today drm-tip and it applied cleanely.
Could you please help with mergin it?

Thanks
Khaled 

On Fri, 2021-02-26 at 00:15 -0800, Almahallawy, Khaled wrote:
> Source needs to write DPCD 103-106 after receiving a PHY request to
> change
> swing/pre-emphasis after reading DPCD 206-207. This is especially
> needed if
> there is a retimer between source and sink and the retimer implements
> AUX_CH
> interception scheme to manage DP PHY settings (e.g. adjusting
> Swing/Pre-emphasis
> equalization level) for DP output channel. If the source doesn't
> write to
> DPCD 103-106, the retimer may not output the requested swing/pre-
> emphasis and
> eventually we fail compliance.
> 
> v2: Rebase and use crtc->lane_count (Imre)
> 
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2ec82a5c9f24..1ccf8602b3ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4471,6 +4471,9 @@ static void intel_dp_process_phy_request(struct
> intel_dp *intel_dp,
>  
>  	intel_dp_autotest_phy_ddi_enable(intel_dp, crtc_state);
>  
> +	drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_LANE0_SET,
> +			intel_dp->train_set, crtc_state->lane_count);
> +
>  	drm_dp_set_phy_test_pattern(&intel_dp->aux, data,
>  				    link_status[DP_DPCD_REV]);
>  }
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
