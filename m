Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DD13FF9AD
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 06:46:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12B0E6E83A;
	Fri,  3 Sep 2021 04:46:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69A276E834
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 04:46:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="283031400"
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; 
 d="scan'208,217";a="283031400"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 21:46:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; 
 d="scan'208,217";a="533695232"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Sep 2021 21:46:07 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 21:46:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 21:46:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 2 Sep 2021 21:46:06 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 2 Sep 2021 21:46:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Enf1+eyFm9knlo1fvjteNIB5eTdIJL8MbupopISi9vaL48OF4ItVdP4tqDQ97XPxcfoJwnwaIUzQ6vPD2VzqG6G4lqeksj0xMIUziRc8XUsy3AbgqjFBdzIbjBGEMXdjm9OarRk+/gH94FrgemhiY4zLF8CtYgV+qbzrjRfYjzDbVQNHkteBkuJV1C6Ah/ACH+ZStqXBEzU/0AVpinyzUOYGaNTlLlIwGmuZchbC0z+eQ4WOUN+7o8e0Youen0fruYfpbKbuUV5PVYbBVWkGD2aA/rUXouAEKEjN9h0Ias9y+cmvdKJMNOqyw9weZFnZWJnEJIs6ExQ9xJQXogiR/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=WtKbYE3cgkvK/r8yaXOWtFm4mimOh0ZZ/G4sSPOwz9k=;
 b=XvKX9Bhrovd9+QKqQQHeoCQQ85wD4WLZbVx8pSDZxo+BMAykFpl4cZ23HhsAlEY9ZGjx58hcY5BhUnlRdB2aq12tXJkb3buucdwhq5O1djtSnJR109E3fecNdaIuZIzpaZgBM+RDn7KrwB6JMK9Dv58j3G6vY69y68e1JohVViPv/3a98fU66/7LWHpDfdtUHaEpLejIrKee0dAqh0YOIHUEBybgM+83NX3TRGOx8esvPRvrDygQlNHDDgQgJVEHdNs4BHf1uORiefdcxmetzdrwSl75odih2SSRWbFSDhWTNMv1XKMdeTXTC6r4PSMyqiQSLNi45CdP41DjHLVOzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WtKbYE3cgkvK/r8yaXOWtFm4mimOh0ZZ/G4sSPOwz9k=;
 b=jTU+1jjlyIfa9BOf5WfL6snkBVxYN8NAypyHtpOPb1tdEz6piNbUwrR7tfBuNkwVD06z1U9niTX/YRMOYENZaGqpVaNZ2o0dvNaRTequzjVSesaVbSyaJkn76/CUsTx2L0pvQyNgbhFiCDbCv5r4DtxlP6qrAzuQ/SGQxMSpaKo=
Received: from BN9PR11MB5305.namprd11.prod.outlook.com (2603:10b6:408:136::18)
 by BN9PR11MB5545.namprd11.prod.outlook.com (2603:10b6:408:102::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.22; Fri, 3 Sep
 2021 04:46:03 +0000
Received: from BN9PR11MB5305.namprd11.prod.outlook.com
 ([fe80::bd73:7a75:ffa0:ae5a]) by BN9PR11MB5305.namprd11.prod.outlook.com
 ([fe80::bd73:7a75:ffa0:ae5a%2]) with mapi id 15.20.4478.022; Fri, 3 Sep 2021
 04:46:03 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>, "Li, Juston"
 <juston.li@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "seanpaul@chromium.org" <seanpaul@chromium.org>, "C, Ramalingam"
 <ramalingam.c@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v6 3/3] drm/i915/hdcp: reuse rx_info for mst
 stream type1 capability check
Thread-Index: AQHXlSrbsDTOZEm/Z0+4/RtTryK216uQzTBggAEAKPA=
Date: Fri, 3 Sep 2021 04:46:03 +0000
Message-ID: <BN9PR11MB5305CF2D61AAD4A67A4977BEE3CF9@BN9PR11MB5305.namprd11.prod.outlook.com>
References: <20210819184835.1181323-1-juston.li@intel.com>
 <20210819184835.1181323-4-juston.li@intel.com>
 <9142dbed756846ae879cc7f2209255f8@intel.com>
