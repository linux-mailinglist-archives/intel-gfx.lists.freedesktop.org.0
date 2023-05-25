Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 804DB710F0C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 May 2023 17:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0A9410E04C;
	Thu, 25 May 2023 15:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EFA510E04C
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 May 2023 15:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685027081; x=1716563081;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=9ABtE7OqAesRxKsntOuGvV8Tv79OI0SOsgbMwMCDNG8=;
 b=kyRZP1C5lCeOcMQv3T+nT0I1BsZ8ge5Ulh6SigkZUhXm8r3eyq4QK6KN
 zu87S+5N0gRUALckH4jUBaWnWW+IcdDhqi2TOFm9iOc2UVvEGpOQ+GXsH
 bwiE9lahqDIlBsLt9pcx3zGybr7iqX1l3rY68H1StfSZqV8ld5g5CmzOe
 Ikph+0w3V8hAuFvBGFjPSc4Khp8QG7GbtYz6Fh3n7YTpfx3qhFBfEn/JU
 CtyMmlt7S74E3jb+ke1gObepgqvLr/0xzhYJQUpgCiy8B5PUqE0szyMHy
 WIaeosYo0RCmJfNOuvBh6MhTLM33rZF8yY5btGRGrwpsj4ij1gbDi0dfu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="338507217"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; 
 d="scan'208,217";a="338507217"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 08:03:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="817149135"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; 
 d="scan'208,217";a="817149135"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 25 May 2023 08:03:44 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 25 May 2023 08:03:43 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 25 May 2023 08:03:43 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 25 May 2023 08:03:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eF13zMUjlT/k7vAqrjAeL6slSCpA3AVRBl/mhWkZ/EMZiAmz15oZVPbt5dsmi4qq/JPtMFDtEmOgMO2nbeU90aWASMTgFc86nWhQzrnMfXU3xkfkJKkoXfMVSZsc1ER/k0QMEgJDRDqo/sIrXmw65OhNyLnVvEXZLjJCoAFvluFvHmEScrEVLnP8bgYtbbrY+uNtrMuZ5LkQXD/KXkH+uFtSTdhT/r3GxNdTkW02mf5/Xub9IHRcXAjrl1IHz/zZtY4AlizFbqO6wxsI+qTxwy+kM6QWEnJehCbqxAqV24OzYvinvoytDYWuyvOsFkTWCVVl/uScUdknQFRid0Bnrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tromPCjd+jBh66Xr6ESJnevxcQbd63AYDNhL6MVtbWU=;
 b=WTNclbLjD8Qf40Y5Kdt2TcyykMV9IaPXlk78kaWqERI5S4Myxzr3Xo2pCO6+c3CJn6YkKBygAMB/bB99K1uDcUeaFaBH77PljeAypb/i2GZIvBnFUnbl2EXrJexPDLY1Kd7B/Hp8bRNsV8m5mKIzx4ak03fraE5nPCQFDRx+w233uL3ngiQIgCYGkZrPl5zlNvePZsNCt5jQy/+BPa1TMLFlVqmzK09V3vruyI1cUIJy1EHZGQREvbg5ajsLcjb9VcOdaZuaT4Co2xpoCPGZyM3TUSRKXzKXrW3xR/8ZTfmBOT2bBsAZTMfTuAsdnDterBLEcGXWFPhQCmZJxT8QCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by PH8PR11MB7141.namprd11.prod.outlook.com (2603:10b6:510:22f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.17; Thu, 25 May
 2023 15:03:41 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::79ad:e9c0:80ea:201e]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::79ad:e9c0:80ea:201e%7]) with mapi id 15.20.6433.015; Thu, 25 May 2023
 15:03:41 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v8 7/7] drm/i915/mtl: Add support for PM DEMAND
