Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7243D51995D
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 10:12:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FF5C10F50F;
	Wed,  4 May 2022 08:12:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A51010F528
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 08:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651651940; x=1683187940;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gMeA2wpIcHEbuyJ7vMQ5a+c4fYHmsINAImYAURwrqtk=;
 b=W/emzqdt4DFI2aTDmE2+PO6GVhJ9U3mumqeYUaVGCtiLrYvuX6Ct5NX5
 Q7hk+i4uXPC8H7Sf1wzhNtvG5SxD8VuaqwcYQnZSiw8CxI1TpNQA1RojT
 TQ2Hh+hkw0JA9/16ekaWMMKqzyvdbjBXVa1kV1y/YsAeewwrvJciR/BcX
 sTHvWP4WFSlwIF39vLHfwvnspdOkIzjGl67r5vr6w1y8oPcFQTY48G8Ds
 iMsvNRZwo1tsZR1kGKnj9fluF8G24X49ICkap7Ch9Jj4UMayW7fy9OnsS
 K7v4Vl+k5O8Q+2L9R8t9HR6PI+DeXJhCvd4Fe8acetBBK9eRpqEKUDmmg A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="267294590"
X-IronPort-AV: E=Sophos;i="5.91,197,1647327600"; d="scan'208";a="267294590"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 01:12:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,197,1647327600"; d="scan'208";a="584611923"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2022 01:12:16 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 4 May 2022 01:12:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 4 May 2022 01:12:16 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 4 May 2022 01:12:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DOnAEA6prpWyiXK++IvcynjeNPirUUq0M0YUfQu9hca3a/FZrxAx5/235uXzZovZronWWZct5gdIEVFvTZk17s4LV6oO1oDxzoOf/Yo0I54VxlEY+sd57KEF+dkXjlhMUStfaOiu8BQ2gaH31CcoobKOj4ybWZH6K3QeSXUuuJSz3+YYD+zA16C100UG1lj1Rsszgr/PyzsVN6HkU2fdyuFIUF+wQgF5hz0zxijyyf64bopDC3l5xS5PKJyghV2NA2s7gKL9H9ZlR/nJa6DrOCG+WVMSZgbTjyPGPhCalbfrwgmiXLH5aGtNSSX68TPyL39vqza7WftgvVPiAHufQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gMeA2wpIcHEbuyJ7vMQ5a+c4fYHmsINAImYAURwrqtk=;
 b=XoJ3SHb6AJALO+jOMoyYitUFNR1A/rIfc423jNfM6ncw5IycQSY8dDEB5VzxoFcDPnPism/5mEB4Sc5OHnqQ/5QvqLlyLUsUDnncaHZBBuyx9UxvJm/eJKDakmRsm6FbP0WxJ090zjOLIKuT4SnzdYBuu+uEA7V/z92Fu49JRYsBE5SpkdqFiTiVbMEqPNg/e69Yj6e6kWu42rF+LWpk7RmDlrRHfOQqOimeaVHte1K2I5YNHR+0GU60xh9t8UQL5M5Y29eROmndhpB0FbG26PTq/9DShWU04dD4hK54rwwJfl77EZvUaQbWl5K2Hz3/T63wrjGyCsuPX3EVndTrPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CY4PR11MB1654.namprd11.prod.outlook.com (2603:10b6:910:e::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.13; Wed, 4 May 2022 08:12:14 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::dc18:9af3:5549:4d3d]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::dc18:9af3:5549:4d3d%7]) with mapi id 15.20.5206.025; Wed, 4 May 2022
 08:12:14 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: warn about missing ->get_buf_trans
 initialization