In-Reply-To: <9142dbed756846ae879cc7f2209255f8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa88d476-5168-4466-1a8e-08d96e95bc2d
x-ms-traffictypediagnostic: BN9PR11MB5545:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN9PR11MB554526D3A8A3F677E4787DE2E3CF9@BN9PR11MB5545.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s/CnpwZpKIXWTwhHzuBLCbCwdsQEuAcQcYLwZVLlpeLyAcRfFFhVejikM55SnytaUJCWlwesfhIMssIYFuC97Ucryc6IH76DbVObw/OUHOZmzs6B6MDjin1LccWDLmfFytqVvhmaHJCv/FscfBqOOsPQHkMYC/GRUt2WMsdcj7URJR9/uiLvVQAiPOymQJzaIPdP/0IFt7Gvfwb3aQ5tH89NNGe31pWeyfgMi0/QIp39V9dIp2uR/W85+QaJ2l4r4LZetwBMIsVk//gMj3jWcKCCJKIlH+svrmBHGCBcZP37e9GbjO/LV+UnF4Vq4uzx9quo20+BmJW7/5TpPwPJdZXz1Dlyqm9CswobPejFxGufvQ/fQcem1WULYA/YO2GIQi7H5cFzLN+mRFMs211UBluCZy1RWWJg2rBYWS0kn70B23yCHDf0ThSHzUUrktY4JBs+ThDPzRAKnH4VGqwreAwY7tQkfzYY7aSsForOjVHPfRKOXyysPSQN/+u1alt4KyOtzVbCPzTwOVmCWoaNzwFrg3+tc674mxyPs8tysXP+85GBOfd6NBcifHJVtIsWCBOS2B1iOXq/3RDwyywLN6Emah78Az9XmqrzaocFrY5NfMcuDHvFrXvf1JT5Xwg00QD81obu22NfR6VFwl1DS2dhHgJAr3leMAqzQASt/4XUDWq68n/GIrOqNLMV5a6OWEwZ6rnByobvBB3PB2jxcw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5305.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(136003)(366004)(39860400002)(396003)(33656002)(66476007)(26005)(478600001)(5660300002)(122000001)(66446008)(52536014)(64756008)(66556008)(71200400001)(38100700002)(55016002)(107886003)(8676002)(6506007)(66946007)(8936002)(7696005)(9686003)(4326008)(186003)(76116006)(53546011)(38070700005)(2906002)(54906003)(86362001)(110136005)(83380400001)(30864003)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JcpjiwcYk430pcvysa001s0dqi3jZWkkQx7IOdsYR7AU4xQuzT421FAM3zHb?=
 =?us-ascii?Q?Vaq4RD0Aa3pAvO2up7h1OUOsP/2XO+xw9pLQ8yH1UPN2jaPObv7Q2c2vr/bL?=
 =?us-ascii?Q?CDQZvrtvb4Q24EUzjCSEyJKs7Wo/cDSj13P0z8GCiLa8Ss8HbR/iF5MBGPgo?=
 =?us-ascii?Q?DExTy846r526sLQvpWm0qQ5viLd68h5N17qRXzt/PrpMj4qqMIFJZIhRNBwB?=
 =?us-ascii?Q?+407qPqIFdMX1jqZWphkNM6q44TpKg0P3vxsLFK/pyJQ0UtfUr8mI0ycpmev?=
 =?us-ascii?Q?AjM7c+KLhTrZM1q4tZnoFNbHVfCoIdfKnubFCt6LGy0QIHkvhHI028eEymXN?=
 =?us-ascii?Q?qN8GU9Z3+8hXv537rXxW7PaCoaAbCJ1QXcrepQ7RcJ7q3AeEV8pCWPL4xIEe?=
 =?us-ascii?Q?Q0/93OV9IhK1PiwSexm0OSvXcbLlUf4d5IetJkp+u4JzDICXFzN68Ik5joZa?=
 =?us-ascii?Q?FCwb2ztHOwDe4alJiaVkF9tB+b0YWWmHa4JUm+QrvElFGCpYxxWMZ1zpC87j?=
 =?us-ascii?Q?pjCGByZYRu/4URi9Mexy9yNHRj1doHBtuVajz4SdXvkamNOko9rc55gjeUQj?=
 =?us-ascii?Q?CT229RjRevWa7eXKXeWU5mUyeKr2phB8aL1SElsHEgsSZHjf/aAq8wGYtCUT?=
 =?us-ascii?Q?DMvMVYbaxwMJE/3159uGmv1XqOOoqOKsgr9Pc7Md9h10h7KXujKn7I/XhBrX?=
 =?us-ascii?Q?oFYi6S+faetC2/xcs3G/YiaIIe54uL6626FiKTK61v7x3CILX9eA2XYZm42Q?=
 =?us-ascii?Q?TIIYWDLJEDOzzLLUJCR8slsvl06m6q1kmQoYHfEGNP9J03ezm+f6ydnZzaIK?=
 =?us-ascii?Q?wnNyLQ9OsXPszloZW6JkxeArllYfMAsrOzhQ5PT4Ax/0l3z2hL5jT98nPm/F?=
 =?us-ascii?Q?/Hxvlt2ypsy6KSlAqTKztt7mr0vKTPNAEa1+6QyhsyOzXBAbWWD5Kt41zLxB?=
 =?us-ascii?Q?9R8wvUFmIuHndOW0Yhu/v/aFZdLdPzoRsgJYymNDgThUjM0ISIcvDDWykwmT?=
 =?us-ascii?Q?HdPY/PyC5AUhbixZRfDqxrdqb3Bo/G54oTz6q7eLPBbJgDCmA5RSHVVEAzBs?=
 =?us-ascii?Q?sfwA+CrBb5ovU+w87U+fSSBJ9uCiXGv/vnyg0J1+4nWUrvPcE9IXUDp7VE/M?=
 =?us-ascii?Q?SBMXp45mXH8j63TQq0xG+gbc1UR95i7AxOlAoOca7kJqT9gXmZW9INvKz9uW?=
 =?us-ascii?Q?SCU+pPGNlfyvvCOlY3Qpinl2blWaA3ttXcxPEEsb8EnqFgW3faIs0q1MKrH5?=
 =?us-ascii?Q?EKfObl3kwbssciEX9O3u3EnCs+YFfiXx2THI7oJoKkL8Oejnq8d0cl4LeyMT?=
 =?us-ascii?Q?b2I=3D?=
Content-Type: multipart/alternative;
 boundary="_000_BN9PR11MB5305CF2D61AAD4A67A4977BEE3CF9BN9PR11MB5305namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5305.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa88d476-5168-4466-1a8e-08d96e95bc2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2021 04:46:03.4725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dhsacuYriwjVMuSNpeodujwnUj4ludsDCVkUDIi3S6e93lEIBxphRj8qBpqf3xOitPmEZodVTE6hD6NaSQqBwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5545
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 3/3] drm/i915/hdcp: reuse rx_info for mst
 stream type1 capability check
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