Thread-Index: AQHZjxIp1YWFI3is4UqLKT/IWoCqoa9rDH8JgAAIMACAAADfJQ==
Date: Thu, 25 May 2023 15:03:41 +0000
Message-ID: <CO1PR11MB496207E43E8B8454F2E73290F6469@CO1PR11MB4962.namprd11.prod.outlook.com>
References: <20230524230342.411273-1-vinod.govindapillai@intel.com>
 <20230524230342.411273-8-vinod.govindapillai@intel.com>
 <168502360445.3319.5262709654872376821@gjsousa-mobl2>
 <CO1PR11MB49622FFEE558583ACB8CD5BFF6469@CO1PR11MB4962.namprd11.prod.outlook.com>
 <168502673063.3319.14912816760874614033@gjsousa-mobl2>
In-Reply-To: <168502673063.3319.14912816760874614033@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|PH8PR11MB7141:EE_
x-ms-office365-filtering-correlation-id: 87e085bd-ae75-43d5-1985-08db5d313a35
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LEO/DwYE4tihII+Zw67JpYNNd1AyKJLmV/5pXnubpWcb/E1FWxcy2qnYndocWHejyaf5ETSMlf9C9O0cVFYCQFgZlW34VTqH+WHfWf9QdHAFhaLew3AiqhFrclUR2qoX43FTdBBlWCx+s+ngkIyDgD8JNQ9CZ1wRVFDxruwsJxGAkWmzNzQdvxpAUG1qx5Q7I8gSeqHFZbviB8sRCu0/oLbsmeRXoFUuM6EzP3SvXzprZ9Muaiwlbxbg5GxN0l+8vyhwYY/45Yi4EUBduWPohaVmJTx8Zqugkc+D7wPpzKqFfcSEiFP1ALDnzHRN5+kI4ORGXpl1MyGbwf8B651O5TNggeyFKx38rwbS69x12WFZkxdbcjJcZKgWRx5r/kPx0/yE+eB2EIPIZUKNjBN5KOTuSokOM3MgtpPj4IDns/sR6GeS0Vcu12SEuPZktobp2vXC0/ZsicI+Wg29QqNKyHL3Wc+/TSckWYm6H8tepul8v+R+Lt5ZjXE86RzsbHy6HkZ+/3lzVBIxCcB+MHsrySO8yqFbkS/ddVb9m+luz5JcnisQSerW5WiOKUkf0AeciU0YwdSvE1iVDyzixd2puqyZXCGOKJ1dKTUSYObtOewDaLGp1jrX4qmPRezovBTD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(376002)(39860400002)(346002)(396003)(451199021)(38070700005)(33656002)(86362001)(110136005)(54906003)(4326008)(316002)(91956017)(64756008)(66946007)(66556008)(66476007)(66446008)(76116006)(478600001)(7696005)(71200400001)(55016003)(2906002)(8936002)(8676002)(5660300002)(41300700001)(52536014)(38100700002)(82960400001)(53546011)(9686003)(6506007)(26005)(107886003)(186003)(83380400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bUnl3rnhE6v602qZ5XzU9XEfkTNO5BsrV1leORRERawO0925lj6jx8P7GPEr?=
 =?us-ascii?Q?xJlZQdIdxKUbxuRa2Ecfao5eZFjIflI9/J4a4MLzb5ztMNFEftiAs+49z6/e?=
 =?us-ascii?Q?eCosj1uIvaU0q0OBny5mZqLWpZc5/V/ddOLZocY7tR+xNX2UG6nHIEambl9B?=
 =?us-ascii?Q?AwaZguSG1UYmldJalF3IjSfGJ27qNO5Qtoad1isDHSLPJrL95Xlg3yXUpfir?=
 =?us-ascii?Q?XnMlRaTwf4vD4r+aO0Ddd6ubgR++EedjHSQpGsbM1R+S35u8TjugwH1ZnKDU?=
 =?us-ascii?Q?9bh55pQ7ilxmKsuuALte4qNI6Iw5MeOWECz055kTTLNeUJSRKGCc8S+LDHjf?=
 =?us-ascii?Q?35zpz931FklEM1ZSPPh2SyM4jSqVBo+GjoKIAJg4W8FKSGeeNthAj5eGqL5V?=
 =?us-ascii?Q?JAdzPL2PgTc3k1h65DPZysjPjMJjqHiuLr2aZgEp0Q8h5vP6WjoXDMKL+9me?=
 =?us-ascii?Q?MKAfOp8PXK/G2Fy4EyoBhZrJBvN0LPTBlH+xWmvTNdFwtmaMTfF7KIJq2kgs?=
 =?us-ascii?Q?18S0jUNB196S6f7lfHG3mNjdBdamstW2JyF0ogvDKdv6kD8PN2RGcVmFWFEQ?=
 =?us-ascii?Q?jfb2wSSl2Zb/tBa6i+w0MGZwFp9rmsg45TxojEIXRxRu9ng6GCAhKwIUF6kJ?=
 =?us-ascii?Q?S3tyPdBAnrqiZyg8XdqJkpfBbIWOfeZLNmmBC5Pkel8jzNXKpIX5tyUWJf7G?=
 =?us-ascii?Q?LDQ4IrCl+Uq9FWhg9J6VpZ3jmQwmIMY5/12A2F+rJ4uEkYO3R2cx40uxHvpO?=
 =?us-ascii?Q?bX+iq1aThhY5u2CtdAR/oKuvHiJR8v4slQVVBwhwKdBkl+XIQnlFuu9dHaF9?=
 =?us-ascii?Q?xNRGAsRKqOdIo66OoLzvg1TfAHEIuLbm02bovifRGxJo49Te1vfXZI8jxNBj?=
 =?us-ascii?Q?DT2EGmsYBbWkdrxHHVRgFZmnqZ2V/k0Q+yxga33jl1We0hpkH8jr/FAxgdKu?=
 =?us-ascii?Q?bfaRZHGMAVlKwA1qYThxNY0tnQmkXNwB2OVCawPUk01CtxttUmf4Vcs5iuJB?=
 =?us-ascii?Q?E5M02e4Xe11pbDSxyGnXse/pvawO9sveMeftvMDD5t5cb7OVWczv1a+2FZ9U?=
 =?us-ascii?Q?iuaKYJYUv86/ZrYbpk6jnstCi+/fe55M3WZtnL93ocU5eV2rCLpTfsA1OXAo?=
 =?us-ascii?Q?gkFmdj60bmWZN9Vo8dEg+Vn8s2priRc5ywmiDvzHI5aJsALkLc0l3t+g/P8D?=
 =?us-ascii?Q?2Tj1b54bYLPtYP3igMlNDF2klPdfWSger9wL3lRT2uldyxIKDhGQhtG5089+?=
 =?us-ascii?Q?nD1ft4HaIVgtvNjIRqP794FL5PmcTwOJqvEpZ9QmpwOLwIPUR3cdNP1Iy5Wa?=
 =?us-ascii?Q?VMoHVhteyKcPcUIU9SbCo9jSLlC65g97I071yszRBNkNS8bypzGnmuYhnfUD?=
 =?us-ascii?Q?vqn0k+tyAt+KKtqXnXyZdYerRQhKCz3/c0P9RLuxr81bgAnT08u2SMq7gfpP?=
 =?us-ascii?Q?3XBNgPDmbuEHOmKv06859hULrVVaRl9or+TtQIpKGXLxLcoGAWiZsBZAU2qC?=
 =?us-ascii?Q?8lB//cWxlWdIyV/p6aeedjWmgIK4bBqn3DuRTWeuVOlFjRh88cfNYwAn1cjX?=
 =?us-ascii?Q?M5cqvPLAzt1gkbFAi203T/mdi4aTxQOz8zd2Rh/uEDvAdql80YFnAXNnKSu1?=
 =?us-ascii?Q?hFl4XWQYRqd9lp628Mo47bM=3D?=
Content-Type: multipart/alternative;
 boundary="_000_CO1PR11MB496207E43E8B8454F2E73290F6469CO1PR11MB4962namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87e085bd-ae75-43d5-1985-08db5d313a35
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2023 15:03:41.4415 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zIoTQFvzUUvKEsHPNHFTwccTSWQnwoAm3ZSUXmieLBRupxaz8qwcPnxMWJ0GPxaPRvqCiGSS7KksuSDz3GsIe54SJL5lYXafXaKWzGSd0ug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7141
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 7/7] drm/i915/mtl: Add support for PM
 DEMAND
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_000_CO1PR11MB496207E43E8B8454F2E73290F6469CO1PR11MB4962namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

