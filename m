Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C4F960180
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 08:23:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6AD910E257;
	Tue, 27 Aug 2024 06:23:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YowzWWCe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C74D210E257
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2024 06:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724739801; x=1756275801;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tbdRqXG/GV3/Z/LQEvvsmjA/pOh/97ynRDn9yED5CbI=;
 b=YowzWWCeMNTacdxkGCWw+BLCIH9gsy4q3iWgmrla+y8D17cpLHPPpr3F
 LSwFUl4BoYzqLYRPIKDZT6F0OgzwJK+IVtYnZ1bVcP8wobsb3bPeu1vwl
 r13MyD2+O8YuveUTlrCLmEfygN6jZxXvQkmk86otvfIrwjPou3bQ5Qmcn
 rZQBP4nZmr+7LB0w2Zpiop9qjF4D5GLHqrOkjUSIiS10OESFSZsVOk8F5
 5iKwpiYlFWdOAx/JN67ihoYFeSaAFp8tcgsCQSV8LERI8b3BQe++yZlXA
 W5+AHZE3twrmsQVqcv3bGJxI7E3M4ZazjXb11hLhy8CfhfqqMTD2iH+QS Q==;
X-CSE-ConnectionGUID: WY//sB7TSDiKEaompSl8aQ==
X-CSE-MsgGUID: 0sGm+vM1Q7OoH0Aj4DrBfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="27077545"
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="27077545"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 23:23:20 -0700
X-CSE-ConnectionGUID: cRrUWGT0SvimlSch3dDM6g==
X-CSE-MsgGUID: 3/AKt/BQQHmXiAekh2ww0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="67448664"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Aug 2024 23:23:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 23:23:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 26 Aug 2024 23:23:19 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 26 Aug 2024 23:23:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qwt+DCC7j/EtSDY9Gmo+peq01nw5nZmfnv3iHEJhlw0j4b37UIeqZNbMU0tKAIf6cD7MkLortIE0xt3Y+wD4wjYVmUtEZH/t4pxQy/CaVBxhbAK320qDq1miJ0s53Ipzze4Yz/CPVTMb3xX6KsTkEp7k8W6+2oQzEUTiFq7JsyWWtWbmjLdy7FsTDEpDp1kKmuafV/XNkJ8K4rGJgux42ugDyMD43S8z1SQF5JJz+PJe+++NWILImPBc7iDG1qL0rWOTlNNK8REeQLpGRFpSuEa1WVwH0QSYbI8/1C5K3BsV3vzd3BpXXNe7JIFMAC9YtPNvCXsIbJPjcAGtyZoabg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mi57yhByG6ZAJUkLRuYsGP3J5xGmg6jPwbqZxqOQQ+I=;
 b=Aw8vvffwzoVj5RtnBYFZNw0J8IKU5dd++bGBCfKDra20Aji7Tbf2nva8LiwoJyCp4rwgpX2Dc+egDbJ7KxOB1vjDfLlA5cUbu2CNWH8s7a+lUbHms1UOR/Q8nhPoCxsb0douhQiP4/X1KH9QHCDLuXnbQLxp89E8UMQOjP33s14NC7bZ3Pv2Ry5zP0enbT3iy9s8Wih9YNnyjlR8Gjoc4sQIgDS8Iy2kHvDhWQCuKHoilpty+JznAYEZ8fdvB3GWuZ2mRPEHMEX9ca7Ip3qlrbaXYyh45u8b71iDj+1EgdjycpqsiOTkdASiByaUsKpUbFh64K8wCfZgvR4qQPvS/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB8134.namprd11.prod.outlook.com (2603:10b6:8:15a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Tue, 27 Aug
 2024 06:23:17 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%3]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 06:23:17 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
 DSB_WAIT_FOR_VBLANK
Thread-Topic: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
 DSB_WAIT_FOR_VBLANK
