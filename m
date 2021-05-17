Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71715386CE2
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 00:23:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F8776E513;
	Mon, 17 May 2021 22:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E27D66E513
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 22:23:20 +0000 (UTC)
IronPort-SDR: ZS4eq4EDXYjz33/cNHV/orjaJF5bpLVJIYuARrOEk6et6x6TmU/9RnxHfj03tW/Lfz/0eUJKhx
 FHUknsjE7l1w==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="187701483"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="187701483"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 15:23:15 -0700
IronPort-SDR: F3uN6rWApJ6RgTec9lqVLJT4b+RmfPf8Rs/xtKpXf96zzNHvj7mSn9RQqmq8Q0xLrgIf/kOuLq
 nZugBkTNEK1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="472631819"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2021 15:23:15 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 15:23:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 17 May 2021 15:23:14 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 17 May 2021 15:23:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hFct2IeGbk3a/iyZoI5OOXqA1svIS9ruH2Y2a9maoOT7ElwPGDI8pQfFH+ysg0pVnNgYordrXDX5hnDzGZuYL1fVIje0eNMXI7deLEOtj5ec+qIPyw9EB4S0V1fJCeepJhinjE/e6l2arJhKX1IfiQtXoWiKI2NBRT9tva9K/ud1C1PH2z5YlmAxDIvkn5xSvG48w56MVOfTd3H1UGaY9G9cCAkwygwcc0W4WrvBmcV9hSGykfQs4SMSHY2ZmO4AXdnbVhNlaNffeFtHt1XqZXQ9vY1TFbK4z0wSUfDhMWBR/eZ4tbYr+Kl6bx4bggxQuXQVr3JbVsxt3aGUjC/dvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LWFnp0eEyy6ogtZlB3X9YmA+9vwMphFaSnz9HA725NM=;
 b=j9uH+0+8Y4cg6PkzqhnP0qfqm2n8AMVPQSQ+A1aacUdpY/Caf1zc10chRpYI2JymxcmJCURnF0Gk44kfgckc286hPL6Tn4wjXmp06LUacC//MA91gKBshTez9tCttw7vwYyn9Pq35cYu23MBviVu4/MO1R3iewg6n1GjenBqemhXhA1e6aAXDEUafFZDjYpKTgtOj6ErYCB683QcTmFLTK/kBbZJ36ll2WpEA8uvaqsYto0t4LVJwkus1300lCKHWB1YPln6EIt61sjGXNrKMGtHeP94/HYg9A/Zvjtt3B2YAVHNt48HmWxKEbAL7rjxIAt0GhGt7P2xXMG4sqNpiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LWFnp0eEyy6ogtZlB3X9YmA+9vwMphFaSnz9HA725NM=;
 b=GPdfpogYx3pWJ6ii/odhlR5wAO4PnlXSCigtP39A8b2t9lFgx9j0SHn5waFUi+dus+2mrt5uMllZ+6DV4NnFXepQjQY2hqjDa9XwuPy1xdbvAsmPx9I95FPh6wcloH/zYHjpvNZFFsSkn+7fHfsjtwiwt3UKQRvs3/ClDLJRK1g=
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MWHPR11MB1999.namprd11.prod.outlook.com (2603:10b6:300:20::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Mon, 17 May
 2021 22:23:10 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::8183:e1ea:cd9a:bcb1]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::8183:e1ea:cd9a:bcb1%4]) with mapi id 15.20.4129.031; Mon, 17 May 2021
 22:23:10 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Reenable LTTPR non-transparent LT
 mode for DPCD_REV<1.4