I think so far with my trials port clock changes in sync with phys. As pmde=
mand atomic check is called many times, I don't think optimizing is bad.

Br
Vinod

________________________________
From: Sousa, Gustavo <gustavo.sousa@intel.com>
Sent: Thursday, 25 May 2023, 17:58
To: Govindapillai, Vinod <vinod.govindapillai@intel.com>; intel-gfx@lists.f=
reedesktop.org <intel-gfx@lists.freedesktop.org>
Cc: Syrjala, Ville <ville.syrjala@intel.com>; Lisovskiy, Stanislav <stanisl=
av.lisovskiy@intel.com>; Kahola, Mika <mika.kahola@intel.com>; Saarinen, Ja=
ni <jani.saarinen@intel.com>
Subject: Re: [PATCH v8 7/7] drm/i915/mtl: Add support for PM DEMAND

Quoting Govindapillai, Vinod (2023-05-25 11:31:05-03:00)
>   Hi
>
> (...)
>
>   Can only the phys change without impacting other parameters here?

Not sure to be honest, but, if so, I think we would covering cases like
that with the proposed change. IMO, if we depend on PHYs being
active/non-active, we should track that to in pmdemand_needs_update() be
safe.

One scenario I could think of is an update to switch connectors while
keeping current pipe configuration.

