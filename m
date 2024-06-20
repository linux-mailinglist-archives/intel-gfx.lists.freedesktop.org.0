Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11916910118
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2024 12:05:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BA6910E891;
	Thu, 20 Jun 2024 10:05:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bOjkuXlm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E97B310E889;
 Thu, 20 Jun 2024 10:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718877941; x=1750413941;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6MB9j2wBRg4e49U1035cXOiG35iUEQuKLFGj9I5w5ns=;
 b=bOjkuXlmZcaUu57+Q1eNkpHxdyp8DZoh4Rd8hFgddvFH3d03tuzDnhG/
 PQfZaE+wyWMMg4ZlhkECDdMu11gw1sUvFJKE1NIODE5HCwTVnZPR5mbM6
 jc+23pzDUlC7KJDbHJf035Z4bqjonfglvJ4HAn9VqHPCafPIVqwiEZ3Ek
 8YxqBXLUxlMJ9QgTpjIjX5mC5ZCaS6+/8vBLX8MkBdRQG78C982JNA7cD
 76UYbZQlrjtDFgQ3X9MrnKG7npisBmaF4agqCWWBTbFHiHhjf8431IaBt
 ZKukJi4b7/qfnTKbS5d2rrDG/jFE+3KyJdrqVCo2Lixz2czpGuNN5ud+D g==;
X-CSE-ConnectionGUID: Fu+vvhFDTUK/WTGK4Aai3A==
X-CSE-MsgGUID: xe47x1uEQtKvmeK2qCTYVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="15974921"
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="15974921"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 03:05:40 -0700
X-CSE-ConnectionGUID: C2Rlrg8KRBW1RR0kJ3Ub7Q==
X-CSE-MsgGUID: wcM9MNoBSte1STwScmpNwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="42658969"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jun 2024 03:05:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 20 Jun 2024 03:05:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 20 Jun 2024 03:05:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 20 Jun 2024 03:05:39 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 20 Jun 2024 03:05:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gyLqYzgiRzCs9hlFooChBMIPLeWVazm0fK/B7pWe7nXkqRgW/7ggmDlGfjwDeQiPlu32bJcF6JeGN0AjixpwfmvgVZxrZ8mCHp3+zZsUEAhHk5ek8xLJAoRGj/c74pB1pMNjlTPhjUcygOZSM3dV4KEZI7XodS+EinCMx6Usx3/0zUgKfC3i0HGVTws4FxxrAzNcgNKEJcmGxxCyBtRttiyPgh0JiISunumYkYtW7xdA0nietUMvpIVQj7jxReFoBfXaz86Mv7b8eVyy9xVeqZsqYq+lZLsHmpgWaJ6SIoz7YRsCw6Xfmw4NiZBw4LHmeHrgFU/b8MZ3ryyWeCn6Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YjM5tei/DjiCQ59OYmmFWMyqk7rCRZZhW6tEssrgOtc=;
 b=Rj3zhm7cMOj8wyEuOTMhbOL4M21dRl9HM7TUyCzNnu0zvdY3LbQS0v2NA6p+RmmCMFcu2PscRI0O4Eu90hvBA1XEb2Dp41rf/Y0Vu0IxkoVaAt32eDMhgzC2klqB645lUlvDSQXJOrmqYaSVH+4Qbn1L/e0KgYKqzGJ595wssUDWUFWFKRCDO1yHofaRngotVMM5Nq70gpS82cpSa7TJwe5V5nx0voUlJ0k0I5GszbDrMWRAHGuOKKxN8TMmExrpgUMpI08ixb28wYCU01bBWy5je9IozjHB3zbeI8GzfJOi9L+0P2D1CjeRwGwROkFzxeafAdEIl/L42MLLOZghWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by DS0PR11MB7997.namprd11.prod.outlook.com (2603:10b6:8:125::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.21; Thu, 20 Jun
 2024 10:05:37 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826%5]) with mapi id 15.20.7677.030; Thu, 20 Jun 2024
 10:05:37 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Nathan Chancellor <nathan@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v16 9/9] drm/i915: Compute CMRR and calculate vtotal
Thread-Topic: [PATCH v16 9/9] drm/i915: Compute CMRR and calculate vtotal
Thread-Index: AQHauwb1wkpVT4XYeU2NJWNTI/5LY7HPSG2AgAAndYCAAAZZAIABAxXA
Date: Thu, 20 Jun 2024 10:05:37 +0000
Message-ID: <CY5PR11MB634479A21B6F8212A291F61AB2C82@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20240610072203.24956-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240610072203.24956-10-mitulkumar.ajitkumar.golani@intel.com>
 <20240619154207.GA1125704@thelio-3990X>
 <CY5PR11MB63444654C5E879687DE83D60B2CF2@CY5PR11MB6344.namprd11.prod.outlook.com>
 <20240619182604.GA3350616@thelio-3990X>
