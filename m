Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CDB6A56F4
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 11:42:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DED710E687;
	Tue, 28 Feb 2023 10:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0FC910E03C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 10:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677580928; x=1709116928;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lGkyqzUmo2hU4rhmg6I/2xvDlszAEIUQdKoYdf6xJeI=;
 b=ObSP6KKk5EmNgJn2BmnDCUylRSK1IYXJL2wuJKpuznKzObkr+ffLmajt
 G2DAA1xdperBjw10evpTO7ZcXEFFVINhP9KcHljqHSYPqUsuEU+M1Xl7n
 Wu0q/O2Zh+2fJ6yJRsTFCZ4J0nqsgrSSQ9mQEP5h85HibLBRpEV2XGMvU
 nudspJIDR1OQkNYKdMPH9W64kArWaFFUw9EDLuqYK7ZSnU885yEKVnm4t
 jVe7zbNxhz1zlP1Rv1h9yvNdP4quRTCDoQf1XxvRmEaTPPP4gCvPY4bit
 V7I84OnfN42OCUGkdnsEpgNJ6tYbb/YWC8xO6Coqn4YYQQ+Pi9cuD1Ilw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="396671099"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="396671099"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 02:42:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="651578336"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="651578336"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 28 Feb 2023 02:42:08 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 28 Feb 2023 02:42:07 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 28 Feb 2023 02:42:07 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Feb 2023 02:42:07 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 28 Feb 2023 02:42:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nPaYNR34mT3+0j/ctTkg4BugrCsuxz2WKl8fnt2ErCazHmoMHTey9YSBw7YP8K4UK2nszCYVS9jUJzN0ZBZNZTLmMRII1W+cwTCqkJOGgcQKGYgDWfQBYjw0hVMbKODIwk91fLRGLtM/OoZ6y7mjt5R77+jItagaM+qqdBZRh4H6NbH/vFsEA1BioG/0DVC/jYnLvdNtDDw3CMY6+8C7ATst8NMGGn4L3LNzEhnqRWjVuD2qap+uYb2y5ZgXMeay4CdFJhZYB7Edx0+z/w5nkrMhHf78T6fX84x/VzJPf8I8dEnJRtZHEtulfu8UEcCZtTxOfT2IR4IUzZHINAbwQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TqP3qlDnLwQIc3f9SJPZBSRfl1SnoZJq20akIbynwLs=;
 b=lZaA7U4LIZnVYRCE423zNtDPxAI2p6mJLAO6FCwl48ceyK9ZuQvJ1LWkjLZxbX9pMzx9ZYGz9AXhnsRDqjPuS/q2AOhWpfm0fD1/WmRX6aEcuZXDiQ81iAgAMtdfPnmofwLNRb7rmXGCNynb1PfvXq5kLLYC+miWQ++ZnfE71+oYA9NMBUkslBp2rhcWCIDc9fH4mYm55xZ/VJl00NsKyTOIq4KfPQhwq7UGOUAhbtXsGNw7d3g++gngc6g0a9UNHeazYuV9BLFJ4jy4oD3ZjUPpCwFM0+SJFHZuhsdhZGleuPwLZme3vuIFuzRvj7ib40ejQjGzMo6rY0qOhqZO6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.27; Tue, 28 Feb
 2023 10:42:04 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::53d6:17ce:f612:ba23]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::53d6:17ce:f612:ba23%4]) with mapi id 15.20.6134.029; Tue, 28 Feb 2023
 10:42:04 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [RFC 0/2] Add new CDCLK step for RPL-U
Thread-Index: AQHZNJLPA8tYr8y6vUamE4M7a1X7Ha7jsAaAgACpQCA=
Date: Tue, 28 Feb 2023 10:42:03 +0000
Message-ID: <SJ1PR11MB612911682C5B646B2974FF6BB9AC9@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230130100806.1373883-1-chaitanya.kumar.borah@intel.com>
 <Y/1MXdeh1cM+cXF7@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <Y/1MXdeh1cM+cXF7@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MW4PR11MB7149:EE_