Thread-Index: AQHXR3XQAW16vfT0NEKaI0SWrvJRfKroR4MA
Date: Mon, 17 May 2021 22:23:10 +0000
Message-ID: <29505b1d1534d773e91c35f0797e93d7ae9cdb43.camel@intel.com>
References: <20210512212809.1234701-1-imre.deak@intel.com>
In-Reply-To: <20210512212809.1234701-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.4-0ubuntu1 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.192]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c8cf2a7-3a73-4d63-4c2d-08d919825abc
x-ms-traffictypediagnostic: MWHPR11MB1999:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1999B64C1B3440750DDE510F892D9@MWHPR11MB1999.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EIcjiMT8xtbjsb6F+XPW24BBabXy2PE+ynApbLxwnDrpcBW15EUFmmK9Zij0Ezye40KJHBoku3dtrFdkzW5Fqv8wddnPiU/BurhCPqqxCx69CriamXsu5p2zCoFOCKp8O9HN9suwc7V/ua2SpAntWUO72EiWWOQ81TqvI/4VZ+nhSKYFOHzkXikdRCTzZKVcsB9FS1SsMGwAtyivxUtu7nIOz0CN5c1vuYvp/HzPcqthAcvpvyOY6owRXXfIB15zYXbvVz0QkrnrQLnsr2ktbf3kBqGzbsmWS8tzBcC4JiUjuwLpUT7uzKG53yX3xFpsYXkI++9o72uaQJ7mq/7XnQjFTxJXSCPtOx4A2scNCuhi1Yn/t6/8ya/0zw3ekixwOWLbeKP6v9fEbe3d2Wo4IESrPIMwuzZ6xa9ZfJKJOzf7sF/vANZK8ENZdoRMcCTJOCysEJoklPs4iv6rXYc02xfN6s3MM9c3lblZJ4KsSBOGLBn6Gxi66UuQrA1BjSbdm6mQnB6DTqT+KxPy91s7CZg0Qf+LcAe9zwwnTUu/BXXN8QtD5pEg2mIWa7pbzjJgrY8ro9FGihFAINIiuHhzhbBLn8FF4RCV2rtdWYXxW1hjIV++toRhQgz9hRJAglCo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(396003)(376002)(136003)(39860400002)(366004)(83380400001)(71200400001)(6636002)(86362001)(2906002)(6506007)(478600001)(6486002)(110136005)(38100700002)(4326008)(316002)(91956017)(966005)(122000001)(76116006)(64756008)(8936002)(66946007)(186003)(26005)(66446008)(36756003)(66476007)(6512007)(5660300002)(66556008)(2616005)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?UGpWVmRNU3NUSUUrd3FPaDBYNkJaVlYrenlhQmxVblQ2K0NEaXRQby9vMGVo?=
 =?utf-8?B?M04vNkUxSGZSdXVBckhIYWFQNy9RZUJPWHI4QkV2ZGpzaXJ1TlhSbkpYZGM2?=
 =?utf-8?B?UWhVS2NlUUVPTTdEa2J1VXVKSFlmcUFwUkdkenZHVkNKSlRTWmtRRnBaOHhu?=
 =?utf-8?B?dVpWWlpEbU54Nlg4c3lpMkVSMGN6YlRtWld3RkZvWGVjdEljTHJnOGVIaSt1?=
 =?utf-8?B?enp1eVBJS0JrQjkvOVFqTDIxUkVrbUlxMThjUzUrRDFVMWpmclQ5UFVyS2lL?=
 =?utf-8?B?R2tRMEN0VnpNYTl1dkxGb3VYakFVM2U2U2xWekttWm1CbkpoR2t1OG14T3dM?=
 =?utf-8?B?ay9NcUxEcUEvT2tHQlpkQzBUb2VldEpxK25DMjV3dXpIQ2xucmZSK295ZEZE?=
 =?utf-8?B?VDVRbVJ4OG14UUVYbkNyS0RVR2dOQXlnWkI2VmhhTVN3ZmVJa1dIMjVVWEY1?=
 =?utf-8?B?a1drWGxRaDJ3dUFLSW5XMlBWNVBWWGtUS3RudVJpYXZGVFBGTXRIcFBhNWY3?=
 =?utf-8?B?RlRRbS9HMWFWUGcycmVRQmJMRjR0VTlzOFVTbWZEb21KSDRPNGpXSGl6ZDVJ?=
 =?utf-8?B?bzFZV0dWWGxKWnpxMkFlTVErSkVQUU9BaXppbnVUdTdWakdUZER2bFlVeUVr?=
 =?utf-8?B?Rm80dGlISjRLS3VuN2w4bmdjVVZ3dDhnK2RETmw4VHNUbmZMOHA5UnVFR09n?=
 =?utf-8?B?MnVTTndtc2pTYzdBVjJhdWZwbVA4VzdMM1JpQy9LUGFmWVdlakkwallPR1lw?=
 =?utf-8?B?SUROZG1vbjBnRWhOdUg3c25RbmNZb2dqaHh3aHFUY0RhcGgwVTBmNUdLMTUx?=
 =?utf-8?B?Uk5XREczaXg1WUpDS0treHF5bVhSK09zY3R4YytBVElDSGl6YUVXMFcrNWZH?=
 =?utf-8?B?eXkrVmFnRm9ZN2lpY3RsVHNMWWZmWGRTQ05XcTZYTWVrY3gyM2pYRkN4U0lu?=
 =?utf-8?B?a05mQVR5SklYWFZUOUk0MktQQ1czd1Nsa0pCL2VnMUtpUVgzTW5wY2l3ZTE2?=
 =?utf-8?B?ZlNkaTVaMTR3eVFiNE55elNNMlNtcWZDa0ovejVXQU9WaW5GZlZoSGhEOEU3?=
 =?utf-8?B?TW42Zk42K0ExdUNONE1LcndUa2N4LzhIb0l6UCtabTFTb2NFby9yeVJTc2VB?=
 =?utf-8?B?emhCNUl2cWs2SHVFaWdFSjJIdSt0aWpEQm1rSFZuUmtmaWFIbm1LcCtISUhX?=
 =?utf-8?B?Tm1Sb0lRKzNIRm5SdWNaenNNaHpPSS9LMkVlazNaL1MyRUUzeXVJUlp2cXVN?=
 =?utf-8?B?RDZ3ckZUU0dMb1QvUTl5UmFiYkptUkNjaEtKOTdJK256UXd1K3Jqa1ZLeWpV?=
 =?utf-8?B?ZWJ3TStibzVTMGVNQytYWTQrbDlrZzdLRjRRRjhIRThpK0tFNnFOT1psRlBU?=
 =?utf-8?B?OGMyalNpNVB2dEZ5S3ZWWVU4ZGdPNGo3ZUMxYWFJY0JRRmlKUWdvUkZmNlQy?=
 =?utf-8?B?c1Qza2ozV1drYVFIcTN2aWlQY29yeEJpRkVuUlVSaHJ3cDZrQWxibWp6NXNN?=
 =?utf-8?B?K1R0M2FXSlE4eSsxekZwQkZ5TmRoeWlrdkZMYytZeG5lU01FVUg0eE8xdmNS?=
 =?utf-8?B?dk5yTm1GWU9tQ2MxdjhSK2kremYxU1Iwem9wdVRDZ2JIR3did0kwVFZRZGJ6?=
 =?utf-8?B?OC9JOUh3ZHRzYjRIMTk4YUMrQ1hhOGtDMFNIckg2cExENE1uSFZEZlhCcGVj?=
 =?utf-8?B?dEQ2SklGS0FMU2lLWVhXVWh5bWRlK2l6bFZsTW00YkxHNW9DVTNyeUlUNzZH?=
 =?utf-8?Q?9UW1Hi4vIy605FFs1xiDxlQN95+WvOTZmJWgblZ?=