--_000_BN9PR11MB5305CF2D61AAD4A67A4977BEE3CF9BN9PR11MB5305namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi ,

I have tested the patch 20856 against ci_drm_10499 and the patch 20921 agai=
nst ci_drm_10537 kernel using the IGT kms_test_protection test on TGL platf=
orm with the following setups:

- HCDP2.2 Monitor connected to HDCP 2.2 Monitor

- HCDP2.2 Monitor connected to HDCP 1.4 Monitor

- HCDP1.4 Monitor connected to HDCP 1.4 Monitor

- HCDP2.2 Monitor standalone

- HDCP1.4 Monitor standalone
I did not see any delta between the Patchwork and CI_DRM kernel and all DP =
MST Scenarios seem to work fine. We can go ahead and merge this patch.

Tested-by: Suraj K <suraj.kandpal@intel.com>





-----Original Message-----
From: Gupta, Anshuman <anshuman.gupta@intel.com>
Sent: Thursday, September 2, 2021 6:40 PM
To: Li, Juston <juston.li@intel.com>; intel-gfx@lists.freedesktop.org; Kand=
pal, Suraj <suraj.kandpal@intel.com>
Cc: seanpaul@chromium.org; C, Ramalingam <ramalingam.c@intel.com>; Vivi, Ro=
drigo <rodrigo.vivi@intel.com>
Subject: RE: [Intel-gfx] [PATCH v6 3/3] drm/i915/hdcp: reuse rx_info for ms=
t stream type1 capability check







> -----Original Message-----

> From: Li, Juston <juston.li@intel.com<mailto:juston.li@intel.com>>

> Sent: Friday, August 20, 2021 12:19 AM

> To: intel-gfx@lists.freedesktop.org<mailto:intel-gfx@lists.freedesktop.or=
g>

> Cc: seanpaul@chromium.org<mailto:seanpaul@chromium.org>; Gupta, Anshuman =
<anshuman.gupta@intel.com<mailto:anshuman.gupta@intel.com>>;

> C, Ramalingam <ramalingam.c@intel.com<mailto:ramalingam.c@intel.com>>; Vi=
vi, Rodrigo

> <rodrigo.vivi@intel.com<mailto:rodrigo.vivi@intel.com>>; Li, Juston <just=
on.li@intel.com<mailto:juston.li@intel.com>>

> Subject: [Intel-gfx] [PATCH v6 3/3] drm/i915/hdcp: reuse rx_info for

> mst stream

> type1 capability check

>

> On some MST docking stations, rx_info can only be read after

> RepeaterAuth_Send_ReceiverID_List and the RxStatus READY bit is set

> otherwise the read will return -EIO.

>

> This behavior causes the mst stream type1 capability test to fail to

> read rx_info and determine if the topology supports type1 and fallback to=
 type0.

>

> To fix this, check for type1 capability when we receive rx_info within

> the AKE flow when we read RepeaterAuth_Send_ReceiverID_List instead of

> an explicit read just for type1 capability checking.

>

> This does require moving where we set stream_types to after

> hdcp2_authenticate_sink() when we get rx_info but this occurs before

> we do hdcp2_propagate_stream_management_info.

>

> Also, legacy HDCP 2.0/2.1 are not type 1 capable either so check for

> that as well.

>

> Changes since v5:

>  - rename intel_set_stream_types() to intel_hdcp_prepare_streams()

>    (Anshuman)

>

> Changes since v4:

>  - move topology_type1_capable to intel_digital_port and rename it as

>    hdcp_mst_type1_capable (Anshuman)

>  - make a helper function intel_set_stream_types() to set stream types

>    in hdcp2_authenticate_and_encrypt() (Anshuman)

>  - break on failure to set stream types and retry instead of returning

>  - remove no longer used declaration for streams_type1_capable()

>

> Changes since v2:

>  - Remove no longer used variables in _intel_hdcp2_enable()

>

> Signed-off-by: Juston Li <juston.li@intel.com<mailto:juston.li@intel.com>=
>

> Reviewed-by: Ramalingam C <ramalingam.c@intel.com<mailto:ramalingam.c@int=
el.com>>

> Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com<mailto:anshuman.gup=
ta@intel.com>>

Adding Suraj to this thread.

> ---

>  .../drm/i915/display/intel_display_types.h    |  6 +-

>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 39 -----------

>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 64 +++++++++++--------

>  3 files changed, 38 insertions(+), 71 deletions(-)

>

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h

> b/drivers/gpu/drm/i915/display/intel_display_types.h

> index 6beeeeba1bed..34e90a841280 100644

> --- a/drivers/gpu/drm/i915/display/intel_display_types.h

> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h

