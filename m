Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D1098434F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 12:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4760C10E2A4;
	Tue, 24 Sep 2024 10:15:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V4tccQon";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B0A810E2A4
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2024 10:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727172958; x=1758708958;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uA19WXmlOtgA3dd/rZmaH0HHGgzye8rSNDRVX8+SPAo=;
 b=V4tccQon4ZSbueta7uCZRxL9AxRPx819veVZRMj1E2cm9PcEzW7vKtLT
 KDDwZeOYrPc1LErsuOORB3yfO9BnLrbqPhj/YraOkoLlu/9NDbA5Di20l
 n/ppNxKFSq5dbRioBhci68jDfXZw+L10sz90MoNsJA6mZKudbdnJuLf4s
 Ch7xyXrtsqYMSWlRX5mP3hVNI8Eg0wtb0LFujqs5PTVlN/MNGwmWGPnIf
 lGD53YQL7KPmGwQ373HPN9AOdrv2knC3mP1F9vzVVrvBFy/rFgAIQecWJ
 7mm7t0ioCkIt+BH1FnSiIffhqJsq8oxo0gJl4ceRUiaTonPZ8Txuxc+Oo Q==;
X-CSE-ConnectionGUID: atW3jIC9QKK1eJKDYofgXw==
X-CSE-MsgGUID: i4Bw4nrkT5SvWWueS7kEoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="36727513"
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="36727513"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 03:15:57 -0700
X-CSE-ConnectionGUID: 2ErCT71dS4+axfEcV09OKw==
X-CSE-MsgGUID: RVMoC0gnQZymKb4opYSY9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="70982227"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 03:15:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 03:15:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 03:15:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 03:15:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 03:15:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BB2QeUZOqg27rsjhH0Nz6yT/ypXKzmKwYiduDyMcGZjgkjExK3+2R9UlJD06Sj3N6P6yueqR/J/vTfpbvYB8JnxqWPnR8sRZjoXLI/g1Gj4ClG96wMJMz3010BTnLotNuksrJOqlNzF7mWyGI1YYuEV6EBfqMcvSdoffTVJoG8LPVSPC7XGNaUoMaWyAFwDliU9C1OFCHgg9hRl88sI7uFAQ8yZJElLcgdBVCtcTfKgVlnINOCU/tC3sQbQETN9lfLLbUQxnmC6VxPI8axhLvul7SzotKtoOxDg15fw2s2r9WfAFZ5SNIvCAXlspyjjHTh48LQ4cyXfGmZ1Swt9HDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lm6xqtm7Ai/lD9m0Q27kmoOVMXI6z2tCXOJbDMSB0Ig=;
 b=TUGZjTa0l069KuNAvsyWEyUoDkVJat598cIZQQodxXl8g5WuR9ug+4I55v8XvqHKrgG5m27ZScJGK0nkW+zM0YrWSdmFg2hDXHoONByV9yaBs+CLccRQhB5fWv665wDsBgggd0xCgCnvIyJwCXXQoDz7ZJ1iX2hTukb/+//kGU33MlIZoY5fU2j9Vh3XoP/IViAVOgGQ6gZaYKOMsslHQ9jfE5Ib3UZqIeevtkZo9qrJqrnZ4dI2NKkbY40BYwh+f+VrT4Ed/abUGdqUPW1ZmNrDZvnr8E1DZDVXm7Q2uUGFDTHZrByFNdSKElDOzaLS6DPZW4K8Fei7xbkVWP/LTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7SPRMB0011.namprd11.prod.outlook.com (2603:10b6:510:12d::12)
 by SA1PR11MB8573.namprd11.prod.outlook.com (2603:10b6:806:3ab::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Tue, 24 Sep
 2024 10:15:48 +0000
Received: from PH7SPRMB0011.namprd11.prod.outlook.com
 ([fe80::9fc3:98ef:c7c5:5bfe]) by PH7SPRMB0011.namprd11.prod.outlook.com
 ([fe80::9fc3:98ef:c7c5:5bfe%5]) with mapi id 15.20.7982.022; Tue, 24 Sep 2024
 10:15:47 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Golani, Mitulkumar
 Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH v11 2/2] drm/i915/panelreplay: Panel replay workaround
 with VRR