Content-ID: <E084704BBD60B84A8E4AC4F2537EB522@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c8cf2a7-3a73-4d63-4c2d-08d919825abc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2021 22:23:10.7432 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FPOsl1XMtGfis48RvENrLpNbrLEEhJEF27Ki3vQaMIRfC+YKw9orvM1ezSIfQkIcEYNHUhRgVKyvtW5f2xQgib440L3dwIChJSsnwQ3x2po=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1999
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reenable LTTPR non-transparent LT
 mode for DPCD_REV<1.4
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
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tested on latest drm-tip with DPCD=1.2 Sink and LTTPR set to non-
transparent mode:

[  706.966375] i915 0000:00:02.0: [drm:drm_dp_dpcd_read] AUX USBC2/DDI
TC2/PHY TC2: 0xf0000 AUX -> (ret=  8) 14 1e 80 55 04 00 00 00
[  706.966383] i915 0000:00:02.0:
[drm:intel_dp_init_lttpr_and_dprx_caps [i915]] LTTPR common
capabilities: 14 1e 80 55 04 00 00 00
[  706.966900] i915 0000:00:02.0: [drm:drm_dp_dpcd_write] AUX USBC2/DDI
TC2/PHY TC2: 0xf0003 AUX <- (ret=  1) 55
[  706.967397] i915 0000:00:02.0: [drm:drm_dp_dpcd_write] AUX USBC2/DDI
TC2/PHY TC2: 0xf0003 AUX <- (ret=  1) aa
[  706.968384] i915 0000:00:02.0: [drm:drm_dp_dpcd_read] AUX USBC2/DDI
TC2/PHY TC2: 0xf0020 AUX -> (ret=  3) 03 00 00
[  706.968388] i915 0000:00:02.0:
[drm:intel_dp_init_lttpr_and_dprx_caps [i915]] LTTPR 1 PHY
capabilities: 03 00 00
[  706.969913] i915 0000:00:02.0: [drm:drm_dp_dpcd_read] AUX USBC2/DDI
TC2/PHY TC2: 0x00000 AUX -> (ret= 15) 12 14 c4 01 01 00 01 00 02 02 06
00 00 00 00
[  706.969917] i915 0000:00:02.0: [drm:drm_dp_read_dpcd_caps] AUX
USBC2/DDI TC2/PHY TC2: DPCD: 12 14 c4 01 01 00 01 00 02 02 06 00 00 00
00

Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Reviewed-by: Khaled Almahallawy <khaled.almahallawy@intel.com>