> @@ -428,10 +428,6 @@ struct intel_hdcp_shim {  int

> (*hdcp_2_2_capable)(struct intel_digital_port *dig_port,  bool

> *capable);

>

> -/* Detects whether a HDCP 1.4 sink connected in MST topology */ -int

> (*streams_type1_capable)(struct intel_connector *connector,

> -     bool *capable);

> -

>  /* Write HDCP2.2 messages */

>  int (*write_2_2_msg)(struct intel_digital_port *dig_port,

>       void *buf, size_t size);

> @@ -1684,6 +1680,8 @@ struct intel_digital_port {  bool

> hdcp_auth_status;

>  /* HDCP port data need to pass to security f/w */  struct

> hdcp_port_data hdcp_port_data;

> +/* Whether the MST topology supports HDCP Type 1 Content */ bool

> +hdcp_mst_type1_capable;

>

>  void (*write_infoframe)(struct intel_encoder *encoder,  const struct

> intel_crtc_state *crtc_state, diff -- git

> a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c

> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c

> index fbfb3c4d16bb..540a669e01dd 100644

> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c

> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c

> @@ -478,23 +478,6 @@ int intel_dp_hdcp2_write_msg(struct

> intel_digital_port *dig_port,  return size;  }

>

> -static int

> -get_rxinfo_hdcp_1_dev_downstream(struct intel_digital_port *dig_port,

> bool

> *hdcp_1_x) -{

> -u8 rx_info[HDCP_2_2_RXINFO_LEN];

> -int ret;

> -

> -ret =3D drm_dp_dpcd_read(&dig_port->dp.aux,

> -       DP_HDCP_2_2_REG_RXINFO_OFFSET,

> -       (void *)rx_info, HDCP_2_2_RXINFO_LEN);

> -

> -if (ret !=3D HDCP_2_2_RXINFO_LEN)

> -return ret >=3D 0 ? -EIO : ret;

> -

> -*hdcp_1_x =3D HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]) ? true

> : false;

> -return 0;

> -}

> -

>  static

>  ssize_t get_receiver_id_list_rx_info(struct intel_digital_port

> *dig_port, u32 *dev_cnt, u8 *byte)  { @@ -665,27 +648,6 @@ int

> intel_dp_hdcp2_capable(struct intel_digital_port *dig_port,  return 0;

> }

>

> -static

> -int intel_dp_mst_streams_type1_capable(struct intel_connector *connector=
,

> -       bool *capable)

> -{

> -struct intel_digital_port *dig_port =3D

> intel_attached_dig_port(connector);

> -struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);

> -int ret; -bool hdcp_1_x;

> -

> -ret =3D get_rxinfo_hdcp_1_dev_downstream(dig_port, &hdcp_1_x); -if

> (ret) { -drm_dbg_kms(&i915->drm,

> -    "[%s:%d] failed to read RxInfo ret=3D%d\n",

> -    connector->base.name, connector->base.base.id,

> ret);

> -return ret;

> -}

> -

> -*capable =3D !hdcp_1_x;

> -return 0;

> -}

> -

>  static const struct intel_hdcp_shim intel_dp_hdcp_shim =3D {

> .write_an_aksv =3D intel_dp_hdcp_write_an_aksv,  .read_bksv =3D

> intel_dp_hdcp_read_bksv, @@ -834,7 +796,6 @@ static const struct

> intel_hdcp_shim intel_dp_mst_hdcp_shim =3D {  .stream_2_2_encryption =3D

> intel_dp_mst_hdcp2_stream_encryption,

>  .check_2_2_link =3D intel_dp_mst_hdcp2_check_link,  .hdcp_2_2_capable =
=3D

> intel_dp_hdcp2_capable, -.streams_type1_capable =3D

> intel_dp_mst_streams_type1_capable,

>  .protocol =3D HDCP_PROTOCOL_DP,

>  };

>

> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c

> b/drivers/gpu/drm/i915/display/intel_hdcp.c

> index ebc2e32aec0b..9b9fd9d13043 100644

> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c

> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c

> @@ -33,21 +33,6 @@ static int intel_conn_to_vcpi(struct

> intel_connector

> *connector)

>  return connector->port? connector->port->vcpi.vcpi : 0;  }

>

> -static bool

> -intel_streams_type1_capable(struct intel_connector *connector) -{

> -const struct intel_hdcp_shim *shim =3D connector->hdcp.shim; -bool

> capable =3D false;

> -

> -if (!shim)

> -return capable;

> -

> -if (shim->streams_type1_capable)

> -shim->streams_type1_capable(connector, &capable);

> -

> -return capable;

> -}

> -

>  /*

>   * intel_hdcp_required_content_stream selects the most highest common

> possible HDCP

>   * content_type for all streams in DP MST topology because security

> f/w doesn't @@ -86,7 +71,7 @@

> intel_hdcp_required_content_stream(struct

> intel_digital_port *dig_port)

>  if (conn_dig_port !=3D dig_port)

>  continue;

>

> -if (!enforce_type0 &&

> !intel_streams_type1_capable(connector))

> +if (!enforce_type0 && !dig_port->hdcp_mst_type1_capable)

>  enforce_type0 =3D true;

>

>  data->streams[data->k].stream_id =3D

> intel_conn_to_vcpi(connector); @@ -112,6 +97,25 @@

> intel_hdcp_required_content_stream(struct intel_digital_port

> *dig_port)  return 0;  }

>

> +static int intel_hdcp_prepare_streams(struct intel_connector

> +*connector) {

> +struct intel_digital_port *dig_port =3D

> intel_attached_dig_port(connector);

> +struct hdcp_port_data *data =3D &dig_port->hdcp_port_data; struct

> +intel_hdcp *hdcp =3D &connector->hdcp; int ret;

> +

> +if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {

> +data->k =3D 1;

> +data->streams[0].stream_type =3D hdcp->content_type;

> +} else {

> +ret =3D intel_hdcp_required_content_stream(dig_port);

> +if (ret)

> +return ret;

> +}

> +

> +return 0;

> +}

> +

>  static

>  bool intel_hdcp_is_ksv_valid(u8 *ksv)  { @@ -1632,6 +1636,14 @@ int

> hdcp2_authenticate_repeater_topology(struct

> intel_connector *connector)

>  return -EINVAL;

>  }

>

> +/*

> + * MST topology is not Type 1 capable if it contains a downstream

> + * device that is only HDCP 1.x or Legacy HDCP 2.0/2.1 compliant.

> + */

> +dig_port->hdcp_mst_type1_capable =3D

> +!HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]) &&

