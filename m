Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5B495B1D6
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 11:38:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB90D10E07C;
	Thu, 22 Aug 2024 09:38:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d6ISv36A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9B7210E07C
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 09:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724319512; x=1755855512;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NnfSIBwMi37YSKHDJSlo0iGgaUUz7CtAFtVp3ihZmwI=;
 b=d6ISv36ATe2dH3wpA/Y/wLaftPJhajA2kTD9HHvY9JSxpjYZmlIDskwa
 rSBrTtkCgQhnuVzviQPqSSYxr0paq1h5nDTKRQ9lvAUl9p/2iHATrGaS2
 KaKvCuLvnGJhc1lCjTVF7E/c1l79ixP0wDVISSCtqoKfflrthVKROfer/
 wv88MAH8oK95jeVytue/oFJi40KRrzMI33V3Dm9yjTYOtXMZ0CzwU4sQr
 I/GBhfafpVuaTBvJRFFpqjoMX6cyJOD0w/1f3uDbe91UsnOXDLpLLJjVI
 GaoPBjuoDTeWfTGxzMg/PztdWU/MahqNmrs/lx6fBsuv7odneIOPQLL6K Q==;
X-CSE-ConnectionGUID: vixhhN8eQQmBjPekZF6d+Q==
X-CSE-MsgGUID: khtlp6fzTv2d86pbr0mAWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="33340266"
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="33340266"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 02:38:32 -0700
X-CSE-ConnectionGUID: C1l1XDjASGumXhMgKFKUlA==
X-CSE-MsgGUID: tcdLwiKpSsCRSep+I5Yhew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="61414400"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 02:38:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 02:38:31 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 02:38:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 02:38:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 02:38:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lsIg9aebqsdOt349IZfCgNsT9bdharO6JrYCuidVcVkezbtBpBD437JYo3VkwA9Hn3SJD91uYzZfN6yQSw53JHpOY4Cd4H8MlRMeGPNxl1t//umqt+J1gWuFm6ydufxlLffkyV6LXzRfHpwBUIuOicUVZ7gZBANaNvJV4J8k3aGdSadn5LIsMZiaommSAPJgkIJnzpMZg8/SubQ3lAwhRKLl2bYqd2GevH++wvkWsJNLgUlwwU873h4RxjemgvhSelXqvxm8JNNjYOpjgD8D2YI6gEykHG9NL7S+iu3v6o7e5LOxWEKcsIZrOnTFLioilhwgIalsgbRn2q0piGBb5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NlbBaEIBoMboDN3tz1dagdaKxrFgRiNmrU2oe5BHEAc=;
 b=C9gaGQqZ/NT74R8/mIQpj+mdCtpYINNa+XUYajdGbyC0rUPDa+3nsmIWffUz+2NBep0aLl2nFRxeCF0cNMAcTAM74AoJQYSThh8lFRozly+Tjpl12Djur0LR1MxD3GdLrQ2GKkGTsFUYqA4xIh8Eb6GpqydLG9mjZ1wvs+IF5mUb4PgH+9CMwPfg0ssWDlr1uAsqGuIL2UZoSsEDaBimVEFIr5A1nyQ3SMh9yZQyy1ySWAi+dVdgO6HqG7q2Ybg8dC6KzJ8ofWl5lQOS/NM95QS1sXhh5pYbbgVMGCGDu0g36557jnx0v0LAIwLHM3rpVaUIAIE2eUOGaGEs+Qkpng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by SA3PR11MB7436.namprd11.prod.outlook.com (2603:10b6:806:307::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Thu, 22 Aug
 2024 09:38:29 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7875.016; Thu, 22 Aug 2024
 09:38:28 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/dp_mst: Fix MST state after a sink reset
Thread-Topic: [PATCH] drm/i915/dp_mst: Fix MST state after a sink reset
Thread-Index: AQHa3eRMd9eF3FNtoU2NFHLfandokbIGD2eAgAAFKYCALR0x8A==
Date: Thu, 22 Aug 2024 09:38:28 +0000
Message-ID: <MW4PR11MB6761B0D1FD74C0F0191EA188E38F2@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240724161223.2291853-1-imre.deak@intel.com>
 <87y15qiwv2.fsf@intel.com> <ZqEudcPRiR00f6XD@ideak-desk.fi.intel.com>
In-Reply-To: <ZqEudcPRiR00f6XD@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|SA3PR11MB7436:EE_
x-ms-office365-filtering-correlation-id: 9a7f2396-5ba3-4991-3505-08dcc28e2dad
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?8EEjV21RrGcTlQhPldTw09GJnkqV3VrF4OIImFCa+aeO8vcQyxg0CGz07uJU?=
 =?us-ascii?Q?faUVPs3LJ0+oKbg0zYO4ZD+7p6t/IkV/1KPXneOFGYyDkuLX5T+EJCNfrl7t?=
 =?us-ascii?Q?smEb//m32Vw8hC/9Y5tsAQvstfh2RxA80QWjvh4pRKNoDnBCBXzwz2PIDZqn?=
 =?us-ascii?Q?tGGXHY3N4fNMmeDPbxhcuJwf575dyPh4g835U/51uYJ17xmzcahfmbLQCtJf?=
 =?us-ascii?Q?JRfNsPOoewfv5QBfvSxeg6DSUCgvIQZCCkuy9s8P6FUSga/YAh29sBdv6eMP?=
 =?us-ascii?Q?2ohqN9LzzO8YFSgfqA+40zv+WSr/xYOQnYjD450vA1LZ7Yvx8U2O0ucSmZLf?=
 =?us-ascii?Q?KTT3kkEdh+1aPFkaiv6eJOIY6tiN6YS90R1yjI4Ichy37VGrbOIohLDeneED?=
 =?us-ascii?Q?9P/wOq16bWBErCAjrCRV5WHb761NuFSnKgaMOoNgRaNP1Bcm+yHeyk4Y+ZfP?=
 =?us-ascii?Q?X39QUbdgSNFS4bc3Uci6/rf7EScNw8YQ2ZIlpLiEF9JHn4I2pHrxFUVTdshn?=
 =?us-ascii?Q?Fxh1CcuZa1gzvNVnyAtJUVpYmAwAK9rg5ga3os7mrhMfDXTnpGNnF/7IRP7M?=
 =?us-ascii?Q?7oPUwnSJf/732zYERdwPSOzIp0R2Jk4aESWV+tHMUGZI5MbkLWc3hPmCdL8r?=
 =?us-ascii?Q?+n4CVTGUqpqGR1HV6dQJf+v/HxdqDROZc4sOCZVWUFvPd8tPQTNglRk2bK5p?=
 =?us-ascii?Q?5SHk7+aza4Med0+jylz5UC61kP5zsn1WEzBM+J1SiZ+Gyvyq6pyr9UvL0CZW?=
 =?us-ascii?Q?D7Sv6repJMOFPbQ5TBzG069PT0rC1u8+88A6enHguyN5LZQ4db+Jh6n8Yd64?=
 =?us-ascii?Q?I85BLD5sZxZH5TM0zpaBCwuuSDu0NNsX061JB1TrftCtrVjR4c5qzuiM2+cA?=
 =?us-ascii?Q?EiOT9QoqipKGvvsB0BIqSaTlwCHskb3czxQYqwBflZWD3vyPSU8GZMslsktY?=
 =?us-ascii?Q?vC0YlmhZbioBzwlNDeiiOOsy7pUeYS7urcCBQ5vUr8qwi1CyVPpgQo3/JPDf?=
 =?us-ascii?Q?l5mhQdGTIkhgsk31g31Du2Bg38Nqdyle9evMVdgELjhU8BATDI0tZI7Dm1Jx?=
 =?us-ascii?Q?3ThejVIYAAtYSfmxyUoiCOcxckekyKIKdAaIjGWLRW3oa683O2pQOBkSPrzh?=
 =?us-ascii?Q?THsG5xNE5inSsDWTaaCjSsCvb1t91NPi/LxlJ69uPEFnAfLa1oQCGj9qrEvz?=
 =?us-ascii?Q?HxOSSWzN+Hyp3iTNVsr75EcXW3R/IMxNsGZf0FXaHti+pYHofg7S07U49WN3?=
 =?us-ascii?Q?86SDYqOzMMXZ8BK7UVF5tmXPeAdbp7PcjpxDppzwYFJ8Q+zHciMQv/arQtLu?=
 =?us-ascii?Q?3RJZMzRO+KKAgw1H5T0zEfCizhGCQtJE7lCuGJxhQMa/AcYsvobWI9GbHrWT?=
 =?us-ascii?Q?qAEob2Q=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9/BFDSe6BhrNuq0/gJKQTBXVMX3CVP8lCzEc1YPRDSiSoF7dw/k6/Rr7yENL?=
 =?us-ascii?Q?QYuTECYRHSyw2gGtaGUxTtxxzZAbzcGXOP0UJhyRObJQwqEQiFXmb7g7HUZG?=
 =?us-ascii?Q?wdvYwebVT9J/BBXZawFFcXQKPoxJAZWCak7odwt9ijPlRinsfdXNj64Y2fHF?=
 =?us-ascii?Q?yCygOoV4RpkxAMo9xYR5N0YnquAjZsU77/PG/NHWN1Fpz6KYiLEBwwtsxUqp?=
 =?us-ascii?Q?YH5Th6XbrlNuiUynaJt8gdd1hFzcBElXR0Zis+WROnOeMy7kD9XXCRqCYOMO?=
 =?us-ascii?Q?tEocz7Cv+IvdkSxhxVtS7xbfqCtL9h+MDl6EATJ01bnRU2v/3EeyCYI2Tn96?=
 =?us-ascii?Q?C98s8Arm3hFXRu+JIJ2ON5EzA1uiW8sqn82T4T39XN+n/PyJKTTxVjkCAEXj?=
 =?us-ascii?Q?r8kwd8gS5jZUyi+Lp3hp6cnxG0WZFZeVQN9tF6V34M2GOwoCwLq3m/wQCqdI?=
 =?us-ascii?Q?cy0OdZYohnkpdlFY4T6ASwYY2oLVR8NuLnASul5v16tfTQh3qgotQeRE1Yyv?=
 =?us-ascii?Q?xHCwanFPKg8zpqS169UD2/kDP2W6sJMFHyLtRx5+Br31InQCqgyzFG+1WVZN?=
 =?us-ascii?Q?VqMqUb9ZxEE+6J9CustoZeGMf6ugL71jguLBK2wg5sm7FxyNtV2GrT8TqLBP?=
 =?us-ascii?Q?XZiumEZGX+AJhNU47lQ/U9cCbiNtAcAQ3upK08fwJst7qiBw5RW3TyHShPFN?=
 =?us-ascii?Q?3EAidNFxyq2Nd8IjYHq1snxyYesCxVgDAU20zld0OqTkLIlLld2CKbofCZ5e?=
 =?us-ascii?Q?7wei6ihy24KGDiCAjOP9WpHSTT9cJmKGUBfCE5VzgD5fGRTmcunz7qv9e5I1?=
 =?us-ascii?Q?PzXHZLrihPOgfBRQ13MAg+7gNdk9C80aeQ+I92jXvtDb0PI1sC305bmqNt1Z?=
 =?us-ascii?Q?17/dfg+l8iwv4nG7h6jBV/R3M0xC5Q17QF9PCFKHgyAncoIVzbKwqTN2oBMu?=
 =?us-ascii?Q?cgBJjFFRCFa5Z/aMo4eIM5RutYq/iHVoMnSEVTWtcgSJEV8iPZUNFxPQAt8p?=
 =?us-ascii?Q?5d1vOUN2WDV29ZUZfKC+IhUDeFINVZRYCaOMOLgGoruMpc3AidWXVrvtqsqL?=
 =?us-ascii?Q?Ufwr54uU/VeM5Q8PA4mnhYlCRmSoG+D9w5/aCkYR/cqJA/GgzQHVBDh8/3pL?=
 =?us-ascii?Q?VUpwrLb52hlzAcglek7sxQVQnWAy4hjOVQfH2qW+LYi+WX3wKkqVWKaFz6PN?=
 =?us-ascii?Q?HHG/vo0/OKDG4Nd1ZiHAchqQbSu3At5PMiyD2xesm6wMP51oLLmlH1hOfOSJ?=
 =?us-ascii?Q?CrE45xrZ69aC8paq8Z1GlVQl2tdU2eQoCprjMpQDp4/LgrFORtbRpdny+mhC?=
 =?us-ascii?Q?NhOMt8Z4DOB+/FVkytDM/lg6EuKcsBuKTUe4kFHDs00Jz9eEU3lFPzZ0hZ6C?=
 =?us-ascii?Q?3mpVVWMYuAYEZOxKQUQ9Bqo1iZCCuuuou2W/sMA78EJD0/nD2IvScySyxtqZ?=
 =?us-ascii?Q?2UpKDzsbDB3xgOlZdVI0H9cqCx48bbUxd8Vy0/uGeBa3mrNQRsO020MpSmPA?=
 =?us-ascii?Q?2Zy+kLQpPGJppIhsu3X6WL0uaI8lSuNKSNZE+ke5pMWvhIVL/Y0vmB/3rhgY?=
 =?us-ascii?Q?m7vE4NfZrTBIEewhx6wqn/PXrQeywCFf8WwJe3Pe?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a7f2396-5ba3-4991-3505-08dcc28e2dad
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2024 09:38:28.6705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S6NmIbw/e+E+IN6oSgaNMcm8E4VVUtAFBn7sxyVHImDq/vGmcBQ5lA5LH53Yi/7yqBsMSEV11ctnXuSKms+jqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7436
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Wednesday, July 24, 2024 10:10 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH] drm/i915/dp_mst: Fix MST state after a sink reset
>=20
> On Wed, Jul 24, 2024 at 07:21:53PM +0300, Jani Nikula wrote:
> > On Wed, 24 Jul 2024, Imre Deak <imre.deak@intel.com> wrote:
> > > In some cases the sink can reset itself after it was configured into
> > > MST mode, without the driver noticing the disconnected state. For
> > > instance the reset may happen in the middle of a modeset, or the
> > > (long) HPD pulse generated may be not long enough for the encoder
> > > detect handler to observe the HPD's deasserted state. In this case
> > > the sink's DPCD register programmed to enable MST will be reset,
> > > while the driver still assumes MST is still enabled. Detect this
> > > condition, which will tear down and recreate/re-enable the MST
> topology.
> > >
> > > Closes:
> > > https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11195
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>

