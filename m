Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39984A48DB5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 02:16:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5E9510EBCC;
	Fri, 28 Feb 2025 01:16:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OpDsDD4u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F284510EBCC;
 Fri, 28 Feb 2025 01:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740705388; x=1772241388;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=ysTSFzHF59Iw7wxXPRGkv0l1aVZmu7QzP3r5JsplGmw=;
 b=OpDsDD4u032WBe95fxCQ4ECpIY0jXoTf1uw54n8XOL7M6LWszAzderyN
 OdHX1ROtN2yw2vgW5XndYuYabCGtuVWB0z4K4tNgyW1UOVeTKXrWUKV/s
 XMeKwyWdbJZ8oyXsXtwEhjsR7BZ96vEjh/s7O+vB5K0nUWEcGIMcEwUTz
 OWAcIgFnskegSILU/WzMjunM5h4yPTzZx/hS+GW9toquBv2FSy3B2SonG
 lQ6S7W2lyFOOE/T1Y80rn5d5V4Nii4DWFbzOc1r88nxoR3ap7o4dgu/BC
 RhuQVtvzgjP+ZJJN6D1I0NcldDCsIQugBPAyPgYioxWAPpkVvu8abkjiW g==;
X-CSE-ConnectionGUID: rLj4U2DkRiyK9NHdHv0sZg==
X-CSE-MsgGUID: eeRAfs+KSr+jlfMDi9apGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="52259629"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="52259629"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 17:16:22 -0800
X-CSE-ConnectionGUID: 8IoUbqCtQVuLSioV0MVBBA==
X-CSE-MsgGUID: yKE9GByWSkWAQWZx+3UCTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="148112937"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 17:16:02 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Feb 2025 17:16:02 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 17:16:02 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 17:16:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S6NjN+SDM5Z4ML0v0uAaGy4Fyk4L2nXGNGmjy+ezC1OS37ftpUh4CzefAJu/qc59Ge9p5D4gE/Nct+2Tm1JiimZMsLGhAmnEwgOjdwruqRuHVyJMAWcUJ82/KFMACSq+8CbZGplNEABAnrqJrMtEtQ87C2Bk8L3c2e6zMlHaOM/YWveiJXGDeSDAchsHKIAtXx1VTTuFkMzUn8Xwc+9RY1wSZCtbn9hJ9IhXlJalpxy3mLiCByZU5CAHGjfK2+q0Il9QHXLVjJyDYPXATQ2BnIouLGcYKW0fWYdDsFheD1dxT53yDm5roeefxSzX77/Cjs9NkYR29jrWc4WrvMslLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bTa2pTeTr9fMxbsfZjN0eRYlvbu68Ef9TMD2JFzpvUo=;
 b=YtSrDKKPaPCsHiRG3gve7w3mkpGSb8xMsdbXMAx9NJ8pRFK7VupqlKnzF44kiFi4hd18olOas5BnLgONpAtPJgG9oyyddRTHdz9jmIOG8hUaAWYUWad4E63FkiyH6VPOCwhJVWOHgJco4ahoOi+ng6qTFNjt8EOo4Kt3tRLBjKbx8fXJj3CpJIePHs6Sv4Cr+pOq9g7278/zVvqaBvOPjYRpDbRmtfjKYKOJ9lZy9DpX7A8dKQV3kGnyUbCLam7UV8cxKjdKloKRDZiDOgrKq+v72hVYq2dmFrLp3j0rHnZwD0O9OruEL1PSU2FpsHiM1Yi7gmFoY0x9IRaX3IrZdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 by DS0PR11MB6326.namprd11.prod.outlook.com (2603:10b6:8:ce::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Fri, 28 Feb
 2025 01:15:58 +0000
Received: from PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::74e1:a7a3:bae7:9752]) by PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::74e1:a7a3:bae7:9752%5]) with mapi id 15.20.8489.019; Fri, 28 Feb 2025
 01:15:58 +0000
From: "Yu, Gareth" <gareth.yu@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Nikula,
 Jani" <jani.nikula@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Tseng, William" <william.tseng@intel.com>
Subject: Re: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI panels
Thread-Topic: Re: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI
 panels