> +!HDCP_2_2_HDCP_2_0_REP_CONNECTED(rx_info[1]);

> +

>  /* Converting and Storing the seq_num_v to local variable as DWORD */

> seq_num_v =3D  drm_hdcp_be24_to_cpu((const u8

> *)msgs.recvid_list.seq_num_v); @@ -1876,6 +1888,14 @@ static int

> hdcp2_authenticate_and_encrypt(struct intel_connector *connector)  for

> (i =3D 0; i < tries && !dig_port->hdcp_auth_status; i++) {  ret =3D

> hdcp2_authenticate_sink(connector);

>  if (!ret) {

> +ret =3D intel_hdcp_prepare_streams(connector);

> +if (ret) {

> +drm_dbg_kms(&i915->drm,

> +    "Prepare streams failed.(%d)\n",

> +    ret);

> +break;

> +}

> +

>  ret =3D

> hdcp2_propagate_stream_management_info(connector);

>  if (ret) {

>  drm_dbg_kms(&i915->drm,

> @@ -1921,9 +1941,7 @@ static int hdcp2_authenticate_and_encrypt(struct

> intel_connector *connector)

>

>  static int _intel_hdcp2_enable(struct intel_connector *connector)  {

> -struct intel_digital_port *dig_port =3D

> intel_attached_dig_port(connector);

>  struct drm_i915_private *i915 =3D to_i915(connector->base.dev); -struct

> hdcp_port_data *data =3D &dig_port->hdcp_port_data;  struct intel_hdcp

> *hdcp =3D &connector->hdcp;  int ret;

>

> @@ -1931,16 +1949,6 @@ static int _intel_hdcp2_enable(struct

> intel_connector *connector)

>      connector->base.name, connector->base.base.id,

>      hdcp->content_type);

>

> -/* Stream which requires encryption */ -if

> (!intel_encoder_is_mst(intel_attached_encoder(connector))) {

> -data->k =3D 1;

> -data->streams[0].stream_type =3D hdcp->content_type;

> -} else {

> -ret =3D intel_hdcp_required_content_stream(dig_port);

> -if (ret)

> -return ret;

> -}

> -

>  ret =3D hdcp2_authenticate_and_encrypt(connector);

>  if (ret) {

>  drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed.

> (%d)\n",

> --

> 2.31.1





--_000_BN9PR11MB5305CF2D61AAD4A67A4977BEE3CF9BN9PR11MB5305namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">Hi ,<o:p></o:p></p>
<p class=3D"MsoPlainText">I have tested the patch 20856 against ci_drm_1049=
9 and the patch 20921 against ci_drm_10537 kernel using the IGT kms_test_pr=
otection test on TGL platform with the following setups:<o:p></o:p></p>
<p class=3D"MsoPlainText">- HCDP2.2 Monitor connected to HDCP 2.2 Monitor<o=
:p></o:p></p>
<p class=3D"MsoPlainText">- HCDP2.2 Monitor connected to HDCP 1.4 Monitor<o=
:p></o:p></p>
<p class=3D"MsoPlainText">- HCDP1.4 Monitor connected to HDCP 1.4 Monitor<o=
:p></o:p></p>
<p class=3D"MsoPlainText">- HCDP2.2 Monitor standalone<o:p></o:p></p>
<p class=3D"MsoPlainText">- HDCP1.4 Monitor standalone <o:p></o:p></p>
<p class=3D"MsoNormal">I did not see any delta between the Patchwork and CI=
_DRM kernel and all DP MST Scenarios seem to work fine. We can go ahead and=
 merge this patch.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tested-by: Suraj K &lt;suraj.kandpal@intel.com&gt;<o=
:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">-----Original Message-----<br>
From: Gupta, Anshuman &lt;anshuman.gupta@intel.com&gt; <br>
Sent: Thursday, September 2, 2021 6:40 PM<br>
To: Li, Juston &lt;juston.li@intel.com&gt;; intel-gfx@lists.freedesktop.org=
; Kandpal, Suraj &lt;suraj.kandpal@intel.com&gt;<br>
Cc: seanpaul@chromium.org; C, Ramalingam &lt;ramalingam.c@intel.com&gt;; Vi=
vi, Rodrigo &lt;rodrigo.vivi@intel.com&gt;<br>
Subject: RE: [Intel-gfx] [PATCH v6 3/3] drm/i915/hdcp: reuse rx_info for ms=
t stream type1 capability check</p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; -----Original Message-----<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; From: Li, Juston &lt;<a href=3D"mailto:justo=
n.li@intel.com"><span style=3D"color:windowtext;text-decoration:none">justo=
n.li@intel.com</span></a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Sent: Friday, August 20, 2021 12:19 AM<o:p><=
/o:p></p>
<p class=3D"MsoPlainText">&gt; To: <a href=3D"mailto:intel-gfx@lists.freede=
sktop.org"><span style=3D"color:windowtext;text-decoration:none">intel-gfx@=
lists.freedesktop.org</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Cc: <a href=3D"mailto:seanpaul@chromium.org"=
><span style=3D"color:windowtext;text-decoration:none">seanpaul@chromium.or=
g</span></a>; Gupta, Anshuman &lt;<a href=3D"mailto:anshuman.gupta@intel.co=
m"><span style=3D"color:windowtext;text-decoration:none">anshuman.gupta@int=
el.com</span></a>&gt;;
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; C, Ramalingam &lt;<a href=3D"mailto:ramaling=
am.c@intel.com"><span style=3D"color:windowtext;text-decoration:none">ramal=
ingam.c@intel.com</span></a>&gt;; Vivi, Rodrigo
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; &lt;<a href=3D"mailto:rodrigo.vivi@intel.com=
"><span style=3D"color:windowtext;text-decoration:none">rodrigo.vivi@intel.=
com</span></a>&gt;; Li, Juston &lt;<a href=3D"mailto:juston.li@intel.com"><=
span style=3D"color:windowtext;text-decoration:none">juston.li@intel.com</s=
pan></a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Subject: [Intel-gfx] [PATCH v6 3/3] drm/i915=
/hdcp: reuse rx_info for
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; mst stream<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; type1 capability check<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; On some MST docking stations, rx_info can on=
ly be read after
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; RepeaterAuth_Send_ReceiverID_List and the Rx=
Status READY bit is set
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; otherwise the read will return -EIO.<o:p></o=
:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; This behavior causes the mst stream type1 ca=
pability test to fail to
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; read rx_info and determine if the topology s=
upports type1 and fallback to type0.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; To fix this, check for type1 capability when=
 we receive rx_info within
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; the AKE flow when we read RepeaterAuth_Send_=
ReceiverID_List instead of
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; an explicit read just for type1 capability c=
hecking.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; This does require moving where we set stream=
_types to after<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; hdcp2_authenticate_sink() when we get rx_inf=
o but this occurs before
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; we do hdcp2_propagate_stream_management_info=
.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Also, legacy HDCP 2.0/2.1 are not type 1 cap=
able either so check for
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; that as well.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Changes since v5:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; - rename intel_set_stream_types() to i=
ntel_hdcp_prepare_streams()<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp;&nbsp;&nbsp; (Anshuman)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Changes since v4:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; - move topology_type1_capable to intel=
_digital_port and rename it as<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp;&nbsp;&nbsp; hdcp_mst_type1_capable (An=
shuman)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; - make a helper function intel_set_str=
eam_types() to set stream types<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp;&nbsp;&nbsp; in hdcp2_authenticate_and_=
encrypt() (Anshuman)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; - break on failure to set stream types=
 and retry instead of returning<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; - remove no longer used declaration fo=
r streams_type1_capable()<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Changes since v2:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; - Remove no longer used variables in _=
intel_hdcp2_enable()<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Signed-off-by: Juston Li &lt;<a href=3D"mail=
to:juston.li@intel.com"><span style=3D"color:windowtext;text-decoration:non=
e">juston.li@intel.com</span></a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Reviewed-by: Ramalingam C &lt;<a href=3D"mai=
lto:ramalingam.c@intel.com"><span style=3D"color:windowtext;text-decoration=
:none">ramalingam.c@intel.com</span></a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Reviewed-by: Anshuman Gupta &lt;<a href=3D"m=
ailto:anshuman.gupta@intel.com"><span style=3D"color:windowtext;text-decora=
tion:none">anshuman.gupta@intel.com</span></a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">Adding Suraj to this thread.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; ---<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; .../drm/i915/display/intel_display_typ=
es.h&nbsp;&nbsp;&nbsp; |&nbsp; 6 +-<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; drivers/gpu/drm/i915/display/intel_dp_=
hdcp.c&nbsp; | 39 -----------<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; drivers/gpu/drm/i915/display/intel_hdc=
p.c&nbsp;&nbsp;&nbsp;&nbsp; | 64 +++++++++++--------<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; 3 files changed, 38 insertions(+), 71 =
deletions(-)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; diff --git a/drivers/gpu/drm/i915/display/in=
tel_display_types.h<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; b/drivers/gpu/drm/i915/display/intel_display=
_types.h<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; index 6beeeeba1bed..34e90a841280 100644<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">&gt; --- a/drivers/gpu/drm/i915/display/intel_dis=
play_types.h<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +++ b/drivers/gpu/drm/i915/display/intel_dis=
play_types.h<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; @@ -428,10 +428,6 @@ struct intel_hdcp_shim =
{&nbsp; int <o:p>
</o:p></p>
<p class=3D"MsoPlainText">&gt; (*hdcp_2_2_capable)(struct intel_digital_por=
t *dig_port,&nbsp; bool
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; *capable);<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -/* Detects whether a HDCP 1.4 sink connecte=
d in MST topology */ -int
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; (*streams_type1_capable)(struct intel_connec=
tor *connector,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -&nbsp;&nbsp;&nbsp;&nbsp; bool *capable);<o:=
p></o:p></p>
<p class=3D"MsoPlainText">&gt; -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; /* Write HDCP2.2 messages */<o:p></o:p=
></p>
<p class=3D"MsoPlainText">&gt;&nbsp; int (*write_2_2_msg)(struct intel_digi=
tal_port *dig_port,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; void *bu=
f, size_t size);<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; @@ -1684,6 +1680,8 @@ struct intel_digital_p=
ort {&nbsp; bool
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; hdcp_auth_status;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; /* HDCP port data need to pass to secu=
rity f/w */&nbsp; struct
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; hdcp_port_data hdcp_port_data;<o:p></o:p></p=
>
<p class=3D"MsoPlainText">&gt; +/* Whether the MST topology supports HDCP T=
ype 1 Content */ bool
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +hdcp_mst_type1_capable;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; void (*write_infoframe)(struct intel_e=
ncoder *encoder,&nbsp; const struct
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_crtc_state *crtc_state, diff -- git <o=
:p></o:p></p>
<p class=3D"MsoPlainText">&gt; a/drivers/gpu/drm/i915/display/intel_dp_hdcp=
.c<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; b/drivers/gpu/drm/i915/display/intel_dp_hdcp=
.c<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; index fbfb3c4d16bb..540a669e01dd 100644<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">&gt; --- a/drivers/gpu/drm/i915/display/intel_dp_=
hdcp.c<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +++ b/drivers/gpu/drm/i915/display/intel_dp_=
hdcp.c<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; @@ -478,23 +478,6 @@ int intel_dp_hdcp2_writ=
e_msg(struct
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_digital_port *dig_port,&nbsp; return s=
ize;&nbsp; }<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -static int<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -get_rxinfo_hdcp_1_dev_downstream(struct int=
el_digital_port *dig_port,
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; bool<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; *hdcp_1_x) -{<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -u8 rx_info[HDCP_2_2_RXINFO_LEN];<o:p></o:p>=
</p>
<p class=3D"MsoPlainText">&gt; -int ret;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -ret =3D drm_dp_dpcd_read(&amp;dig_port-&gt;=
dp.aux,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DP_HDC=
P_2_2_REG_RXINFO_OFFSET,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (void =
*)rx_info, HDCP_2_2_RXINFO_LEN);<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -if (ret !=3D HDCP_2_2_RXINFO_LEN)<o:p></o:p=
></p>
<p class=3D"MsoPlainText">&gt; -return ret &gt;=3D 0 ? -EIO : ret;<o:p></o:=
p></p>
<p class=3D"MsoPlainText">&gt; -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -*hdcp_1_x =3D HDCP_2_2_HDCP1_DEVICE_CONNECT=
ED(rx_info[1]) ? true<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; : false;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -return 0;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -}<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; static<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; ssize_t get_receiver_id_list_rx_info(s=
truct intel_digital_port
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; *dig_port, u32 *dev_cnt, u8 *byte)&nbsp; { @=
@ -665,27 +648,6 @@ int
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_dp_hdcp2_capable(struct intel_digital_=
port *dig_port,&nbsp; return 0;&nbsp;
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; }<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -static<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -int intel_dp_mst_streams_type1_capable(stru=
ct intel_connector *connector,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool *=
capable)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -{<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -struct intel_digital_port *dig_port =3D <o:=
p></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_attached_dig_port(connector);<o:p></o:=
p></p>
<p class=3D"MsoPlainText">&gt; -struct drm_i915_private *i915 =3D to_i915(d=
ig_port-&gt;base.base.dev);
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -int ret; -bool hdcp_1_x;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -ret =3D get_rxinfo_hdcp_1_dev_downstream(di=
g_port, &amp;hdcp_1_x); -if
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; (ret) { -drm_dbg_kms(&amp;i915-&gt;drm,<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">&gt; -&nbsp;&nbsp;&nbsp; &quot;[%s:%d] failed to =
read RxInfo ret=3D%d\n&quot;,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -&nbsp;&nbsp;&nbsp; connector-&gt;base.name,=
 connector-&gt;base.base.id,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; ret);<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -return ret;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -}<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -*capable =3D !hdcp_1_x;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -return 0;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -}<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; static const struct intel_hdcp_shim in=
tel_dp_hdcp_shim =3D {&nbsp;
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; .write_an_aksv =3D intel_dp_hdcp_write_an_ak=
sv,&nbsp; .read_bksv =3D
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_dp_hdcp_read_bksv, @@ -834,7 +796,6 @@=
 static const struct
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_hdcp_shim intel_dp_mst_hdcp_shim =3D {=
&nbsp; .stream_2_2_encryption =3D
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_dp_mst_hdcp2_stream_encryption,<o:p></=
o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; .check_2_2_link =3D intel_dp_mst_hdcp2=
_check_link,&nbsp; .hdcp_2_2_capable =3D
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_dp_hdcp2_capable, -.streams_type1_capa=
ble =3D <o:p>
</o:p></p>
<p class=3D"MsoPlainText">&gt; intel_dp_mst_streams_type1_capable,<o:p></o:=
p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; .protocol =3D HDCP_PROTOCOL_DP,<o:p></=
o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; };<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; diff --git a/drivers/gpu/drm/i915/display/in=
tel_hdcp.c<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; b/drivers/gpu/drm/i915/display/intel_hdcp.c<=
o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; index ebc2e32aec0b..9b9fd9d13043 100644<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">&gt; --- a/drivers/gpu/drm/i915/display/intel_hdc=
p.c<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +++ b/drivers/gpu/drm/i915/display/intel_hdc=
p.c<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; @@ -33,21 +33,6 @@ static int intel_conn_to_=
vcpi(struct
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_connector<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; *connector)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; return connector-&gt;port? connector-&=
gt;port-&gt;vcpi.vcpi : 0;&nbsp; }<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -static bool<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -intel_streams_type1_capable(struct intel_co=
nnector *connector) -{
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -const struct intel_hdcp_shim *shim =3D conn=
ector-&gt;hdcp.shim; -bool
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; capable =3D false;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -if (!shim)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -return capable;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -if (shim-&gt;streams_type1_capable)<o:p></o=
:p></p>
<p class=3D"MsoPlainText">&gt; -shim-&gt;streams_type1_capable(connector, &=
amp;capable);<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -return capable;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -}<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; /*<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp;&nbsp; * intel_hdcp_required_content_st=
ream selects the most highest common
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; possible HDCP<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp;&nbsp; * content_type for all streams i=
n DP MST topology because security
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; f/w doesn't @@ -86,7 +71,7 @@ <o:p></o:p></p=
>
<p class=3D"MsoPlainText">&gt; intel_hdcp_required_content_stream(struct<o:=
p></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_digital_port *dig_port)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; if (conn_dig_port !=3D dig_port)<o:p><=
/o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; continue;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -if (!enforce_type0 &amp;&amp;<o:p></o:p></p=
>
<p class=3D"MsoPlainText">&gt; !intel_streams_type1_capable(connector))<o:p=
></o:p></p>
<p class=3D"MsoPlainText">&gt; +if (!enforce_type0 &amp;&amp; !dig_port-&gt=
;hdcp_mst_type1_capable)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; enforce_type0 =3D true;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; data-&gt;streams[data-&gt;k].stream_id=
 =3D<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_conn_to_vcpi(connector); @@ -112,6 +97=
,25 @@ <o:p>
</o:p></p>
<p class=3D"MsoPlainText">&gt; intel_hdcp_required_content_stream(struct in=
tel_digital_port
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; *dig_port)&nbsp; return 0;&nbsp; }<o:p></o:p=
></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +static int intel_hdcp_prepare_streams(struc=
t intel_connector<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +*connector) {<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +struct intel_digital_port *dig_port =3D<o:p=
></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_attached_dig_port(connector);<o:p></o:=
p></p>
<p class=3D"MsoPlainText">&gt; +struct hdcp_port_data *data =3D &amp;dig_po=
rt-&gt;hdcp_port_data; struct
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +intel_hdcp *hdcp =3D &amp;connector-&gt;hdc=
p; int ret;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +if (!intel_encoder_is_mst(intel_attached_en=
coder(connector))) {<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +data-&gt;k =3D 1;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +data-&gt;streams[0].stream_type =3D hdcp-&g=
t;content_type;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +} else {<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +ret =3D intel_hdcp_required_content_stream(=
dig_port);<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +if (ret)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +return ret;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +}<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +return 0;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +}<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; static<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; bool intel_hdcp_is_ksv_valid(u8 *ksv)&=
nbsp; { @@ -1632,6 +1636,14 @@ int
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; hdcp2_authenticate_repeater_topology(struct<=
o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_connector *connector)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; return -EINVAL;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; }<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +/*<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; + * MST topology is not Type 1 capable if it=
 contains a downstream<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; + * device that is only HDCP 1.x or Legacy H=
DCP 2.0/2.1 compliant.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; + */<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +dig_port-&gt;hdcp_mst_type1_capable =3D<o:p=
></o:p></p>
<p class=3D"MsoPlainText">&gt; +!HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]=
) &amp;&amp; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +!HDCP_2_2_HDCP_2_0_REP_CONNECTED(rx_info[1]=
);<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; /* Converting and Storing the seq_num_=
v to local variable as DWORD */&nbsp;
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; seq_num_v =3D&nbsp; drm_hdcp_be24_to_cpu((co=
nst u8 <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; *)msgs.recvid_list.seq_num_v); @@ -1876,6 +1=
888,14 @@ static int
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; hdcp2_authenticate_and_encrypt(struct intel_=
connector *connector)&nbsp; for
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; (i =3D 0; i &lt; tries &amp;&amp; !dig_port-=
&gt;hdcp_auth_status; i++) {&nbsp; ret =3D
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; hdcp2_authenticate_sink(connector);<o:p></o:=
p></p>
<p class=3D"MsoPlainText">&gt; &nbsp;if (!ret) {<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +ret =3D intel_hdcp_prepare_streams(connecto=
r);<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +if (ret) {<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +drm_dbg_kms(&amp;i915-&gt;drm,<o:p></o:p></=
p>
<p class=3D"MsoPlainText">&gt; +&nbsp;&nbsp;&nbsp; &quot;Prepare streams fa=
iled.(%d)\n&quot;,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +&nbsp;&nbsp;&nbsp; ret);<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +break;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +}<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; +<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; ret =3D<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; hdcp2_propagate_stream_management_info(conne=
ctor);<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; if (ret) {<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; drm_dbg_kms(&amp;i915-&gt;drm,<o:p></o=
:p></p>
<p class=3D"MsoPlainText">&gt; @@ -1921,9 +1941,7 @@ static int hdcp2_authe=
nticate_and_encrypt(struct<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_connector *connector)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; static int _intel_hdcp2_enable(struct =
intel_connector *connector)&nbsp; {
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -struct intel_digital_port *dig_port =3D <o:=
p></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_attached_dig_port(connector);<o:p></o:=
p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; struct drm_i915_private *i915 =3D to_i=
915(connector-&gt;base.dev); -struct
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; hdcp_port_data *data =3D &amp;dig_port-&gt;h=
dcp_port_data;&nbsp; struct intel_hdcp
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; *hdcp =3D &amp;connector-&gt;hdcp;&nbsp; int=
 ret;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; @@ -1931,16 +1949,6 @@ static int _intel_hdc=
p2_enable(struct
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; intel_connector *connector)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; connector-&gt;=
base.name, connector-&gt;base.base.id,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp-&gt;conte=
nt_type);<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -/* Stream which requires encryption */ -if =
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; (!intel_encoder_is_mst(intel_attached_encode=
r(connector))) {<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -data-&gt;k =3D 1;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -data-&gt;streams[0].stream_type =3D hdcp-&g=
t;content_type;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -} else {<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -ret =3D intel_hdcp_required_content_stream(=
dig_port);<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -if (ret)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -return ret;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -}<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; ret =3D hdcp2_authenticate_and_encrypt=
(connector);<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; if (ret) {<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; drm_dbg_kms(&amp;i915-&gt;drm, &quot;H=
DCP2 Type%d&nbsp; Enabling Failed.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; (%d)\n&quot;,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; --<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; 2.31.1<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN9PR11MB5305CF2D61AAD4A67A4977BEE3CF9BN9PR11MB5305namp_--