x-ms-office365-filtering-correlation-id: 46741605-5561-427b-1562-08db19786e3b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OjrZDcVjrUl5BJ/RoC0QkLDnQv/4tRhT/45+SP/S7QGSfrrxFTHXaaiDgvgmoX9jEBqeYZiDlBQOGCqqKHJ7lNRRXWhDnaIu9CVUNJc+3OQH64TZd/sgLBscCqe7w27AhEVgqCh6VVAxtaN0fqYZhfBQWWBaEo7OI/CXcsJfEwF4fydq1uui7o5R8a2IAHNaX2ajgZzeDHfz/P4uG6idcbyXBqlIAOMRpB+b96yGbIRLmNTwgyKfQvqzCl8MPUfMMgt7M921c0m/CJ3wiLNFW5Elw1KZDgaPY/BxjNXm5rMsGes9CTkIty1scs/yTU0A0Mv3rwzagVAOP966oB8MpZBEvvu6RreNaTeesx9oV71FwYI5zEqsxbCoFZjRQxFbHT/StSi8Nb2WTudoen/WMsnQLNZMqmIhihzoos4bmGAlcD+u33Fxsc4x3KFlCUdPmloCMEgz1WVfOO38Wv7AjswydOY7paX2fnrOeG7fKsvdTeQx1iO9oSZ5yGbwF3wRdmnUGRBrvVx/8gwuwTYpeUNZpQRnnADalq0xhh3gG8ySEsmeYd5kJvtiOhXciC+LhrnFmb+863k+UShZ6C5s1K+LThU5KTz+SNDFNXvjOjLfO8vIk94Vp7lszqvrYmklEEsfm6wXD3iNRNqEpBqgaMqvF7MBJrEASYiB6zJphmFz80L7tCtmyejQa3tDFk4r6Wn0k+lBhWxyrefYeFDmuw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(376002)(396003)(136003)(39860400002)(451199018)(54906003)(86362001)(9686003)(83380400001)(2906002)(26005)(478600001)(53546011)(6636002)(6506007)(6862004)(33656002)(41300700001)(71200400001)(7696005)(55016003)(82960400001)(122000001)(5660300002)(38070700005)(8676002)(66446008)(186003)(316002)(8936002)(64756008)(66946007)(76116006)(38100700002)(4326008)(52536014)(66476007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WMaArpNVXgwlwgPWH+jAhl4iN5l9vOvkCfuCiDRODLqrC/0mgFkH0EkYquMJ?=
 =?us-ascii?Q?rSJaprtKMB2eXmIz34dchMFTcpA4Z9TEJ6dABn3MqF6cx0Kf0K+D774IhcKg?=
 =?us-ascii?Q?L4cqV1HvFXKr9W/EwW3xBB/opIuQarzjUOgG2W5rgEDk3EMNFAkIQCQ3uVhF?=
 =?us-ascii?Q?YdusROchgghuWm3iCEOQOVDea0tzO5HwGiG8zev6GDVYDKJdAb/LTAruVJUb?=
 =?us-ascii?Q?Q29bkVVqsSfuyOIzwqFQpXadojBGGxt1R2tRpgblgIuCoEXukmpwF7WBsuw3?=
 =?us-ascii?Q?fj9k3rwfEcVBOAZofC9+IeCsljSYYx/v6rDJeMbdnv1ttgp46GhUaAcNx8II?=
 =?us-ascii?Q?9XlaWj7uOVfZd+fGS6+SO0q7TfAasQyctoB1MIp23D5BAYQP1ycdhdjowPh3?=
 =?us-ascii?Q?JWgzzrZ+r6Hf6Nafr2wH8c/+B1e/u9ab8p4/m9aqriVZ4PzaNOBUBNqG3cM5?=
 =?us-ascii?Q?sGG/bxmo9DkT2Ta0P9Y2D+pyD0xV56UywAEuZOamK9eO4psMiGstU3aEf4Bk?=
 =?us-ascii?Q?RpTQVfic3xNqRqKCb1Tfk6iK7ILc1x04Dk0wnrM+nTWZwhTiXw/A4fArFwRL?=
 =?us-ascii?Q?rcmPrivLAp8lCUxLq0sYq9pRAeptkkYiok+nOmR60D0UKSkZhtFaz7ZJT9K0?=
 =?us-ascii?Q?ORj6TfgC8Ux+oVO/KJgPerYF71fqFo1kRMM1ARFrqR++L00H8gKYDmiTzlqx?=
 =?us-ascii?Q?fyP+0NlZqRY49xSTmLMGz5WwkiwwsW8gM9O986TXxTWfERb2yl2pbAKiGu49?=
 =?us-ascii?Q?iogJMbPbj3kV72tGJGfq5W1PiyxyK3CyC2yY2dQrBk1W+BEdlX7atrk3aCCB?=
 =?us-ascii?Q?NHdpOac73FPCmOGCBEaHuv7K2PO7JVk/kSIbY5x48ul63YBg+niQ/DbdQEdz?=
 =?us-ascii?Q?KAAM16IyeOUUoqTSoxgnS4FJX3JQAmTvwcMs33rUjURQrfSelcB/yeVvl+IB?=
 =?us-ascii?Q?fuXzvXrir/sUy3/kZdxqIoco+u/YZGPbK7ysR2CBwkZfqvkp7DvnZvvl/TCC?=
 =?us-ascii?Q?I8roZoGoSFtDaoeZkkg/DKxUMXGrdbc168bH9S84sH2CNZyf3UDtap9RgkAq?=
 =?us-ascii?Q?PnktanVNKHtgbQEnho4KtiX9V5m1M3n+AtI95oc6Mf3/u+F5tW7/CJRfrmKJ?=
 =?us-ascii?Q?DoGSBu+Tf1Tn9DAsQBX2/L3+mcpkB0uK0y2xJv4YoMwCUSMgvs3gb/BgHHrI?=
 =?us-ascii?Q?EJ/J3SOq6imhq99dyJghU/daJCfPw0ddoTvaUPoUJWr8SQ85laH4PpScJUfE?=
 =?us-ascii?Q?f5Vnihd0sii8EJRUv7P7AN7p/KmjU4YUT9j1OBWspUIs6B2PlYCxE+mekSel?=
 =?us-ascii?Q?pa7rskbq/oEvg/3Hxa9Q8ro1ze3XPqQAGkcSw0b63yeO2O75DO+j9CIYIZSQ?=
 =?us-ascii?Q?H5tIvdJClx87xwIHHCjpAXYVIDqY7PEN21uSUzuC//qjR52jIHs4Aor/sMvh?=
 =?us-ascii?Q?0p9UsBqascQakv/U1P1xOx11fkAVXUCnMOvl2c1+hKfaV+3dDH84cirfHk0U?=
 =?us-ascii?Q?PV8Oe/Hybu0RQx+L0bwxTI9Q9ue+Qd2rTQN+EZdjgjQNX8AIgf39u5DFBx0d?=
 =?us-ascii?Q?RLqjcyugXwPdR7X2EU1TE74v5fckspccZcVoKTWMqUbSvmF4SmOISj30sxS6?=
 =?us-ascii?Q?lw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46741605-5561-427b-1562-08db19786e3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2023 10:42:03.8880 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HfM2eA2OBuX54xa4VBlrmtQAXNHyWZZVyo1dgWhzEUw+WmFje2niLP2rAUsRPhZSZOlkQFTBEWCcIzrNhQ7SBGqR1q5kpgaQyanYiEflCus=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 0/2] Add new CDCLK step for RPL-U
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Tuesday, February 28, 2023 6:06 AM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; jani.nikula@linux.intel.com; Shankar=
,
> Uma <uma.shankar@intel.com>; Syrjala, Ville <ville.syrjala@intel.com>;
> Srivatsa, Anusha <anusha.srivatsa@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>
> Subject: Re: [RFC 0/2] Add new CDCLK step for RPL-U
>=20
> On Mon, Jan 30, 2023 at 03:38:04PM +0530, Chaitanya Kumar Borah wrote:
> > A new step of 480MHz has been added on SKUs that have an RPL-U device
> > id. This particular step is to support 120Hz panels more efficiently.
> >
> > This patchset adds a new table to include this new CDCLK step. Details
> > can be found in BSpec entry 55409.
>=20
> Hi Chaitanya.  It looks like we probably need one more change related to =
the
> 480MHz rate beyond what was in this series.  For platforms that support t=
his
> rate, we can set voltage level 1 (see bspec 49208) whereas the i915 code =
at
> the moment will push it up to voltage level 2 instead.

Hello Matt,

Thank you for pointing it out. I will have a look and float a patch ASAP.

Regards

Chaitanya

>=20
>=20
> Matt
>=20
> >
> > Create a new sub-platform to identify RPL-U which will enable us to
> > make the differentiation during CDCLK initialization.
> >
> > Furthermore, we need to make a distinction between ES (Engineering
> > Sample) and QS (Quality Sample) parts as this change comes only to QS
> > parts. This version of the patch does not include this change as we
> > are yet to make a decision if this particular part needs to be
> > upstreamed.(see comments on revision 2)
> >
> > Chaitanya Kumar Borah (2):
> >   drm/i915: Add RPL-U sub platform
> >   drm/i915/display: Add 480 MHz CDCLK steps for RPL-U
> >
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 26
> ++++++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_drv.h            |  2 ++
> >  drivers/gpu/drm/i915/intel_device_info.c   |  7 ++++++
> >  drivers/gpu/drm/i915/intel_device_info.h   |  1 +
> >  include/drm/i915_pciids.h                  | 12 ++++++----
> >  5 files changed, 44 insertions(+), 4 deletions(-)
> >
> > --
> > 2.25.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