Thread-Index: AduJfPfJJ3vcV17vRXKXC1gCoa4bjQ==
Date: Fri, 28 Feb 2025 01:15:58 +0000
Message-ID: <PH0PR11MB5128D19AD9DE0515EC3C8823E0CC2@PH0PR11MB5128.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5128:EE_|DS0PR11MB6326:EE_
x-ms-office365-filtering-correlation-id: 5c96e888-fb2a-43f4-886a-08dd57957515
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|4022899009|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zypp1qcXYshVKSKWxegS8Q+zctznZx+PoLF8gtFLV6tgd70NYTTXHQOqGQtR?=
 =?us-ascii?Q?FwavR+5NPzUak1ZnK7W52MkyQEG59CQ8+ukpOqmS8MNy9gma7rwcWEVkHBmV?=
 =?us-ascii?Q?+cOwrS7J8cEcrAG932xaBmX/wWhB/L6E4BcK2TdlQVxRn0UYxY0NgZVBGLPR?=
 =?us-ascii?Q?sk6Rkph44FA0vsncFVBTA+K4GGhmUTuaCtqETl9NPbMtyAXBb1hLH0GlbLIj?=
 =?us-ascii?Q?+ljnnYNeipGMkgMFe1azFmAFLnGCmnFM5Hzvp7Fjs78PE/WgeX0wcQzZZgYC?=
 =?us-ascii?Q?8UHSaDY00BpuiReyUYYbjpyWapHhuNO3ebXD4IWK/E5oy2XXrmxDXTqIC7lT?=
 =?us-ascii?Q?xar74WAuaiEaYDi9YV1XeFticUaqyf9UoNAptCor/92DvIBmgqK/MGKkOkz7?=
 =?us-ascii?Q?AKTDrZu5ZAC/Qx1GqCQXmrMRsrIwXnx05gkzRi0JH93RNOwo23EVUsML/cq3?=
 =?us-ascii?Q?EochlVppZAvnfn/sXIc+X53xbwi3NSWcbekIhKG2lehpLAyBs5Kv1sli2ZJ2?=
 =?us-ascii?Q?wLDPuglFuUgV3GKpaml1Obtv4ru046csys22TH88vf3WoctR6cYOC9qY40pd?=
 =?us-ascii?Q?GetKdQ8E5H7wTyeNrbe1fl+tDlwIf+UdFTKw12Ks+VWx5mn4wXNEXpRIyfF2?=
 =?us-ascii?Q?vj1fJIvVu94SoaDdcU7KalTjzA2OAMw80YT1hUaqgxzvK538iwmTVvU/s8Ff?=
 =?us-ascii?Q?0q4AMAPxtB2JXNCEgKDr+IPqk/7OtjoqBkp7J+UULhakKEjRgOWSBujd6Ve6?=
 =?us-ascii?Q?vf/sxtUFODB/rz93Xt/sopriIFbwM4LeDirhIVfngcw+ge+1DeVXS89trSLZ?=
 =?us-ascii?Q?ueWufZyQRrHk2FiybDtQFAeASeym6H+bqQczc5wsIkFqASvBZ0Td1GlR0E0S?=
 =?us-ascii?Q?Ayb4yNPviBmRNflRZ4AB/VqfISMRYri5OoyLN6ftf+9owVHmsO7mLr8/jZXU?=
 =?us-ascii?Q?eePBujAjW7GohnJHnOJSHarC0R1KIBD++enqZ3hfUiRZYavAcFsx13Lps6yV?=
 =?us-ascii?Q?RaIfstAE4IJf67jYWiY9HX3gfQh30nRldnL9jJ60Y6Ea+nJumSVe/IEtXYSf?=
 =?us-ascii?Q?SUe9IWOBactUBeII7RRtdigF2tGyTyHSAbxCoGyTOug9tDfDprxSMt7dCQws?=
 =?us-ascii?Q?jQMQd0uj2DPC4BKxyt/3vF/FKoCus6U3joIGuTqK8HhRwRqjEYVUd6NVYYMW?=
 =?us-ascii?Q?uIy8kqIOsU3SY3vrt+on3WcULGhov3jzjmA/bGK3kKXkAf1CTGCjQvDQS5g7?=
 =?us-ascii?Q?/zseC9qlwWsihE21n6BQTRfRJQWhnx9iEqcB3A0jMvcrurJzil9/+JYAtSBl?=
 =?us-ascii?Q?HtyH9uIiCPiTWNZvo6jQT0CIdfQL4qNfhnJPoOHaoA3qmadKmSxL0MukNoaW?=
 =?us-ascii?Q?WDny/bGuTQywsWrSke7fgOT+LXDl?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5128.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(4022899009)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sJh0kBbQccu6InMfAKrKM4U1YfjFviMMzwL5+ZEeT/5S+TVpbXt8pIuCiiab?=
 =?us-ascii?Q?YbHHE5UHIX8OHSkdIC01S+CIcetwPm6I0xHw5EcjWBPFW/1gN3jSn9Si4+Ev?=
 =?us-ascii?Q?FmWJxM6UFerDNF3L/fyXkjHf3ec13BEyBGpExBY2v6YsjOgC5zvNyDovl9zS?=
 =?us-ascii?Q?R4jslO/obXXEQcrEQWY9oZPk4nAIOmKdTT9gzlSIJuF5TCAcrXnP/2KyJIe6?=
 =?us-ascii?Q?uT6DMJafBCPLLJ+bJoheyNUZL1YMtSckjTaA//MqE9KRh2JXDqXOLQzTaGnY?=
 =?us-ascii?Q?kiBAFRmSNJvR1NPrw+AWqLo7DfFfkJ7k+PbncLlOojvmUNPP7anFOBeDLsyx?=
 =?us-ascii?Q?FoRI+DO8MUOnFcA+2EFttCjG9L2huiPHIA0SL/Oqh1wA4p5haTwqA1qgvQ3h?=
 =?us-ascii?Q?eEIu/LF9NbdICWjxQZHlxoO9lTRPbZyqhtmbc8skV8L8fOYPR8436Fu28mL+?=
 =?us-ascii?Q?oWhs1uqxLqkTxq/HFXQdmFp6xtV9rHTBv9MQ2ARS8Zg+dJHOyDI/WvtuG6M7?=
 =?us-ascii?Q?Q6OjLPbE0d18iRmfWWAb8hq7eZlq1sK5iqAV5YcPM0UDD5/qIrGDK6Z4+dJN?=
 =?us-ascii?Q?fqWwXPCBeWSolJt/KSYifDImqVi7hv6+YaXfNEWaMu4KHzDfRa5Rmel+dtYE?=
 =?us-ascii?Q?GZNp1uj5Zc03b93+nwOr7JGL6CO8+p+YEzxqy9K/YisRaZHCoHqKpK/rSf3Q?=
 =?us-ascii?Q?oFiS6XaiW5kgjx9cA/S4Rh4fMAqI85RbM4NQF85xi5sKxp/xIt52snGSW4fO?=
 =?us-ascii?Q?mcmva3Pm9954ILBM1tDKn9sqF3pxVDEud7XnpnbVkmT0TuFyAmvDJQVw/7f+?=
 =?us-ascii?Q?9RyuKbj5V8PpUakRszbp8NvHGOGQhKsXHHcbxWVkPV0m2iorgOoKOS/uthFq?=
 =?us-ascii?Q?yNsDpO2TSPviaS3hkeRsUMh2pP66G6Onn1j29eiizaM/tyutQbtogfowCfLj?=
 =?us-ascii?Q?XY8dELokX2P+u7T4ktm5ul4HP7pd5txqRe9rt/CIdI184En2QGAhc49ig1W8?=
 =?us-ascii?Q?lB2l01tTsCyqZLE7trbVXKw/SKLTm6kfZ/lUY33SE5ASSkjKReK1lOBJfxky?=
 =?us-ascii?Q?hc5hPnyo6I18mi0DCYCLVNG5SeXRaYDioDrhLcQYQPGuzeE3uiOYfikBEmGp?=
 =?us-ascii?Q?kcHZj/i8kTDpf0VaTv5eFJYRXcXQ8kv5opW+beSaF7ZT1ajhlEDa3/My+GRu?=
 =?us-ascii?Q?p8spT9JzDrfn2RclsprVDMKlX5E0s8Tosd2loFq3DMjCm0U9gwXdXT81zKxs?=
 =?us-ascii?Q?Lim4PkVME+SL8S7jAQSy6dPJOYIQuVRMlmCKClAyUErF/EVCC59sHqIc1Y8+?=
 =?us-ascii?Q?qDc3IOeLYEDuk3EgRtAcThPzj9vUIp56Ss0FRf81KUGKxbSMr6YxzXuEodVz?=
 =?us-ascii?Q?pUuzW8sc7QzpVkwVvJ1m1xHLesYF/zCXfTCaqQXlFfMxolQL6suHcHfQSxd4?=
 =?us-ascii?Q?OfUEY5GlrVQ/LpburOgpGU9fxQuksAhAwPHqvJobV5XQllX+dGTqiJClI5x9?=
 =?us-ascii?Q?TCqoyUu5atso9+WmRAu0xIBQepBnihSwqR1zsxu3p/VH9cr381bgGC93eMep?=
 =?us-ascii?Q?N3mHr6o82j21NK69V1X6QKjPZlvfe8B9mVogP8jR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5128.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c96e888-fb2a-43f4-886a-08dd57957515
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2025 01:15:58.2238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qf14l/LPsNEICGcJqWoWRCZ9ShijMz9RGgcbnkRpiE2GSggwuTdMsyZNn4BRfsba9nowpNPgqy9REPUTxsYgZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6326
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