Thread-Index: AQHYXsbaBHA1DtRj2USAM2/AqLzqk60OX3EQ
Date: Wed, 4 May 2022 08:12:13 +0000
Message-ID: <DM6PR11MB317752C55BD83E2B76CAD931BAC39@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220503082134.4128355-1-jani.nikula@intel.com>
In-Reply-To: <20220503082134.4128355-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f7ceb01-ccf6-4de8-ab12-08da2da5cbd4
x-ms-traffictypediagnostic: CY4PR11MB1654:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CY4PR11MB1654E955D430FD3F9ABCB294BAC39@CY4PR11MB1654.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uq0llVDBNoEdFxPBKTnoO4xtEGBs7ElbQjq64PrybyBxztzhMuaCXWdxvWSEW956Tj2btfeaVNlzRn1cdMJveHLjG/nfMvcReUcDOE9826cKu+xWnZQ/OxWs/X/tugofvwSaEOaDnpRFG6frupRxpTts/Hbcr/By8VbCED0/xGfw+l1XQj3oZbdaEwLsBsxsuKPBaoVEBpygnZNAHOP3Sw2zhrlIUUS+DX7t/KG/8Hw6GsSkrDY2FGm91W7waQlU6XrkR51SD0HEYwONzWTaBzgd7X1fRHHdBqgtnpLrWC+bg0kmIHJV3VC7GRv1OkIAVz/k6pr5XnKY9kDZhh47JGdgm7pfLLkg7ZhIYNFoPjPdXril1le8IM7h5dzbwBGQrnMbmQoD6w69avctfgYK4fHBEEGXgvG7aaJLO4tcG9iiCgGr8C3IgP/RocSEPfPJo3DT+id4x/W9qrIBCriR18W9ZVeOWZiFC49S1vwD92Vl8n9AD3DX7hvl6r66vlWVgURaXMEG2GAa1pdfmKX9lAbcxcemrCzTTvM1LXk4F/gBKFLXWT+WxpCrBnoiwDllnHc8voGcrUYYqj78ySiIM0UUBCQWgx4pyQHh+cdotEpskxhXkgjb9tvJcaESB1OUdSPzcWYbb8GvVDLTslwRc9N0USQDmR2aoy5NxNCt7p4qYTxP7s9vI00Jge0X3vhwZcA5/+IEoxzJRipU9wStDA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(38070700005)(4744005)(5660300002)(6506007)(9686003)(7696005)(53546011)(26005)(55236004)(2906002)(508600001)(8936002)(107886003)(83380400001)(186003)(71200400001)(122000001)(55016003)(33656002)(52536014)(86362001)(66946007)(76116006)(316002)(66476007)(66556008)(66446008)(8676002)(64756008)(4326008)(110136005)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pLXR8qAmQxN8QXxjf3wnQ37tnHb0MUZrX348VldS4IvzjPy2T6GO16KsusBV?=
 =?us-ascii?Q?l/TVxKcGm9Kf6rV0OMCQKEehiv7iEFxsWEOn3fC7/0alP7n1tjLKsYUiLrps?=
 =?us-ascii?Q?8awW7jb/XAYaE8BL9+t8MKKEb7TjpD5rYLlwSg7Ak3Xk51RQmvFuAZ2dffEw?=
 =?us-ascii?Q?OtdXR1X6vYuD33MZduPBg7LGcG4pANYzWzqSpHVSe9U8OtKzoiisel0ZcZ2L?=
 =?us-ascii?Q?IMsmExiTwz6sQE+xGlYksTmxyRDjz1VS63rhupsS5Sb9Nb6RBXIwnA5kmp5i?=
 =?us-ascii?Q?3thlqoQ0JW+OCi3qqnVo3++40jDz1o2ufqashIem3fdKtVdBZwCV/9Ba8y8P?=
 =?us-ascii?Q?VXbjmV9NCycPjjz5TB8vyhRkS9JkP4NqONrdzQTltDsLeN/j3HKg4stKVsaB?=
 =?us-ascii?Q?W3wE0QaDg87UYmhx7BWCd0tU2ToJeZHCguBApUQFON63RCwH5POmofz0RIjR?=
 =?us-ascii?Q?/NBJWxBu9fS29IBpl2Oco1jHwrX3lRkg1+eU+lseIfMstBy7/bcOi0BT5uMb?=
 =?us-ascii?Q?ld+Xn0PeIBJFuaKk0WV6mskl8oHQi1UiLiRwgw8vOynSuFQLCS9A1gFuZ6BN?=
 =?us-ascii?Q?0PMo5OFbuLCAicpdIrT0uBFClA7QM+883g0BYkO2sxgQdMD0/3LW1lhHSUEX?=
 =?us-ascii?Q?0ZA7a/MyyiUNnlV38ntZBUqr2rZ3fd3MD/OaC8/b7GXRhXDfaeP51W2MLBRb?=
 =?us-ascii?Q?OAv1ZsUGAt41RFjsP7SEUZ13Sa1GSFn01cKFSqFhlMmEuqu+br5HPTMvPohZ?=
 =?us-ascii?Q?nyLGivGGpkuAzxJFu5m8YKD2J2/pN0xTX4/X/3OWoKF91hfGltzId6atdoHE?=
 =?us-ascii?Q?gAyDgtShK3XK2wIUNu6or7lmaI53a5PSRglhFmfiXn4TuPIskJtKrrkOds8D?=
 =?us-ascii?Q?Iq8Gcj1CqlbYFU1SxNupzq90Hf7HNWjSkW3rwrIVpRg1vjKBsTCPfTzMjgqy?=
 =?us-ascii?Q?4th+NXRpU2yGMQpZSJ3vvSMDTT/KtRfreJmOLzP5r8hMNnZEFE/E5BVAYPJf?=
 =?us-ascii?Q?JTO6iusUj92aO43JRAQhM/zGGSk7msc1gNipowAh/Xemnzy+ZbbVL5OSgYrB?=
 =?us-ascii?Q?PVFzUCSJ35lQtLGxjE3kQcOyrL0hNl6nqhngbMQxUuJYokH1AQ8fIzqB1mm/?=
 =?us-ascii?Q?frFJUz/ZBJzGc9wv3DUHMK3lLsjD3kEX9QfQj1aWYgdvPUUPYUh8qCiyrKs9?=
 =?us-ascii?Q?Ieicw9UReUyw8uCrUjSe0w/vDKcaeZKx3RyziHvktekDKQT9IF8sbBlngWKW?=
 =?us-ascii?Q?J6HGDBz03ho7dSsC4+Fe18yRIC7FnzICb2ZUi2xmlrZRhz9joNYnsVqSkwcV?=
 =?us-ascii?Q?RdaXeDXna52bbGNbTegeLX9KnAdrzdVU07rH0NGWrwVivf4gBCo62EwpfHgk?=
 =?us-ascii?Q?2+JrW80J3/mso7ffXGmAQZBNmfhjESVRuuLA7mql2lM/9VGj/9en9d4HdRH/?=
 =?us-ascii?Q?YVrugW107VMxNR4gEsmcBb5XS3si/gnveaH4oY2ziKJLExlaLVIP29FmxnGr?=
 =?us-ascii?Q?ait2kflce31vwifqhNNzQKAJNeBGmrWHf+65LfubJxZD7d7sivKxyQqchKeL?=
 =?us-ascii?Q?M6U5BO8n4/o6moIj8mOi2ZCuI8ZcBSKzBdCm0FMSrAnTHF3659yNvcpqiMeP?=
 =?us-ascii?Q?gPaTjtGasmQ6Zqbyq5ZRe9R4Dp4m5LIMawoi3pcNK05HdPtDucI5AvxT0oop?=
 =?us-ascii?Q?zQ9sjBogoe/Gh3kPKT6qFFGzbJsy6CKhKOcNme5uo/OV1b0qZmN1icqLUuP7?=
 =?us-ascii?Q?N98C5dyzMg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f7ceb01-ccf6-4de8-ab12-08da2da5cbd4
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2022 08:12:13.8287 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9Y0fxJ8P41YcDPkHSBljrBDE5BEsOgqSOJaXNPiI7ftC1wpTcTH57Ns35z/NcpL0doyClLxq4HwYjvVg+x4kWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1654
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: warn about missing
 ->get_buf_trans initialization
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Tuesday, May 3, 2022 1:52 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH] drm/i915: warn about missing ->get_buf_trans
> initialization
>=20
> Make sure each DDI platform has sane ->get_buf_trans initialized.
>=20
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