In-Reply-To: <20240619182604.GA3350616@thelio-3990X>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: nathan@kernel.org
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|DS0PR11MB7997:EE_
x-ms-office365-filtering-correlation-id: 4e344107-79a9-4b5f-0f62-08dc9110888d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|1800799021|376011|366013|38070700015;
x-microsoft-antispam-message-info: =?us-ascii?Q?S9u3sw7IWplJcHl6Nyf4JH8Wzv40myopB/1qv5QzKEzSDopyvK0tNKtOcYPI?=
 =?us-ascii?Q?5wJo5d3izR0U6Cg3oRwQGrcSCVXpVgUu3gRobvPh0wEyZCFkz54IHs7cB366?=
 =?us-ascii?Q?dnUCQmbWzFK9dlSoeI37rMnDTLSfdNPFFMspJOecLVlxyVgnC2ahEWUQoOTd?=
 =?us-ascii?Q?tEPixaP4RBMX1m8tl9DyNT8MBK6opEm9TLBtpMI69Oqqi+EQMowXWBCEXuGF?=
 =?us-ascii?Q?fbivdN16ZuOF0rovCXgMltkr1+iIsEHU9EdvIeBQJjnYnTdLfqHgEpJw00zg?=
 =?us-ascii?Q?i+dcbtanGf3M4RC0aqgOeaAXP44mq0hZquZcAsCn1aCfHjMgFl09YGbPQYIu?=
 =?us-ascii?Q?KGHptEFsa+1EKIvkY+IIDvP5+iAZT8XmE4eC4oRTpuGZEAtxSesRc6hCOv3M?=
 =?us-ascii?Q?U++U4ZlmFuClvGpWl28MD053qjcYKsJU0lxh06glb5esS0Fn5qzuVQf7D25+?=
 =?us-ascii?Q?jLoZha5cTWRYP9Ko2QthfFTGvmD4t310v2xB2B8sGm07WGomsI1L0FUvUKsx?=
 =?us-ascii?Q?nUsEAkkWJLGdj4WmF0TpZ8jaA+U61nCU0fug3Soc73LW9MLzqShpnaONiZtI?=
 =?us-ascii?Q?aJGiV+sk+5/SmQ26JQNTf2KJyqHFWRsVSmtGircJ4m+ldKlr5X0JtPQEe2s8?=
 =?us-ascii?Q?EPHudxF0xkdxs8eBE2u+l5DBRQ/eNASd0HkN/6w+lUDnrJfexawAbsV4ndPd?=
 =?us-ascii?Q?aGGM6GvLKOvfthiRbSp08q1IpTnhsyCx61cnCXwHYfmZQSHCfa5ReGSkc1TG?=
 =?us-ascii?Q?1tg1qyNyhMWsSBjeYvTbHoP0Riz41Qcm00uU3oqdUmoO2iSDBQQsUHc2C51z?=
 =?us-ascii?Q?j95Q0bGWEXazMFmOEKHK6QN+4lmnH0rt7xUjy6P76AJQADYYP9rILnkw6jsW?=
 =?us-ascii?Q?OX+NbPPWaP8lnam7+SMDudfn2p5zDg/JNuymwgtfw3bH28iJZ8MzVP3KGRcc?=
 =?us-ascii?Q?xpRle4CcvqhoK9NZof0Fc+mReyeKhBgMornpUcE/CSJTSKED4i+3f7d7B+Th?=
 =?us-ascii?Q?cLSGqtLx6SSU68zjzDCdInDjWQub9R3c2VHtIwOqrE/vYQSdLDqT8FDBO+3y?=
 =?us-ascii?Q?9a9HoT72v8yCtJCsEAg8qpOpIF2I7K+UhTTPX1Bg1cvBOSzSIVMQqLTgjwc5?=
 =?us-ascii?Q?QaTHf7ND4ql453LLnK/mljAcoY1OThrOcHSFVqVu+Yh50dyIiobu5z9KLxkU?=
 =?us-ascii?Q?cW+5kwtUgdFVDnC+WomSw7tl1j8ODuyNcrmmYXIyrEYAKo0KFpkKU/FSZQec?=
 =?us-ascii?Q?8eVPUAiRFV7ThHNP8/Pi030tMtfyeUAkjQ5nSMjRWk/r6hoOjfE8zj12VlvO?=
 =?us-ascii?Q?NKk6XaWwpOltK0pxaHxVVJMH?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(376011)(366013)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gW7TWMGxZzEMOVt8H8TH9aOPXOynRde3AD+3T/VFpGq+RQZm2oVCPnyCtSar?=
 =?us-ascii?Q?7vZ7nUy5yInx/Gsu15GO9JWBoQP9OQvIHL5qdNN7gXVcLjAJoC81HgJVVGGM?=
 =?us-ascii?Q?tB43uX6wT5t7GxWUGkmsI5ryyWr28tKa+rT5N0O8N/hRaHiQ9aSl545kS/rz?=
 =?us-ascii?Q?5F0pTkbgvf+AUmYc1znWRewwdZwUPwL5lbfEUP5HDC6tyBtVYJ3lfLwlvRVi?=
 =?us-ascii?Q?weuukHWjI8xs26ukhDapXLnyvonuT+3GxjyXUSTwIfx5mtChCAcN27RUJOdk?=
 =?us-ascii?Q?pcYiXEAJYT9usoH9tj3/l3qlgKcFsqN9X5ZDf4JdfKz31MludOaXvyrnbCa0?=
 =?us-ascii?Q?l+LfIv3+i0U9xutUvMLh6hXfk04wpZJKbVO6VgAJV47oIMrrWs+AuL6C/jCm?=
 =?us-ascii?Q?5ptOYp9IytpP1e3wYzn5z8me5IUx72IHbVlJks1GBMxnYE5iBvbt3pp1F5mO?=
 =?us-ascii?Q?vzfNuScVqX5wUURjB0UVzOhM6zdqoU2gxMTrcb09Yi9ni9j51hYyrVj8QPhw?=
 =?us-ascii?Q?9b5s9VRYbx0/psDZjJ92sEapJuPjNRs3O6pcMAM4Px/+sDXgR/PAQ1oFCoI5?=
 =?us-ascii?Q?ftUnKff0f/sVbOPGpN1hr5zeX30QVROBY49pTGvcrdZu4wi8SYx/wEkJLEud?=
 =?us-ascii?Q?+FUnxxGHmxptLwy0BP+BcH48dEVQvGMFkoflg6x9zQcBs+UsK86mzKCCpFXS?=
 =?us-ascii?Q?nlZIx9m++RfWFpFd8t/hMjLa2d7deP3h9/v07lIx+NxdGCCQTAOvvg9MENKB?=
 =?us-ascii?Q?OCgM7Kfyj9DBTw/CCLrjTnAqTlL1+5G7tiAT8wgbd6J8aTgEsunNxT86TmOP?=
 =?us-ascii?Q?GwqsbeZMyIU/lWs8sBDe9OQ3ukwL071K8M1BtvcCE4TVnq+YQtGReAvy30NI?=
 =?us-ascii?Q?ah92K+8bnIbym8R9iGxurvFl1CTmHSIZR2Vd2zkjhrZIc3ilCb8TxQqVe8qI?=
 =?us-ascii?Q?IGBGvkE9Dt6Y0XCP7GTd9T5j00EaAraClzTjQk4HaoI6vbbPTsnDHNRgNz6o?=
 =?us-ascii?Q?GbT3LEBqVJz3snm2BerYXnLexakHoHX4DIiMhTA1uD4fLAnbolSNHLVikb9s?=
 =?us-ascii?Q?ZU2IbO8RAjHm1mWvzFVnwpD29/AedVFLUa64xjFKuYqQgpUYti8zl+W4GyDD?=
 =?us-ascii?Q?0ExjfQNH4ooRuw+nP6HAPaROduuCL4U3XmuZ1+l8B6hDPdtTlYUAHAZjle2S?=
 =?us-ascii?Q?osg0LplvPloUkdFo2RPLmQJH9UCliTrLwBeB7f6mGqEGUsohUR5er0LQ6j/j?=
 =?us-ascii?Q?zSXU2BivvYkihwHi+SCbf79B8AVWY/OmNmFcnN0ZcpCx6bcakdX1htya3WK8?=
 =?us-ascii?Q?KZKkHTzss45Euwc3vrwZJ8+tB5NDpZ0Okp52VSh7I5pHrDWipjq5MfixpxhH?=
 =?us-ascii?Q?fAM6oMy7+GeJzLBjJVuddGPQRqeSK2iJbVPzMeXy9+2I+J+fqiDdTJIVztPw?=
 =?us-ascii?Q?qTl585zqMp9wP+ArbTy84VEjJMV7iuvimVY3SqGbDWSmZUnpkemZinXbJWeJ?=
 =?us-ascii?Q?/73nEUTNyGrsH7VUsLeGQ3404XS146a+3d9ODfLTsI7lzXbOdo6Czu9cI2K2?=
 =?us-ascii?Q?UOLzSkLu6njYj31WZxAASi+yIuUZ7QrCPvWNFx6/Uc/btED1yd5f+kx4irGQ?=
 =?us-ascii?Q?euENBnAoPjxsTSZIPXi+tqI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e344107-79a9-4b5f-0f62-08dc9110888d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2024 10:05:37.5956 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6sKGWrAjlVjMc0aE3uRaqNUK9gSnLkLI2/cHvqBzVFHkpZo5BxxD7OX3sb+/vcOMMx65Lc0+STN9RP59/IWeYIa7KrEYX2WXKO/Nq4wTneLcTrY16LT+dsiAH3V2qVbS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7997