> From mboxrd@z Thu Jan  1 00:00:00 1970
> Return-Path: mailto:intel-xe-bounces@lists.freedesktop.org
> X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
> 	aws-us-west-2-korg-lkml-1.web.codeaurora.org
> Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.17=
7])
> 	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
> 	(No client certificate requested)
> 	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3D23C19F2E
> 	for mailto:intel-xe@archiver.kernel.org; Thu, 27 Feb 2025 11:26:56 +0000=
 (UTC)
> Received: from gabe.freedesktop.org (localhost [127.0.0.1])
> 	by gabe.freedesktop.org (Postfix) with ESMTP id A7C1C10EAB7;
> 	Thu, 27 Feb 2025 11:26:56 +0000 (UTC)
> Authentication-Results: gabe.freedesktop.org;
> 	dkim=3Dpass (2048-bit key; unprotected) header.d=3Dintel.com mailto:head=
er.i=3D@intel.com header.b=3D"MY6Bt0hC";
> 	dkim-atps=3Dneutral
> Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
>  by gabe.freedesktop.org (Postfix) with ESMTPS id A87DB10EA9E;
>  Thu, 27 Feb 2025 11:26:55 +0000 (UTC)
> DKIM-Signature: v=3D1; a=3Drsa-sha256; c=3Drelaxed/simple;
>  d=3Dintel.com; mailto:i=3D@intel.com; q=3Ddns/txt; s=3DIntel;
>  t=3D1740655616; x=3D1772191616;
>  h=3Dfrom:to:cc:subject:date:message-id:mime-version:
>  content-transfer-encoding;
>  bh=3D8+o+KH5SGXJL9pbefqym6H7zNpSc5021IPN/PdKwNsU=3D;
>  b=3DMY6Bt0hCjt+GFDT82nKYuYZ8t3ShCcp4URQO/YXiWFVIhZbAZpbiMYzZ
>  dpzC9aG2zCv1V3KglhDw6BgmJjGcnY/GDf0KD0me4MN1098RLXCbY3Zlo
>  g68++M+uiF699gmgAasdx1BWFkcYysaszs8DBcyyFE7zNw7OM9f6Q5dzD
>  VPmG6XxflXUYU7Mpij3Wn8vBQ9DPqwXzbPy1Iv5Ojis2Rb5CmpnP82HWK
>  SJU6CUlgcuF1b7d0XTyBkYaQ/KjmdRVNsHW8cSMLvpzum54UtY2cmsrM3
>  dCeE+isV4RtwPDaWmX1SeEF9F7Y4cL+9vDj4NTM2INZqCfAY+UCM4aKiZ Q=3D=3D;
> X-CSE-ConnectionGUID: gR/d5ikPS82kkQ2JSyF2KA=3D=3D
> X-CSE-MsgGUID: GUC8x5VDRo+UNdtKbxA6/Q=3D=3D
> X-IronPort-AV: E=3DMcAfee;i=3D"6700,10204,11357"; a=3D"52527215"
> X-IronPort-AV: E=3DSophos;i=3D"6.13,319,1732608000"; d=3D"scan'208";a=3D"=
52527215"
> Received: from orviesa001.jf.intel.com ([10.64.159.141])
>  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
>  27 Feb 2025 03:26:56 -0800
> X-CSE-ConnectionGUID: mUJY05jTSP2Aj3LHisZ5pw=3D=3D
> X-CSE-MsgGUID: TtB54KpmQjOcHenFYonybQ=3D=3D
> X-ExtLoop1: 1
> X-IronPort-AV: E=3DSophos;i=3D"6.12,224,1728975600"; d=3D"scan'208";a=3D"=
154180517"
> Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
>  by orviesa001.jf.intel.com with ESMTP; 27 Feb 2025 03:26:53 -0800
> From: Suraj Kandpal mailto:suraj.kandpal@intel.com
> To: mailto:intel-xe@lists.freedesktop.org,
> 	mailto:intel-gfx@lists.freedesktop.org
> Cc: mailto:ankit.k.nautiyal@intel.com, mailto:uma.shankar@intel.com, mail=
to:william.tseng@intel.com,
>  mailto:jani.nikula@intel.com, Suraj Kandpal mailto:suraj.kandpal@intel.c=
om
> Subject: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI panels
> Date: Thu, 27 Feb 2025 16:56:54 +0530
> Message-Id: mailto:20250227112654.279160-1-suraj.kandpal@intel.com
> X-Mailer: git-send-email 2.34.1
> MIME-Version: 1.0
> Content-Transfer-Encoding: 8bit
> X-BeenThere: mailto:intel-xe@lists.freedesktop.org
> X-Mailman-Version: 2.1.29
> Precedence: list
> List-Id: Intel Xe graphics driver <intel-xe.lists.freedesktop.org>
> List-Unsubscribe: https://lists.freedesktop.org/mailman/options/intel-xe,
>  mailto:intel-xe-request@lists.freedesktop.org?subject=3Dunsubscribe
> List-Archive: https://lists.freedesktop.org/archives/intel-xe
> List-Post: mailto:intel-xe@lists.freedesktop.org
> List-Help: mailto:intel-xe-request@lists.freedesktop.org?subject=3Dhelp
> List-Subscribe: https://lists.freedesktop.org/mailman/listinfo/intel-xe,
>  mailto:intel-xe-request@lists.freedesktop.org?subject=3Dsubscribe
> Errors-To: mailto:intel-xe-bounces@lists.freedesktop.org
> Sender: "Intel-xe" mailto:intel-xe-bounces@lists.freedesktop.org
>=20
> Some DSI panel vendors end up hardcoding PPS params because of which
> it does not listen to the params sent from the source. We use the
> default config tables for DSI panels when using DSC 1.1 rather than
> calculate our own rc parameters.
>=20
> --v2
> -Use intel_crtc_has_type [Jani]
>=20
> --v3
> -Add Signed-off-by from William too [Ankit]
>=20
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719
> Signed-off-by: Suraj Kandpal mailto:suraj.kandpal@intel.com
> Signed-off-by: William Tseng mailto:william.tseng@intel.com
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/=
i915/display/intel_vdsc.c
> index 6e7151346382..affe9913f1ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -320,7 +320,9 @@ int intel_dsc_compute_params(struct intel_crtc_state =
*pipe_config)
>  	 * upto uncompressed bpp-1, hence add calculations for all the rc
>  	 * parameters
>  	 */
> -	if (DISPLAY_VER(dev_priv) >=3D 13) {
> +	if (DISPLAY_VER(dev_priv) >=3D 13 &&

Please change to "if (DISPLAY_VER(dev_priv) >=3D 14 &&" because MTL begins =
to support DSC 1.2a according bspec 49259.

> +	    (vdsc_cfg->dsc_version_minor !=3D 1 ||
> +	     intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DSI))) {
>  		calculate_rc_params(vdsc_cfg);
>  	} else {
>  		if ((compressed_bpp =3D=3D 8 ||
> --=20
> 2.34.1