Does this require a TODO to remind us to remove this when we decouple MST S=
ST
Sideband messaging?
Otherwise
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c     |  3 +++
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 30
> > > +++++++++++++++++++++  drivers/gpu/drm/i915/display/intel_dp_mst.h
> |
> > > 1 +
> > >  3 files changed, 34 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 1e43e32e05199..c621f6daf8235 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -5878,6 +5878,9 @@ intel_dp_detect(struct drm_connector
> *connector,
> > >  	else
> > >  		status =3D connector_status_disconnected;
> > >
> > > +	if (!intel_dp_mst_verify_dpcd_state(intel_dp))
> > > +		status =3D connector_status_disconnected;
> > > +
> > >  	if (status =3D=3D connector_status_disconnected) {
> > >  		memset(&intel_dp->compliance, 0, sizeof(intel_dp-
> >compliance));
> > >  		memset(intel_connector->dp.dsc_dpcd, 0,
> > > sizeof(intel_connector->dp.dsc_dpcd));
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index 27ce5c3f5951e..89b147e37b400 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -1998,3 +1998,33 @@ bool
> intel_dp_mst_crtc_needs_modeset(struct
> > > intel_atomic_state *state,
> > >
> > >  	return false;
> > >  }
> > > +
> > > +/**
> > > + * intel_dp_mst_verify_dpcd_state - verify the MST SW enabled state
> > > +wrt. the DPCD
> > > + * @intel_dp: DP port object
> > > + *
> > > + * Verify if @intel_dp's MST enabled SW state matches the
> > > +corresponding DPCD
> > > + * state. A long HPD pulse -not long enough to be detected as a
> > > +disconnected
> > > + * state - could've reset the DPCD state, which requires tearing
> > > + * down/recreating the MST topology.
> > > + *
> > > + * Returns %true if the SW MST enabled and DPCD states match,
> > > +%false
> > > + * otherwise.
> > > + */
> > > +bool intel_dp_mst_verify_dpcd_state(struct intel_dp *intel_dp) {
> > > +	int ret;
> > > +	u8 val;
> > > +
> > > +	if (!intel_dp->is_mst)
> > > +		return true;
> > > +
> > > +	ret =3D drm_dp_dpcd_readb(intel_dp->mst_mgr.aux, DP_MSTM_CTRL,
> &val);
> > > +	if (ret < 0)
> > > +		return false;
> > > +
> > > +	if (val !=3D (DP_MST_EN | DP_UP_REQ_EN | DP_UPSTREAM_IS_SRC))
> >
> > Hmm. This is not comparing the value to any software state, but some
> > hardcoded combo of values which may or may not match.
>=20
> The software state is intel_dp->is_mst. That's atm the way to check if MS=
T
> was enabled previously and correspondingly DP_MSTM_CTRL programmed
> to the above value. There is also intel_dp->mst_detect, but that can't be
> used here, since that's reset after MST gets enabled.
>=20
> > In particular, this makes it harder to untangle MST from
> > SST-with-sideband, I think.
>=20
> After that's enabled this should be changed; there isn't a good way atm t=
o
> tell full MST and SST-with-sideband apart. I don't see that as a problem =
as
> only full MST will be enabled.
>=20
> >
> > BR,
> > Jani.
> >
> > > +		return false;
> > > +
> > > +	return true;
> > > +}
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> > > b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> > > index 8ca1d599091c6..9e4c7679f1c3a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> > > @@ -27,5 +27,6 @@ int intel_dp_mst_atomic_check_link(struct
> intel_atomic_state *state,
> > >  				   struct intel_link_bw_limits *limits);  bool
> > > intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
> > >  				     struct intel_crtc *crtc);
> > > +bool intel_dp_mst_verify_dpcd_state(struct intel_dp *intel_dp);
> > >
> > >  #endif /* __INTEL_DP_MST_H__ */
> >
> > --
> > Jani Nikula, Intel