--
Gustavo Sousa


--_000_CO1PR11MB496207E43E8B8454F2E73290F6469CO1PR11MB4962namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"auto">Hi</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">I think so far with my trials port clock changes in sync =
with phys. As pmdemand atomic check is called many times, I don't think opt=
imizing is bad.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Br</div>
<div dir=3D"auto">Vinod</div>
<div id=3D"mail-editor-reference-message-container" dir=3D"auto"><br>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" style=3D"font-size: 11pt;"><strong>From:</strong>=
 Sousa, Gustavo &lt;gustavo.sousa@intel.com&gt;<br>
<strong>Sent:</strong> Thursday, 25 May 2023, 17:58<br>
<strong>To:</strong> Govindapillai, Vinod &lt;vinod.govindapillai@intel.com=
&gt;; intel-gfx@lists.freedesktop.org &lt;intel-gfx@lists.freedesktop.org&g=
t;<br>
<strong>Cc:</strong> Syrjala, Ville &lt;ville.syrjala@intel.com&gt;; Lisovs=
kiy, Stanislav &lt;stanislav.lisovskiy@intel.com&gt;; Kahola, Mika &lt;mika=
.kahola@intel.com&gt;; Saarinen, Jani &lt;jani.saarinen@intel.com&gt;<br>
<strong>Subject:</strong> Re: [PATCH v8 7/7] drm/i915/mtl: Add support for =
PM DEMAND<br>
</div>
<br>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Quoting Govindapillai, Vinod (2023-05-25 11:31:05-=
03:00)<br>
&gt;&nbsp;&nbsp; Hi<br>
&gt;<br>
&gt; (...)<br>
&gt;<br>
&gt;&nbsp;&nbsp; Can only the phys change without impacting other parameter=
s here?<br>
<br>
Not sure to be honest, but, if so, I think we would covering cases like<br>
that with the proposed change. IMO, if we depend on PHYs being<br>
active/non-active, we should track that to in pmdemand_needs_update() be<br=
>
safe.<br>
<br>
One scenario I could think of is an update to switch connectors while<br>
keeping current pipe configuration.<br>
<br>
--<br>
Gustavo Sousa<br>
</div>
</span></font><br>
</div>
</body>
</html>

--_000_CO1PR11MB496207E43E8B8454F2E73290F6469CO1PR11MB4962namp_--