Thread-Index: AQHaxmpTP7/zlQICe06J0ru5SG7sK7HoWTSwgAAegQCASaxy8IADA4SAgAXeBRA=
Date: Tue, 27 Aug 2024 06:23:16 +0000
Message-ID: <PH7PR11MB5981E5351B4820AF283D2F0AF9942@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-12-ville.syrjala@linux.intel.com>
 <PH7PR11MB59817808A0D51050365D665FF9DF2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <ZogvyhAqaZc11zyw@intel.com>
 <PH7PR11MB5981B2421CBD2E4D973B3AC2F98E2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <ZsiERTgW2Gh3jZbQ@intel.com>
In-Reply-To: <ZsiERTgW2Gh3jZbQ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB8134:EE_
x-ms-office365-filtering-correlation-id: a7ec53f2-5d23-4541-1f18-08dcc660bd03
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?HT+pgOzOddl0XIBdvKy8yjYJu8VvKBvCNqgHSA0waiR0PhkxboNGqWapC/?=
 =?iso-8859-1?Q?fMj+WbNIvP7VRc7Tqnmtu5I3uHVZROYAQITUz/t0qmZ0DSLm63rcgTDcvm?=
 =?iso-8859-1?Q?fcg+fGT9KbM2BLI3haqRpkNB31vf4XEG76wDMTVcfhorXJOpaHUaiSezwP?=
 =?iso-8859-1?Q?qXMTO/cRdtyrp7xaGcJPfKYRHsDnHF5d/WskHNOx5+CJoEdY9wz6mcDpT4?=
 =?iso-8859-1?Q?HpkjdArQgkG/zk2Anv0CFpvnTrdKJHqHuVCVa+iQ0lehLhdcNQGXI/O8+d?=
 =?iso-8859-1?Q?o4wn0YVQpRIPYRkZPe+hwQ8XYvSj2Y+mq9FI8Mz6XJchUzIrdDQ7lEM6xq?=
 =?iso-8859-1?Q?ii7ZxOb+h0b8uilzMZXiyX4wTFd400W94Z2BW/xX44gm0bQOM5lqxY807y?=
 =?iso-8859-1?Q?wES7uWjdrleKHhfJgFFlib4Ui5cI9KY8Z36U2ukwHle42y/hYmydDP6tkI?=
 =?iso-8859-1?Q?ziL+4z0LWsb7CG7VJ0XE8NYR5270P5AgDQ98pEf/do1/h2iQbGR3OOybyA?=
 =?iso-8859-1?Q?91XQ5+6ZOcHIvpWDJm0TnYmlORDxeOMNTx/R+Z2+axL0XTUF5rigz8fvsD?=
 =?iso-8859-1?Q?Y3df1oqk8UCkJTyXnqGAj9DzpY6vdGMLjgJytUToiRGXfxJG1ptDfUMPW4?=
 =?iso-8859-1?Q?KubqkLqhSVNZC7/yGBobuZGPZ/S/cOYB6yKkUgbvBJR2bae4PGhxC5tQzj?=
 =?iso-8859-1?Q?kQ+JA5ZLJp/F5DKIttbxdfFe6e8gUGlNgG5ZIfBTVJDKYTAkozCYHIUyJd?=
 =?iso-8859-1?Q?WCKmeitEdchhliXEWLhYKedo5B3/+v5LvqTwMZDOiAAm5gL1BUgFK3lkGb?=
 =?iso-8859-1?Q?5LebNMCn/cfGZNwocObm1WMWPgr4/oRPYuBxvaXbJ8SYbASCIGcU06lBfl?=
 =?iso-8859-1?Q?GXWEuk67pvzv5N+tL4Mr4+4oHnRt1w7WJ9/NWjgHt0IiR9v0cLPpUVHJpC?=
 =?iso-8859-1?Q?fmIgj6Z5EJh81x7C64YV9uT3u8WgEltAuTB+LIajh+8UQKkTrn2PN45OV1?=
 =?iso-8859-1?Q?r/5z08eP5WcEgISn51gVQnPuua0XFH6LLFLPPbWL+zsXazKLMpZww7Z7yi?=
 =?iso-8859-1?Q?J+5cCC1l2Z+hwd3uRVqLxhKKB2X9ihyx+Sa2re6fmuWQnHeri6A0akh1Fs?=
 =?iso-8859-1?Q?XIQ7ksLozDHdP9GUPedNbjbn6KsDne6cefEnWFXsYjKjgN1n53CIFizQoR?=
 =?iso-8859-1?Q?xFKNFKagavcDt8M9/sL4LJS3oWf9RjkOLyH88Qxr2vgBAklTjUurxV2T3t?=
 =?iso-8859-1?Q?9baPgchgFh4TGUkgUhqr0wr+RlTGMHKu7xd5HdzBSbbRAE2B8rpOlAqHhc?=
 =?iso-8859-1?Q?4JDckAagmrOsqhSPTtg+rM2aqjiU1vqMbl0xp2wE0xtKBeYgfjh8UqFjjh?=
 =?iso-8859-1?Q?50gP9Fx1KdplRhRDrCOSNM5T2bgRMNkTjaBCwE+YxL8pVW4D5M+ca/BfLa?=
 =?iso-8859-1?Q?rlVQXIHsbeCBR6+V/VeIgW+4yMSgY/A7AUh6Jw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Q4BfrZ0vlNm0vh64p5vl2Qk5/hfCnwpNWdm2NT5Nix/7/s4gWothaaAFOv?=
 =?iso-8859-1?Q?szZp2HUDdvTJnckSWS/hD5Aw127hdJ643rjtot49Hmalx3y8np0h4ZbevZ?=
 =?iso-8859-1?Q?rawNWMsJguzY+yjUipzgmkXA7IpevzbNU/uF1uAHyW3vVJsMAY9etpZ/Hb?=
 =?iso-8859-1?Q?0ygd//ZLvawjPViTBJeseEHrR/QZkJxWFzWMK9hEuYvefKhWElSlJ/ULvZ?=
 =?iso-8859-1?Q?jWM5wE6tgkJn2+JQIc+vyrSHicGvDi0RYSZG8gtc0c9bLraJTWgDeNCGi8?=
 =?iso-8859-1?Q?ZWUtDXKjsggjE7hdlQq46aTkGc6KdJqjTiD8XOSjifCQtmdiX6rNhiWHS/?=
 =?iso-8859-1?Q?8jietP6oFAvXbFUZPkXe/d6StHF0KgYne/cpuahAupBKu1s/2ipPGrvX2I?=
 =?iso-8859-1?Q?eHRQew7UNxKqzYQC8eWbykUuCihUsb4rYkWrGuahBT8u8iC96cV3BsjhSF?=
 =?iso-8859-1?Q?cnZh6sOQXVcdQpEN+S5cHkBVPlcRQhz1cpqWKTHpBKLtxlOOpHywEf0E0r?=
 =?iso-8859-1?Q?DMVBqDtsA+fD+md1dU0l6wWwOKvJOeGs2557h4LXWwUf31p9+9FQUPEtVj?=
 =?iso-8859-1?Q?7NFkqZIEKe2EWb/dPWmki1CUCasBIh6Yss8h8fGfIiwV/jsw9xsPYLvkiY?=
 =?iso-8859-1?Q?FQ3rafhjjyU5iLdldroixS2GKpzDMVN7El34zLsGsNUtKefv1+y7dxSlCb?=
 =?iso-8859-1?Q?JbzILJLL8HqRmN0wnBsE6a1/NuW5JqhubMUhjSawSvizbdBdXO0l2BAJtZ?=
 =?iso-8859-1?Q?5rJ8iQnsJJRfhZ4ii5ajH73WM9adK++IYEoPL+MSUCMTMxPrcDJ3L6yEUi?=
 =?iso-8859-1?Q?818KMakND5TU8C9GmX7GjyfzuNMwloyxQaoEXYh8RMShl+qTPthsMC84rI?=
 =?iso-8859-1?Q?nCHGv50SVRqWWnb/xORlk/BmjckyzoIY5y3LnjqNtB8U4wtbonHTudJbaR?=
 =?iso-8859-1?Q?FQjDKwOWb9YJRDcNtWfGcmwPX3PbeASPsxkloevlmVfRieOvT5Ic8Dzd3n?=
 =?iso-8859-1?Q?Bj1MzaOhnFRsAlAClCWKSGxB4NBDLEAy+/fx2bn+5lkc9DAq45O6liXzqT?=
 =?iso-8859-1?Q?dH43UGPLiGNeVH0VwcoBPGBYuRc+w7c/X+/rPI7CAJoSwTfPV3QGDKJZZ6?=
 =?iso-8859-1?Q?WSxYDdbgxAMLvwfuQZ6iXFfzoh172FUBkorQwvJMmKgBKEGKzkHBu5x6El?=
 =?iso-8859-1?Q?c1h/Cl5FcxqNvOfsOdBxbvhkxhZF1SS03z1gGs8ommM7ySPWs3SO7uH6Xo?=
 =?iso-8859-1?Q?IliQ48XrQnBGe5E4rzDW1wnVDgmTIFj4xXpOHSCudILFSFZcPeaxiQfW/l?=
 =?iso-8859-1?Q?XypghqQKnl4Bo7G2oOKWYjakMkthiqJbXa95se+1ejZL4E2rFC6Fywv3fr?=
 =?iso-8859-1?Q?nl2MzbmOlPqMXcJlH8mqecCljC9GWXh1xLK63Te7PmpDRx/5rp3O00cnhi?=
 =?iso-8859-1?Q?MQ+pJlz/hBiuRXLZZJ29BdYB2z4liuWnT8PwLDB/xqBrbMlVOk+rck4qBb?=
 =?iso-8859-1?Q?13ML7Ok+RKAERlu31cbS0lHQ3MVU+QhxwAtzjlh6bJSDs+v5nbEGJwg7FK?=
 =?iso-8859-1?Q?yljKpMSwcu9S0B/cXT5DjhqkriuG5Ax2l0tSOLthZ2/9MPHIRV+VjTcZA6?=
 =?iso-8859-1?Q?93bRsVZMWkkuaMhHmOWX7Jjwobknn8wM5m?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7ec53f2-5d23-4541-1f18-08dcc660bd03
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2024 06:23:16.9776 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1THgLo/7XSO5CGx7I70DtifZ0sILOg0p4RXR1LZ6Wp1IUKTSQmQbemvvQ+gkzQFd/+Z3PWF5JVIgS5P8i0KuJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8134
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, August 23, 2024 6:15 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
> DSB_WAIT_FOR_VBLANK
>=20
> On Wed, Aug 21, 2024 at 02:58:20PM +0000, Manna, Animesh wrote:
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Friday, July 5, 2024 11:09 PM
> > > To: Manna, Animesh <animesh.manna@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to
> > > use DSB_WAIT_FOR_VBLANK
> > >
> > > On Fri, Jul 05, 2024 at 03:58:32PM +0000, Manna, Animesh wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > Behalf Of Ville Syrjala
> > > > > Sent: Tuesday, June 25, 2024 12:40 AM
> > > > > To: intel-gfx@lists.freedesktop.org
> > > > > Subject: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to
> > > > > use DSB_WAIT_FOR_VBLANK
> > > > >
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > >
> > > > > Allow intel_dsb_chain() to start the chained DSB at start of the
> > > > > undelaye vblank. This is slightly more involved than simply
> > > > > setting the bit as we must use the DEwake mechanism to eliminate
> > > > > pkgC latency.
> > > > >
> > > > > And DSB_ENABLE_DEWAKE itself is problematic in that it allows us
> > > > > to configure just a single scanline, and if the current scanline
> > > > > is already past that DSB_ENABLE_DEWAKE won't do anything,
> > > > > rendering the whole thing moot.
> > > > >
> > > > > The current workaround involves checking the pipe's current
> > > > > scanline with the CPU, and if it looks like we're about to miss
> > > > > the configured DEwake scanline we set DSB_FORCE_DEWAKE to
> > > > > immediately assert DEwake. This is somewhat racy since the
> > > > > hardware is making progress all the while we're checking it on th=
e
> CPU.
> > > > >
> > > > > We can make things less racy by chaining two DSBs and handling
> > > > > the DSB_FORCE_DEWAKE stuff entirely without CPU involvement:
> > > > > 1. CPU starts the first DSB immediately 2. First DSB configures
> > > > > the second DSB, including its dewake_scanline 3. First DSB
> > > > > starts the second w/ DSB_WAIT_FOR_VBLANK 4. First DSB asserts
> > > DSB_FORCE_DEWAKE
> > > > > 5. First DSB waits until we're outside the dewake_scanline-
> vblank_start
> > > > >    window
> > > > > 6. First DSB deasserts DSB_FORCE_DEWAKE
> > > > >
> > > > > That will guarantee that the we are fully awake when the second
> > > > > DSB starts to actually execute.
> > > > >
> > > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_dsb.c | 43
> > > > > +++++++++++++++++++++---
> > > > > +++++++++++++++++++++drivers/gpu/drm/i915/display/intel_dsb.h |
> > > > > 3 +-
> > > > >  2 files changed, 40 insertions(+), 6 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > index 4c0519c41f16..cf710f0bf430 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > @@ -130,8 +130,8 @@ static int dsb_vtotal(struct
> > > > > intel_atomic_state
> > > *state,
> > > > >  		return intel_mode_vtotal(&crtc_state->hw.adjusted_mode);
> > > > >  }
> > > > >
> > > > > -static int dsb_dewake_scanline(struct intel_atomic_state *state,
> > > > > -			       struct intel_crtc *crtc)
> > > > > +static int dsb_dewake_scanline_start(struct intel_atomic_state
> *state,
> > > > > +				     struct intel_crtc *crtc)
> > > > >  {
> > > > >  	const struct intel_crtc_state *crtc_state =3D
> > > > > pre_commit_crtc_state(state, crtc);
> > > > >  	struct drm_i915_private *i915 =3D to_i915(state->base.dev); @@
> > > > > -141,6 +141,14 @@ static int dsb_dewake_scanline(struct
> > > > > intel_atomic_state *state,
> > > > >  		intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
> > > > > latency);
> > > > >  }
> > > > >
> > > > > +static int dsb_dewake_scanline_end(struct intel_atomic_state *st=
ate,
> > > > > +				   struct intel_crtc *crtc) {
> > > > > +	const struct intel_crtc_state *crtc_state =3D
> > > > > pre_commit_crtc_state(state, crtc);
> > > > > +
> > > > > +	return intel_mode_vdisplay(&crtc_state-
> >hw.adjusted_mode);
> > > > > +}
> > > > > +
> > > > >  static int dsb_scanline_to_hw(struct intel_atomic_state *state,
> > > > >  			      struct intel_crtc *crtc, int scanline)  { @@ -529,19
> > > > > +537,44 @@ static void _intel_dsb_chain(struct
> > > > > +intel_atomic_state
> > > > > *state,
> > > > >  			    dsb_error_int_status(display) |
> > > DSB_PROG_INT_STATUS |
> > > > >  			    dsb_error_int_en(display));
> > > > >
> > > > > +	if (ctrl & DSB_WAIT_FOR_VBLANK) {
> > > > > +		int dewake_scanline =3D
> dsb_dewake_scanline_start(state,
> > > > > crtc);
> > > > > +		int hw_dewake_scanline =3D
> dsb_scanline_to_hw(state, crtc,
> > > > > dewake_scanline);
> > > > > +
> > > > > +		intel_dsb_reg_write(dsb, DSB_PMCTRL(pipe,
> chained_dsb-
> > > > > >id),
> > > > > +				    DSB_ENABLE_DEWAKE |
> > > > > +
> > > > > DSB_SCANLINE_FOR_DEWAKE(hw_dewake_scanline));
> > > > > +	}
> > > > > +
> > > > >  	intel_dsb_reg_write(dsb, DSB_HEAD(pipe, chained_dsb->id),
> > > > >  			    intel_dsb_buffer_ggtt_offset(&chained_dsb-
> > > > > >dsb_buf));
> > > > >
> > > > >  	intel_dsb_reg_write(dsb, DSB_TAIL(pipe, chained_dsb->id),
> > > > >  			    intel_dsb_buffer_ggtt_offset(&chained_dsb-
> > > > > >dsb_buf) + tail);
> > > > > +
> > > > > +	if (ctrl & DSB_WAIT_FOR_VBLANK) {
> > > > > +		/*
> > > > > +		 * Keep DEwake alive via the first DSB, in
> > > > > +		 * case we're already past dewake_scanline,
> > > > > +		 * and thus DSB_ENABLE_DEWAKE on the second
> > > > > +		 * DSB won't do its job.
> > > > > +		 */
> > > > > +		intel_dsb_reg_write_masked(dsb,
> DSB_PMCTRL_2(pipe, dsb-
> > > > > >id),
> > > > > +					   DSB_FORCE_DEWAKE,
> > > > > DSB_FORCE_DEWAKE);
> > > > > +
> > > > > +		intel_dsb_wait_scanline_out(state, dsb,
> > > > > +
> dsb_dewake_scanline_start(state,
> > > > > crtc),
> > > > > +
> dsb_dewake_scanline_end(state,
> > > > > crtc));
> > > > > +	}
> > > > >  }
> > > > >
> > > > >  void intel_dsb_chain(struct intel_atomic_state *state,
> > > > >  		     struct intel_dsb *dsb,
> > > > > -		     struct intel_dsb *chained_dsb)
> > > > > +		     struct intel_dsb *chained_dsb,
> > > > > +		     bool wait_for_vblank)
> > > > >  {
> > > > >  	_intel_dsb_chain(state, dsb, chained_dsb,
> > > > > -			 0);
> > > > > +			 wait_for_vblank ? DSB_WAIT_FOR_VBLANK :
> 0);
> > > >
> > > > As per commit description and current implementation always need
> > > DSB_WAIT_FOR_VBLANK. Just wondering is there any scenario where will
> > > pass false through wait_for_vblank flag to  intel_dsb_chain()? If no
> > > can we drop the wait_for_vblank flag?
> > >
> > > Shrug. For now I wanted to model it on intel_dsb_commit().
> > > I'm actually thinking of removing the wait_for_vblank stuff from
> > > intel_dsb_commit() after this lands. We could think about making the
> > > wait_for_vblank unconditional for intel_dsb_chain() at that point,
> > > assuming no one comes up with a use case for the immediate start
> version.
> >
> > As I understood the whole concept of intel_dsb_chain() is based on
> DSB_WAIT_FOR_VBLANK which should be unconditional and always true.
>=20
> You can chain without the wait for vblank just fine. Currently we have no
> actual need to do that, but I do have selftests that check both behaviour=
s.
>=20
> > Not sure is it really needed to add in this patch series and later agai=
n
> removing it. So, I was waiting to see your next patch series related to p=
lane
> update using DSB.
> > For now, with the modification to make it unconditional the other chang=
es
> look good to me. Good to understand your plan on this.
>=20
> The fact that it matches the current intel_dsb_commit() is all I really c=
are
> about at this point.

Got it, as selftest code is not published leaving it to your discretion.

Reviewed-by: Animesh Manna <animesh.manna@intel.com>

>=20
> --
> Ville Syrj=E4l=E4
> Intel