Thank you for the patch
~Khaled

On Thu, 2021-05-13 at 00:28 +0300, Imre Deak wrote:
> The driver currently disables the LTTPR non-transparent link training
> mode for sinks with a DPCD_REV<1.4, based on the following
> description
> of the LTTPR DPCD register range in DP standard 2.0 (at the 0xF0000
> register description):
> 
> ""
> LTTPR-related registers at DPCD Addresses F0000h through F02FFh are
> valid
> only for DPCD r1.4 (or higher).
> """
> 
> The transparent link training mode should still work fine, however
> the
> implementation for this in some retimer FWs seems to be broken, see
> the
> References: link below.
> 
> After discussions with DP standard authors the above "DPCD r1.4" does
> not refer to the DPCD revision (stored in the DPCD_REV reg at
> 0x00000),
> rather to the "LTTPR field data structure revision" stored in the
> 0xF0000 reg. An update request has been filed at vesa.org (see
> wg/Link/documentComment/3746) for the upcoming v2.1 specification to
> clarify the above description along the following lines:
> 
> """
> LTTPR-related registers at DPCD Addresses F0000h through F02FFh are
> valid only for LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV 1.4
> (or
> higher)
> """
> 
> Based on my tests Windows uses the non-transparent link training mode
> for DPCD_REV==1.2 sinks as well (so presumably for all DPCD_REVs),
> and
> forcing it to use transparent mode on ICL/TGL platforms leads to the
> same LT failure as reported at the References: link.
> 
> Based on the above let's assume that the transparent link training
> mode
> is not well tested/supported and align the code to the correct
> interpretation of what the r1.4 version refers to.
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/3415
> Fixes: 264613b406eb ("drm/i915: Disable LTTPR support when the DPCD
> rev < 1.4")
> Cc: <stable@vger.kernel.org> # v5.11+
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 71 +++++++++------
> ----
>  1 file changed, 33 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 6bf6f1ec13ed8..08bceae40aa8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -128,50 +128,14 @@ intel_dp_set_lttpr_transparent_mode(struct
> intel_dp *intel_dp, bool enable)
>  	return drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE,
> &val, 1) == 1;
>  }
>  
> -/**
> - * intel_dp_init_lttpr_and_dprx_caps - detect LTTPR and DPRX caps,
> init the LTTPR link training mode
> - * @intel_dp: Intel DP struct
> - *
> - * Read the LTTPR common and DPRX capabilities and switch to non-
> transparent
> - * link training mode if any is detected and read the PHY
> capabilities for all
> - * detected LTTPRs. In case of an LTTPR detection error or if the
> number of
> - * LTTPRs is more than is supported (8), fall back to the no-LTTPR,
> - * transparent mode link training mode.
> - *
> - * Returns:
> - *   >0  if LTTPRs were detected and the non-transparent LT mode was
> set. The
> - *       DPRX capabilities are read out.
> - *    0  if no LTTPRs or more than 8 LTTPRs were detected or in case
> of a
> - *       detection failure and the transparent LT mode was set. The
> DPRX
> - *       capabilities are read out.
> - *   <0  Reading out the DPRX capabilities failed.
> - */
> -int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
> +static int intel_dp_init_lttpr(struct intel_dp *intel_dp)
>  {
>  	int lttpr_count;
> -	bool ret;
>  	int i;
>  
> -	ret = intel_dp_read_lttpr_common_caps(intel_dp);
> -
> -	/* The DPTX shall read the DPRX caps after LTTPR detection. */
> -	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd)) {
> -		intel_dp_reset_lttpr_common_caps(intel_dp);
> -		return -EIO;
> -	}
> -
> -	if (!ret)
> +	if (!intel_dp_read_lttpr_common_caps(intel_dp))
>  		return 0;
>  
> -	/*
> -	 * The 0xF0000-0xF02FF range is only valid if the DPCD revision
> is
> -	 * at least 1.4.
> -	 */
> -	if (intel_dp->dpcd[DP_DPCD_REV] < 0x14) {
> -		intel_dp_reset_lttpr_common_caps(intel_dp);
> -		return 0;
> -	}
> -
>  	lttpr_count = drm_dp_lttpr_count(intel_dp->lttpr_common_caps);
>  	/*
>  	 * Prevent setting LTTPR transparent mode explicitly if no
> LTTPRs are
> @@ -211,6 +175,37 @@ int intel_dp_init_lttpr_and_dprx_caps(struct
> intel_dp *intel_dp)
>  
>  	return lttpr_count;
>  }
> +
> +/**
> + * intel_dp_init_lttpr_and_dprx_caps - detect LTTPR and DPRX caps,
> init the LTTPR link training mode
> + * @intel_dp: Intel DP struct
> + *
> + * Read the LTTPR common and DPRX capabilities and switch to non-
> transparent
> + * link training mode if any is detected and read the PHY
> capabilities for all
> + * detected LTTPRs. In case of an LTTPR detection error or if the
> number of
> + * LTTPRs is more than is supported (8), fall back to the no-LTTPR,
> + * transparent mode link training mode.
> + *
> + * Returns:
> + *   >0  if LTTPRs were detected and the non-transparent LT mode was
> set. The
> + *       DPRX capabilities are read out.
> + *    0  if no LTTPRs or more than 8 LTTPRs were detected or in case
> of a
> + *       detection failure and the transparent LT mode was set. The
> DPRX
> + *       capabilities are read out.
> + *   <0  Reading out the DPRX capabilities failed.
> + */
> +int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
> +{
> +	int lttpr_count = intel_dp_init_lttpr(intel_dp);
> +
> +	/* The DPTX shall read the DPRX caps after LTTPR detection. */
> +	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd)) {
> +		intel_dp_reset_lttpr_common_caps(intel_dp);
> +		return -EIO;
> +	}
> +
> +	return lttpr_count;
> +}
>  EXPORT_SYMBOL(intel_dp_init_lttpr_and_dprx_caps);
>  
>  static u8 dp_voltage_max(u8 preemph)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