X-OriginatorOrg: intel.com
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

Hi @Nathan Chancellor,

Yes, with do_div, we are expecting the remainder value. Regarding the warni=
ng related to the adjusted_pixel_rate type cast, I haven't been able to rep=
roduce this locally, possibly due to differences in the cross-compiler. We =
should consider typecasting adjusted_pixel_rate or treating it as unsigned =
?

Adding @Nikula, Jani to suggest.

Regards,
Mitul
> -----Original Message-----
> From: Nathan Chancellor <nathan@kernel.org>
> Sent: Wednesday, June 19, 2024 11:56 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH v16 9/9] drm/i915: Compute CMRR and calculate vtotal
>=20
> On Wed, Jun 19, 2024 at 06:10:34PM +0000, Golani, Mitulkumar Ajitkumar
> wrote:
> > Hi @Nathan Chancellor
> >
> > Probably fix is merged in drm-intel-next related patch:
> > https://patchwork.freedesktop.org/series/134860/
> >
> > Can you please check and suggest if this patch is merged ?
>=20
> This is still reproducible at commit 851de367dede ("drm/i915: Enable
> plane/pipeDMC ATS fault interrupts on mtl") in drm-intel-next, which incl=
udes
> that change as commit e2dc7cb72b25 ("drm/i915/display: Update calculation
> to avoid overflow"). The issue is the dividend in do_div() is required to=
 be an
> unsigned 64-bit type but you used a signed type.
> Updating adjusted_pixel_rate to be a u64 should resolve the issue and mat=
ch
> the return type of mul_u32_u32(). I just wasn't sure if that was the only=
 fix
> this code would need, as do_div() is not typically used with an assignmen=
t.
>=20
> Cheers,
> Nathan
>=20
> > > -----Original Message-----
> > > From: Nathan Chancellor <nathan@kernel.org>
> > > Sent: Wednesday, June 19, 2024 9:12 PM
> > > To: Golani, Mitulkumar Ajitkumar
> > > <mitulkumar.ajitkumar.golani@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Nautiyal, Ankit K
> > > <ankit.k.nautiyal@intel.com>; intel-xe@lists.freedesktop.org
> > > Subject: Re: [PATCH v16 9/9] drm/i915: Compute CMRR and calculate
> > > vtotal
> > >
> > > Hi Mitul,
> > >
> > > On Mon, Jun 10, 2024 at 12:52:02PM +0530, Mitul Golani wrote:
> > > ...
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > > > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > > > index 4ad99a54aa83..05f67dc9d98d 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > > > @@ -12,6 +12,9 @@
> > > >  #include "intel_vrr_regs.h"
> > > >  #include "intel_dp.h"
> > > >
> > > > +#define FIXED_POINT_PRECISION		100
> > > > +#define CMRR_PRECISION_TOLERANCE	10
> > > > +
> > > >  bool intel_vrr_is_capable(struct intel_connector *connector)  {
> > > >  	const struct drm_display_info *info =3D
> > > > &connector->base.display_info; @@ -107,6 +110,52 @@ int
> > > > intel_vrr_vmax_vblank_start(const struct
> > > intel_crtc_state *crtc_state)
> > > >  	return crtc_state->vrr.vmax -
> > > > intel_vrr_vblank_exit_length(crtc_state);
> > > >  }
> > > >
> > > > +static bool
> > > > +is_cmrr_frac_required(struct intel_crtc_state *crtc_state) {
> > > > +	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
> > > > +	struct drm_display_mode *adjusted_mode =3D &crtc_state-
> > > >hw.adjusted_mode;
> > > > +	struct drm_i915_private *i915 =3D
> > > > +to_i915(crtc_state->uapi.crtc->dev);
> > > > +
> > > > +	if (!HAS_CMRR(i915))
> > > > +		return false;
> > > > +
> > > > +	actual_refresh_k =3D
> > > > +		drm_mode_vrefresh(adjusted_mode) *
> > > FIXED_POINT_PRECISION;
> > > > +	pixel_clock_per_line =3D
> > > > +		adjusted_mode->crtc_clock * 1000 / adjusted_mode-
> > > >crtc_htotal;
> > > > +	calculated_refresh_k =3D
> > > > +		pixel_clock_per_line * FIXED_POINT_PRECISION /
> > > > +adjusted_mode->crtc_vtotal;
> > > > +
> > > > +	if ((actual_refresh_k - calculated_refresh_k) <
> > > CMRR_PRECISION_TOLERANCE)
> > > > +		return false;
> > > > +
> > > > +	return true;
> > > > +}
> > > > +
> > > > +static unsigned int
> > > > +cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool
> > > > +video_mode_required) {
> > > > +	int multiplier_m =3D 1, multiplier_n =3D 1, vtotal, desired_refre=
sh_rate;
> > > > +	long long adjusted_pixel_rate;
> > > > +	struct drm_display_mode *adjusted_mode =3D
> > > > +&crtc_state->hw.adjusted_mode;
> > > > +
> > > > +	desired_refresh_rate =3D drm_mode_vrefresh(adjusted_mode);
> > > > +
> > > > +	if (video_mode_required) {
> > > > +		multiplier_m =3D 1001;
> > > > +		multiplier_n =3D 1000;
> > > > +	}
> > > > +
> > > > +	crtc_state->cmrr.cmrr_n =3D
> > > > +		desired_refresh_rate * adjusted_mode->crtc_htotal *
> > > multiplier_n;
> > > > +	vtotal =3D (adjusted_mode->crtc_clock * 1000 * multiplier_n) /
> > > crtc_state->cmrr.cmrr_n;
> > > > +	adjusted_pixel_rate =3D adjusted_mode->crtc_clock * 1000 *
> > > multiplier_m;
> > > > +	crtc_state->cmrr.cmrr_m =3D do_div(adjusted_pixel_rate,
> > > > +crtc_state->cmrr.cmrr_n);
> > > > +
> > > > +	return vtotal;
> > > > +}
> > >
> > > This change is now in -next as commit 1676ecd303ac ("drm/i915:
> > > Compute CMRR and calculate vtotal"), where it breaks the xe build
> > > for 32-bit platforms
> > > with:
> > >
> > >   $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi-
> > > allmodconfig drivers/gpu/drm/xe/i915-display/intel_vrr.o
> > >   In file included from arch/arm/include/asm/div64.h:107,
> > >                    from include/linux/math.h:6,
> > >                    from include/linux/kernel.h:27,
> > >                    from include/linux/cpumask.h:11,
> > >                    from include/linux/smp.h:13,
> > >                    from include/linux/lockdep.h:14,
> > >                    from include/linux/spinlock.h:63,
> > >                    from include/linux/kref.h:16,
> > >                    from include/drm/drm_device.h:5,
> > >                    from include/drm/drm_drv.h:35,
> > >                    from drivers/gpu/drm/xe/compat-i915-headers/i915_d=
rv.h:13,
> > >                    from drivers/gpu/drm/i915/display/intel_vrr.c:7:
> > >   drivers/gpu/drm/i915/display/intel_vrr.c: In function 'cmrr_get_vto=
tal':
> > >   include/asm-generic/div64.h:222:35: error: comparison of distinct
> > > pointer types lacks a cast [-Werror]
> > >     222 |         (void)(((typeof((n)) *)0) =3D=3D ((uint64_t *)0)); =
 \
> > >         |                                   ^~
> > >   drivers/gpu/drm/i915/display/intel_vrr.c:155:35: note: in
> > > expansion of macro 'do_div'
> > >     155 |         crtc_state->cmrr.cmrr_m =3D do_div(adjusted_pixel_r=
ate,
> crtc_state-
> > > >cmrr.cmrr_n);
> > >         |                                   ^~~~~~
> > >   cc1: all warnings being treated as errors
> > >
> > > Also, is do_div() correct here? It is different from the other
> > > div_() macros in that the "return value" is the remainder, not the re=
sult of
> the division.
> > >
> > > Cheers,
> > > Nathan