Thread-Topic: [PATCH v11 2/2] drm/i915/panelreplay: Panel replay workaround
 with VRR
Thread-Index: AQHbCBA3EtryK7M/TUCzfZLII8f4arJgk4EAgAYo9nA=
Date: Tue, 24 Sep 2024 10:15:47 +0000
Message-ID: <PH7SPRMB0011BDB84C1D0FE22EC0A0C0F9682@PH7SPRMB0011.namprd11.prod.outlook.com>
References: <20240916075406.3521433-1-animesh.manna@intel.com>
 <20240916075406.3521433-3-animesh.manna@intel.com>
 <Zu1fDJzxiF5GoGhA@intel.com>
In-Reply-To: <Zu1fDJzxiF5GoGhA@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7SPRMB0011:EE_|SA1PR11MB8573:EE_
x-ms-office365-filtering-correlation-id: d4d00166-1cb4-4595-bc85-08dcdc81db7c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?IMdwpBHsbMshARfGm3jVikY7894xKFj1x32ygd6bEj/oOprrRM5C9HnzSh?=
 =?iso-8859-1?Q?TdYoGCqDHPLsRG4fxTRAj+sbABxS5tYgnvDBDx2I66S8iYBjGuMBS2r4gO?=
 =?iso-8859-1?Q?+IIU0dSm79461+DPY6KWNSg5pcwkBZj8wC58i0qkfFbO/mz1IrxODiy+yc?=
 =?iso-8859-1?Q?jm9d47jRoZx5Zs3LZOp7GhBT/jVjO1TDjFAecT7y8va3BE2ui+mvokUTR8?=
 =?iso-8859-1?Q?19Ep2AmnarAMgEoXcQVjHD52asaaPagaEOi2H4HHbuMpTaK4nKR/34FI0h?=
 =?iso-8859-1?Q?Sr9ZzF1NZpMSrEHzQEQ851NRSzAu2huVCO6Gm91aVCVGJvD6TQNjaF9Vf4?=
 =?iso-8859-1?Q?OheKfTdP5rxdS1av42wN/fpRCV07GPyjHnq9DKgMfTpdeksXD7lIhJX8ez?=
 =?iso-8859-1?Q?ME12uoZ1o7IKrYpwnR1MBpYPnRTgPwBXfjWGn/h6RQB36VpfuH32zg9yMI?=
 =?iso-8859-1?Q?ZF/iik7cTdU1FYIm8rJy6ZEsr0t0mwMMHYlJE7zJ9w7PbVl+NE5yxtX0gH?=
 =?iso-8859-1?Q?luS/oOG/vOSmVI6OQPf0eOVj0MtZ2R0Z1IAByy1ouY2FBpfIL7kDmNsSzW?=
 =?iso-8859-1?Q?YpE8DlmNowj73+k5eG1GgFjPc+Qx53fCMUEzzqePARDTuiiribV0YE7lTm?=
 =?iso-8859-1?Q?BwnmX9PM3StjZ8S42Tp7jvPAlzqrVPV5gl59vaBeG5MYOVK8kqVzA/+2ut?=
 =?iso-8859-1?Q?EX69ShfzpectfKzW4Ekx+ME0kRdAHhi/AGyuQI+UqONX6C/mVYX2HHxAYB?=
 =?iso-8859-1?Q?w86IDUQHVBDgmvovyQNiZNYE58UcnwyNolo2bzwZov1lMfFe8taYLsrVt3?=
 =?iso-8859-1?Q?3fDpxedIS1W245kK9tmIQe7jyNC1XR6CaL6D8QuPXn1LtIcIVqoKFqKlNt?=
 =?iso-8859-1?Q?S8In/4ztrX+nL5J5kb1NzhPfDd59xjjKqm5SE0RCN/0wFNYRwn3AO71Egj?=
 =?iso-8859-1?Q?U5QYqeXq89gPVYiDCdrwO9PcXJHPip+iKWlaHgOC7tRITAIquCJR5sdX3Q?=
 =?iso-8859-1?Q?9iJGNBkjj4+x5EmMRczfC6VFvGk587U/ds3c+PjRTVY2wv/rmmO5Gfp6FA?=
 =?iso-8859-1?Q?fH3HJ4IzCvdTVjsC4ul7hKLwMiuRhIhQlaFbuB1y4a1KiUh0avOqlqtq1N?=
 =?iso-8859-1?Q?kgj/8S0s1fkIbHZtNPS63/mrz7Uyl4Bd/fFMTLz3ayIdchB6Pg33g0bD3c?=
 =?iso-8859-1?Q?UJZIhuQwzRjFHF+DGG+5mexvNEAak37Xi7K9CgGp/I7dfjxIyaQMMQIs+4?=
 =?iso-8859-1?Q?KcqgeuJ/dQiHQI/zRKFjqpmAgA1wEaAjXjn0KTko+7eiOQdSolGh1LF7Wl?=
 =?iso-8859-1?Q?gjTwpT6OZ+9quTZTuIK0UrWKa3qlVb6AxKoZJG+0sBGvo13Ig5mcLlM2Nr?=
 =?iso-8859-1?Q?NDHB4RILh1oVeNN51duHuLeBHalsLmdg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0011.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?FVDZe61OwAj/EM6pqI+zuCK5Y6oY5ENCSrgKnOvgWxIXfT/6QUjqUsggEM?=
 =?iso-8859-1?Q?hgUl38B/eHw5IwOcvu39g13WkPS4Mw/AXT0cXE3vVlx6MfRQMDW7HXH1TC?=
 =?iso-8859-1?Q?0FPcWqYDysraT9ZHHugTQdnKHSurecBs83Bdl4QEvVYF8Oe6Z9p+1zaBhE?=
 =?iso-8859-1?Q?nRySDyo9plHyLZbRdZwLk8aWNM3SwPq9uC0qUNRtPM5RYSmPhdvXhF5GNm?=
 =?iso-8859-1?Q?OPEuUs8dKVZOXJj4fCR4alMWao/51DQay2VfW1sd61084mpHYTi3Nu7GVY?=
 =?iso-8859-1?Q?zn5e98akM/PpeWoAl8D+lAQGXiuiozqeFjLUp0F5o+mi5dgjYwjaQXUgiI?=
 =?iso-8859-1?Q?o3WCECeO8/h8cf+1FfTMpLzNnhL1gaqvVC5fYNGlvrATq7H/SGlJNV7w7T?=
 =?iso-8859-1?Q?SKtvPMctyTYuvCAoLjc89QTKUkM9JaxYPHlT3rDuMAA7CiY7o4ge3kuGVe?=
 =?iso-8859-1?Q?5yMyC4dHqqTtM3bv+Sa7w6HLtWuam19PMSUU62ShtKKR1w8zanwyLak6zG?=
 =?iso-8859-1?Q?xLKKvhjXKkUXhPwptvre9hyv/w6Xaxm6T7HTOWpMogIUv2nUC/2gBTLKE1?=
 =?iso-8859-1?Q?DfIMOWwuPwZYJFf+KEVlz2btsIA1JUENXhC+2bJFHkR7gFi9M8Ak/fgCgH?=
 =?iso-8859-1?Q?1Ni0HbKHYoF3y0latwO5D1NBCDdLjOoJRUrdCOXcMIKSrBfPWbPAlrTkA5?=
 =?iso-8859-1?Q?sYu0YtVnP03VKLN9FeJdYLgz27uV7WTAgkjmXTDZPuP0LhYxyXxUCqZGxZ?=
 =?iso-8859-1?Q?e/IK/JJ0J4wfu5q4g5ERfxARJLWz0tFzEsKlAYO2auDILfd0VmJ/HQeCF0?=
 =?iso-8859-1?Q?tab5UBCNWGDkqxeEsYbRPIAPk0LEnPtEwK2VGurUYLhErkRdVCHK6MARYr?=
 =?iso-8859-1?Q?SF6oXgwmAl4nGXz17qlVx4q7jzuurPS3MkbGcDTSeYo1lyZoGavCYQpj3X?=
 =?iso-8859-1?Q?97MhgImPrZJp9D+2kLUyyO/OVPFi+L6/h8XNmT5/rw01s/amlvsyqXYJJQ?=
 =?iso-8859-1?Q?Ldrld1XPqslH7+xpjZqMAtF2BQ30M90qO1tMOv80b9U/GYWJhRtMuBlaOo?=
 =?iso-8859-1?Q?hF4HQ42g78fN8a2Hta1vVfUAi+A7IC8dXbPDM7mMTYPmrMZbpc5EyDPVuv?=
 =?iso-8859-1?Q?2bvajPhT79w1OLfbMHHju2rn5lUatWL8HFzN+2qfipb0AM96gxO5ykTxnE?=
 =?iso-8859-1?Q?HuVnivt3lFw2kSauuUHlfgn5UUZF5MBTN8YO27LXMFGPl2RcGqtx4jqJYT?=
 =?iso-8859-1?Q?eMjB0ni/TvY+PsGWZAP9oCJAUSxCrEQudgyUsOOVjmo+srOrZi3yfPkyuA?=
 =?iso-8859-1?Q?iGUw2rpFVAecpWDbRCg4gCKRRgox/J5LjoCZuJtDM2/+DHukMuHCaO028o?=
 =?iso-8859-1?Q?1EfIKkLWXJTiIy72hRno/40QNsDLDYodr4XoXcstkVa0gjIKDYd2yYKH+l?=
 =?iso-8859-1?Q?eOFPY9iS5pJIGM0QJ0i7IgwZWvb30P2LZYUWGmRsjmOBmW0rxPeMmaDuMd?=
 =?iso-8859-1?Q?Fb4gltCPaDqq21YiO9LLdb1G8CiYClzXpVBOn1gqmwAYk1rZIltHrZ3r8Z?=
 =?iso-8859-1?Q?l4HXRxhB9NFox92T2HpqqSHlJHpKkQnusEyHguSsnRTjynTg0nckqGkjy6?=
 =?iso-8859-1?Q?MCsOqcjAqlMZJRpZhvBFstiwU2GHDIo/gs?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0011.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4d00166-1cb4-4595-bc85-08dcdc81db7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2024 10:15:47.0808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FzFB30c4IbGUto/7YEPt/rUVdgNX8C2t4HgynluQKHXU7S+iJRvH/5+obTH7jda1BsX0Qgx8KU22gzjsl1a5SA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8573
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
> Sent: Friday, September 20, 2024 5:10 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>=
;
> Hogander, Jouni <jouni.hogander@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>=
;
> Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Subject: Re: [PATCH v11 2/2] drm/i915/panelreplay: Panel replay
> workaround with VRR
>=20
> On Mon, Sep 16, 2024 at 01:24:06PM +0530, Animesh Manna wrote:
> > Panel Replay VSC SDP not getting sent when VRR is enabled and W1 and
> > W2 are 0. So Program Set Context Latency in
> TRANS_SET_CONTEXT_LATENCY
> > register to at least a value of 1.
> > The same is applicable for PSR1/PSR2 as well.
> >
> > HSD: 14015406119
> >
> > v1: Initial version.
> > v2: Update timings stored in adjusted_mode struct. [Ville]
> > v3: Add WA in compute_config(). [Ville]
> > v4:
> > - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> > - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> > v5: Move to crtc_compute_config(). [Ville]
> > v6: Restrict DISPLAY_VER till 14. [Mitul]
> > v7:
> > - Corrected code-comment. [Mitul]
> > - dev_priv local variable removed. [Jani]
> > v8: Introduce late_compute_config() which will take care late
> > vblank-delay adjustment. [Ville]
> > v9: Implementation simplified and split into multiple patches.
> > v10:
> > - Split vrr changes and use struct intel_display in DISPLAY_VER().
> > [Ankit]
> > - Use for_each_new_intel_connector_in_state(). [Jani]
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 33
> > +++++++++++++++++++-  drivers/gpu/drm/i915/display/intel_display.h |
> > 2 ++
> >  2 files changed, 34 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 111e61eceafc..a0bd29b0d29a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2529,7 +2529,18 @@ static int intel_crtc_compute_config(struct
> > intel_atomic_state *state,  {
> >  	struct intel_crtc_state *crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > -	int ret;
> > +	struct intel_connector *connector;
> > +	struct intel_digital_connector_state *conn_state;
> > +	int ret, i;
> > +
> > +	for_each_new_intel_connector_in_state(state, connector,
> conn_state, i) {
> > +		struct intel_encoder *encoder =3D connector->encoder;
> > +
> > +		if (conn_state->base.crtc !=3D &crtc->base)
> > +			continue;
> > +
> > +		intel_crtc_adjust_vblank_delay(crtc_state, encoder);
> > +	}
>=20
> Why is this loop here?

We can drop this loop, it was added when this piece of code is added in enc=
oder compute-config.
=20
>=20
> >
> >  	ret =3D intel_dpll_crtc_compute_clock(state, crtc);
> >  	if (ret)
> > @@ -3940,6 +3951,26 @@ bool intel_crtc_get_pipe_config(struct
> intel_crtc_state *crtc_state)
> >  	return true;
> >  }
> >
> > +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_stat=
e,
> > +				    struct intel_encoder *encoder) {
> > +	struct intel_display *display =3D to_intel_display(encoder);
> > +	struct drm_display_mode *adjusted_mode =3D
> > +&crtc_state->hw.adjusted_mode;
> > +
> > +	/*
> > +	 * wa_14015401596 for display versions 13, 14.
> > +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> register
> > +	 * to at least a value of 1 when PSR1/PSR2/Panel Replay is enabled
> with VRR.
> > +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
> substracting
> > +	 * crtc_vdisplay from crtc_vblank_start, so incrementing
> crtc_vblank_start
> > +	 * by 1 if both are equal.
> > +	 */
> > +	if (crtc_state->vrr.enable &&
>=20
> Another case of the do not use.

Ok.

>=20
> > crtc_state->has_psr &&
>=20
> Does that cover panel replay as well?

Yes for panel replay also has_psr flag will be true.

>=20
> Can this change dynamically during fastsets? If yes, then you can't use i=
t for
> this, again due to fastset VRR requirements.
>=20

has_psr flag will be set if both source and sink support panel-replay. It i=
s applicable for psr/psr2 as well, but if vrr is enabled it will not be set=
. I do not see any dynamic condition will change the has_psr flag for panel=
-replay.
=20
>=20
> Did you actually test this code? AFAIK the fastset checks should catch th=
is and
> refuse to toggle VRR with a fastset. If that's not the case then we have =
even
> bigger problems somewhere...

Have not tested the code due to unavailability of panel.
I will check fastest VRR path once more.

Regards,
Animesh

>=20
> > +	    adjusted_mode->crtc_vblank_start =3D=3D adjusted_mode-
> >crtc_vdisplay &&
> > +	    IS_DISPLAY_VER(display, 13, 14))
> > +		adjusted_mode->crtc_vblank_start +=3D 1; }
> > +
> >  int intel_dotclock_calculate(int link_freq,
> >  			     const struct intel_link_m_n *m_n)  { diff --git
> > a/drivers/gpu/drm/i915/display/intel_display.h
> > b/drivers/gpu/drm/i915/display/intel_display.h
> > index 7ca26e5cb20e..db7bb5cac2f5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -429,6 +429,8 @@ bool intel_crtc_is_joiner_primary(const struct
> > intel_crtc_state *crtc_state);
> >  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state
> > *crtc_state);  struct intel_crtc *intel_primary_crtc(const struct
> > intel_crtc_state *crtc_state);  bool intel_crtc_get_pipe_config(struct
> > intel_crtc_state *crtc_state);
> > +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_stat=
e,
> > +				    struct intel_encoder *encoder);
> >  bool intel_pipe_config_compare(const struct intel_crtc_state
> *current_config,
> >  			       const struct intel_crtc_state *pipe_config,
> >  			       bool fastset);
> > --
> > 2.29.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
