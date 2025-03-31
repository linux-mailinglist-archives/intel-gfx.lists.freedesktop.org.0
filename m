Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCEAA763A0
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Mar 2025 11:55:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B6EE10E3BE;
	Mon, 31 Mar 2025 09:55:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SIlukSY/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B7610E3B8;
 Mon, 31 Mar 2025 09:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743414936; x=1774950936;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=To1ROYOUCxvYixzmQwS0sqqJCoMC9aZhLpOEo7fEPKQ=;
 b=SIlukSY/fd49L20WgxD63Nch2uiEb7oLuwyeiJOYIOI6ybfIw/K9IR0I
 6mU4/q9V+Kv8UY2WOByQldV9EkNKu5MXNQ9P+aZYznAX02ub7U0fw34+7
 CSd8q8INODdXy3HuGtHw/KK/uisMg5v1pA6eNYrOe7Jbek/cYijuwlDbk
 nLQbr9G+wfrwosSaJhdwb+LRYXaq9A8p4Gzkc1RZ5wi1RWsCJwVh62Jma
 yUW1aeJa+pvCRiobM8av5LS7sPpL7pKLoHaqN1eXCXjXWkDRlabXkoQJv
 d/ZnVvhQ6Zx1UkHdU7IJDjPonrVDDezIlCBMLCULUEkS9KRUN4lO2edU6 Q==;
X-CSE-ConnectionGUID: HJ39HmMOQLOhkQX2graDzQ==
X-CSE-MsgGUID: yJ2mixVuRZCaJQb3irA9QA==
X-IronPort-AV: E=McAfee;i="6700,10204,11389"; a="44409425"
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="44409425"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2025 02:55:33 -0700
X-CSE-ConnectionGUID: 7k+C26RESTyxVcXa5zPbbQ==
X-CSE-MsgGUID: Oapc0mV6Rmmoc2iyHJ5nMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="126518022"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2025 02:55:33 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 31 Mar 2025 02:55:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 31 Mar 2025 02:55:32 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 31 Mar 2025 02:55:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x82N2IhYy+UqqmDQPDfy+CdRgSSULhyE+I/u4nztQPBPBa22LW30W2/D0oEaVaqo+PZ7+zqJfj351uptY0aCxUMefAUTNikQsm1I2J4yzLCEiZP65zq6XnNNrEs1UWm4u0Mj33ZtMwzhEUhppU1W7PPR8YUIEjIUmW8KRm1moeLNXFyKLO2lfWt1R5rcYOLU6gqxHaPKDxpJrC/vTXNZDPyz47TareQQPQGbcPHnnb+MwL3MES7kGs/WGDzMuI0Fi/CjUj9QX0hKAJit+6wYxDsQ4niPJMx1UDy2aI+i7rmfD8O7Xv8H2dp6j36qGLJk0Q8LhhnzV6uWgOEcRJ8jdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=To1ROYOUCxvYixzmQwS0sqqJCoMC9aZhLpOEo7fEPKQ=;
 b=VTF5CIZJoy/ul1oNfoeYNxFhW/Jl9lv25TO503cPPrZRQxtZl1/D2DT5xHQqMW9iXrjY7Tk52V1TawBdsWBpoBtnoM82xDN8o1uRjNeun48PKnR0GYyM5dI7kTS+IUjnicOZXc3E7JQOrLDLMg6N0WAEBXsux9sKPdizJuW4JIMpohtISSBiu3z82jtulx86Sl57bJ1NIBy80EoiU/kCuPBK8ssQSQeyTalmPm1DshddGy7MFLIFTWyivqSpxc0JXYQXRwlFK98pkUUEKFKfklGwVOc2vLDSar7EyTjIVvi+yq4V36yLcSL9mayPvDUM1YnnBf/GgO/ugeTXTJh4rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB6858.namprd11.prod.outlook.com (2603:10b6:510:1ee::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Mon, 31 Mar
 2025 09:54:49 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.048; Mon, 31 Mar 2025
 09:54:48 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: Re: [PATCH v3] drm/i915/display: implement wa_18038517565
Thread-Topic: [PATCH v3] drm/i915/display: implement wa_18038517565
Thread-Index: AQHboZjmYhtVeImZPUOBfJh6saGmr7ONAq2A
Date: Mon, 31 Mar 2025 09:54:48 +0000
Message-ID: <4db890840c301c72a45015bf170b55b8e1bff697.camel@intel.com>
References: <20250330172616.718188-1-vinod.govindapillai@intel.com>
In-Reply-To: <20250330172616.718188-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB6858:EE_
x-ms-office365-filtering-correlation-id: 32040eb2-3b02-462e-0514-08dd703a1334
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?em1YanlXSG9OdzFiZ2VEVFdUSTdCSVdhWUZWTVRnd0Z4bWtxQVZVb3FTNVhM?=
 =?utf-8?B?bFhQdklHUGJrbWRLdUhkOFRNMGM0ajdpb2EraFlpZjh3UUM3N1VjZ0E3OEdu?=
 =?utf-8?B?K0pyVzhOTzRZZ2FVcmQ3d2h0akMrSCtyTURMTnlpVEU3UGFlL2JyMHZTM005?=
 =?utf-8?B?a1Vya0pKM1Zxa2RteVNFaTRmbjVvQWRBSnVLVjhZUWxiakp4cUVINTRwVXNK?=
 =?utf-8?B?Y3VTSlVnb1hvSjRPR1Foano1STkzOFJMRjJ1dXhrVXQ4alpDaEllV2dCaExm?=
 =?utf-8?B?QjVIVGkxT1FaQy9ZNzJCbnhuNG0yYkhiRFFQa0FjTGc0MUphWkdsNmJSeURQ?=
 =?utf-8?B?REVBcnltTFhqN2dmMllCZzlLUVVITkNTWXIxb3BZWlBGTys5Y0diT3JDZlBj?=
 =?utf-8?B?NFdsbUJDV2g3eGVQaytRd2tXV2tCZFJqUnVLbWljRHJMUkk2VE96VkgvaC9M?=
 =?utf-8?B?VUZjeFZrMkVUUHNnUjB2bU4xMFdoeG1uODM0UGpUS1oramhYRCtwY2E5T3ZH?=
 =?utf-8?B?c3YwRlRwRXZob09mOVNoRnFqaHcwVlhYTUtsM2g5NjFtVlpMYWhqVnduUkpo?=
 =?utf-8?B?OUJNWjR5N3JsKytXWE9MTUQzREp6MWRwcU9PV0tLRGJTWXRpa2xTWUpRZ0VC?=
 =?utf-8?B?QU1oWEw2czk0SUpLOUJYYzdQcVhRMnc5MzBmbTZsZEh4ci9vdXF4SWFhRkJa?=
 =?utf-8?B?aEpYcVc0WnlNei95TmVoWmhYNXNPdDZBRjZubERFcWhUdUR6SGFiSVBhRjlk?=
 =?utf-8?B?dmNCNDdRSHBlVlFDRXRaV08wTjNaZStvOU5ocThYbWwzbWN3NnkwQkg5bGti?=
 =?utf-8?B?TEJSQ0V5dmhRbUFxMmVaaWFEbEFGTENRWCtrN1p4azdzdEZtZ29DQkFRTzMr?=
 =?utf-8?B?a21UT01aRlUvY3cvQ0xRSnZNaEVZZWd0Nlc0dVJoNXREUXBNSFEwS003ckFk?=
 =?utf-8?B?MVVHT2hoZXVTaHRPbWhKTy94WWhoODdsc0FHQ1dDanBZdnVjNXJmZEJPWjVW?=
 =?utf-8?B?eGZ4Z0JGOEM4SkFHY0R1ZmVFUnZkRDRra0twaitkTmZwbzVjQUNnSWhJdlJr?=
 =?utf-8?B?c2wxYWNyVTd3Qm5wK0VGa245anN6VGtndjBjRjBhMnE4ZUQ2bTZ5b2F2SzBt?=
 =?utf-8?B?SW05b280a3RYdU1MbVcxQjFZeHBySGlmczhremhGS1NxNy9EL1RTL1YrK3Y1?=
 =?utf-8?B?VGc1UVVkVW5XejNPOHBtUjdQdFVMaGlvV3ZXc3NEVno2a1FyN0RzRCt6aE4v?=
 =?utf-8?B?RFdta01Va09WS0tPUDlFSjVmdXNpNkQwSnVZYVBNaWhRRkZqUnFFTWlaNE1w?=
 =?utf-8?B?a05JVStYZTNmOXViNmpqeUwyQkNNVGtreVNhSVRQVGl2WWhRNVdMVzVZN2Zh?=
 =?utf-8?B?anU1eDM5Y3JCbDcxMmIwNSt6ZkVWV256NG03cGlGVnc0Yi80akU0ZVVmWXl3?=
 =?utf-8?B?K3poUXpPbW5aakdVWno3bE5lRElEbFRCb0FNLzg3ZFlWVFlDOXRkTm5oV2M4?=
 =?utf-8?B?dTM5dGwxRHBOTlJmRG1pTjg2a2ZzQVlFbFl2dHZFUlBmaVFWYmVTUk9kYTh0?=
 =?utf-8?B?UDVtMzBrRzk3c05CdnZjQ3BmL0dqcGdrRHNQMEdld2szNGlJR2xQZERnOEJt?=
 =?utf-8?B?d3VpbkRoMngwOVVveGdCQitLeGt4M3YyUHZCOFd0Tnd1T0dwTnNyUllEeVZr?=
 =?utf-8?B?TzRoTm9JSHNRMnpNdGRURHVUbStwdUMwZzY4UU54NENpbm94ZVN5TEFrc2NJ?=
 =?utf-8?B?UDRHNUpOSVF6eXQ1TTJ5cTJ5U2JzaTdGVGNCcnVqNTZuNG5wS1JaY2JrVDR2?=
 =?utf-8?B?WWFwRnVyYTBGZ0tBVTN5UDF5RW4zZWVWZFpkNFlUd3RxTTQ3QUdoSDNVUTZa?=
 =?utf-8?B?TlUxMWNENklrK0EwaGh2UGQ5Wk5oUk1lRmZ0emMvN3hxRzArZzcrNUZueVF6?=
 =?utf-8?Q?LdYajC1jb73/b3BuRkCJAfobL+bPPTq0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Rm85Z0UzNm1BSTkwa1J3RTh6V3kyTzUyU1Z2RkR4YzdOU2JnMmliRmxUR2NV?=
 =?utf-8?B?RTNNQ3I1bE1weDRFRHZZa0JHWG94S2RWT2NsQnJHTFZScHFOWUFpUksrOEdZ?=
 =?utf-8?B?MS9nNlhoSVFtbFQyRy9keExhZFArNVhEL2ZNWmdNek5RVUcrOGkxS1FKRWJC?=
 =?utf-8?B?bHVHUy9EYmo1dTVqK3VzeURrcUhMdnc0K2N5cWQ4d0tHdEt2ZVl3Slh4RmNo?=
 =?utf-8?B?a1FuTnRGUWtybTkwZTNmZWhQTVpBT25KZHRHUUl2cUpVdkJOeXlCdGZCS2ZZ?=
 =?utf-8?B?Z3pNL09FcFN3OXlCSHgyM2hQYldFZmxwaEorK1h3VitJUk5LWWgzUldhcmps?=
 =?utf-8?B?ZlJrd0w0MVVkbG1ORTdudzRseEdIRENVOTlsTmx5eWtoTEZhZzh3djM2cnBr?=
 =?utf-8?B?OXJWWWhidkFnTkpSUldLVW9EdlhwTjhrTXdMOGJuNzZxMW0rTXFXK09sQmVN?=
 =?utf-8?B?VnBrTzZBaEk0L0FoL2tKWTdMYWZwaGtaYlo2ZUdBL0ZaQkxYcTBmbWpFdjVq?=
 =?utf-8?B?TGNRbFVraElzbk5RMkloVjZWSktoeTdqdStOc1g3akpwNW54Y09BcCtmWXMw?=
 =?utf-8?B?VHROMWd5M2ZJck9wOU4xcnNCZ1hiT0xHbHZxVmFMczNITDZzSStwdlN4Nlpr?=
 =?utf-8?B?QXQ1bHVEUWJnMkJWOS85VS92MFBwUHF1WlJEWEwxZ0ZyRnlRcDF3ZGdOMmgr?=
 =?utf-8?B?Vmlndml0ZmtsV2VXWE9yRi9VZGRjZ3BxNU8zNEtRdWZ5ZWsrT09TcmNoTlNh?=
 =?utf-8?B?MWk3Tzh5V1BWQ3ZsV0dZN0I3NXNSQ1JxUEtnazUyQ2lCVFB5Y3djZm95UkZ5?=
 =?utf-8?B?eFRSY25mc0M0UktOcERZZklkb2V5R2VYU2tkdUU2Z1lpQ3dnYUdRYkhabnZY?=
 =?utf-8?B?SUZkYzFqVHRhMzR0c09WcmJEZ3NOUk9DSmpJUnIyUE5tUDlBcWZHL2lOdGRv?=
 =?utf-8?B?SFVhbU1oVmZlN0M5T1pLZm05VEFzL3ZmeUFIelNvTUErWHdyVGNJbzE4c2dJ?=
 =?utf-8?B?TEZoOEdnNUM5OGhBRVJ2alJDL1hHM2l2U2h4ZW42RmgzaG9TYk9EZnhsU1Vq?=
 =?utf-8?B?WjJ5MTdHMzVkcXdwSy9oNUJlQzhaaENCci8yMG5EY2hCQ2Q1Mjk1U0VVSWx0?=
 =?utf-8?B?VnBwd1B2ZWQ0UXljYXJqQ284SmpIYTZsKzcyVjVLRU5qQUZHcnB4M2R4Vm9u?=
 =?utf-8?B?NXNXb0dNMmhYK2NOZmhMM1BsNk1JYWtoNE11dmRuNHlJUzJOQjJXOSsvYU4v?=
 =?utf-8?B?cGpiODdNWTRzaW5lcmowVXdQK3NDMWhtZEhvT3JvYVNySU4vbHhJbVdsWEtR?=
 =?utf-8?B?WGZid1VkSytIZ0RBVEdCbFYrZXpKdWtoMzRaVC9NczZDcGl4WjhHWWM2WnYv?=
 =?utf-8?B?eTNUeXlnVWRLNzRtVW0xbFE3c2NZUnBybzQ2Q2NhRVFFa1JoMzhHYjNXMnlu?=
 =?utf-8?B?NVhET3Rqc3pvdlJveEFoK2YyVm04MDV5Wk1LNHBUZTdiSlBjYS9PQ1B3bzls?=
 =?utf-8?B?b0ZjZFNhRXNBM21hdDFSSmxuRlVSSDRNaXoyNmFySTAzbitKb015MHNBeU9U?=
 =?utf-8?B?RGN0NFJ0bjYzdkhwVmNZbFZNYzA5OGNqcHduaTBzWVg0ODYrcDRQWGpqOHBG?=
 =?utf-8?B?OEdiaUduZGM4dnBaYWNaMklmMUV0dFNMeEtBSEJCWVhDTFB2S1lsRXYxRnUz?=
 =?utf-8?B?ZDN2S3owcy93QkE0SktTalZXRXprN012RkRlT3lGQjI4ZG03SUk1QWtVYXA2?=
 =?utf-8?B?QStvUm1tNWFTNDNLMkwvOHIyd1VkdjRCRVBEVWY5aWEwOVAvUG0veU45S3Y4?=
 =?utf-8?B?STlXYmUxT3IrTk5DM0pUTkxpRU1VOVFscHNJTVV5dkJhQ20waWlwYWl0eWlx?=
 =?utf-8?B?NUtocFcvcXpHdGZGZlhNUUd0QnZFdWt4S0wxeStRcEpCbERoUUZpOXJWMlhy?=
 =?utf-8?B?ZUgvVkJuc3BHN21hWm83QmxmUDEydytubUJkZkxaak92TXlVcEl0N2lMeVdV?=
 =?utf-8?B?RzFSTG1JSHhvbVRUemNBYlVWR3ZXaWRJTU55UmRaR3pUZmpDSEZydEYxK3hh?=
 =?utf-8?B?VlZ5MmowQ0lpWkZtNC9aRU04YjFEWmxqL2pzQ3l2MFRNa05kbzQ1MEIrcGJZ?=
 =?utf-8?B?VmN0YmRuemFFaHdtbWpIcCtoQW1DcW5zWk1RZk4xRHhVbllTTXFVNEVKYXJy?=
 =?utf-8?B?RCtrWE5aVmlFdDhrN2l2ZUhZTnl5WGUvMUQvKzQrVGJtSUNBSEpHeFIxajd4?=
 =?utf-8?B?d1BJUmZDSmxDaUxORy9aSktxeE5nPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B5D1B64686DE5443AAFD4D705DC7C8E0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32040eb2-3b02-462e-0514-08dd703a1334
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2025 09:54:48.8882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Wt3FOF5eXDNkuaii80Jzef9cOs742Wvy7h1go1RNFshUcytatkw2/PCOfm6/jXJUdWQjBSo5URytLS+0ezkKNZK4H+DxYuxik79cHaWUUE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6858
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

T24gU3VuLCAyMDI1LTAzLTMwIGF0IDIwOjI2ICswMzAwLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdy
b3RlOg0KPiBEaXNhYmxlIEZCQyBjb21wcmVzc29yIGNsb2NrIGdhdGluZyBiZWZvcmUgZW5hYmxp
bmcgRkJDIGFuZA0KPiBjbGVhciBpdCBhZnRlciBkaXNhYmxpbmcgRkJDLg0KPiANCj4gdjI6IHVw
ZGF0ZSB0aGUgREcyIHJlZ2lzdGVycyBmb3IgdGhpcyB3YQ0KPiANCj4gdjM6IHVzZSBsb2NhbCB2
YXJpYWJsZSBhbmQgc2luZ2xlIGxpbmUgcmVnIGRlZmluaXRpb24gKEphbmkpDQo+IA0KPiBCc3Bl
YzogNzQyMTIsIDcyMTk3LCA2OTc0MSwgNjU1NTUNCj4gU2lnbmVkLW9mZi1ieTogVmlub2QgR292
aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5
OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiAtLS0NCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMjIgKysrKysrKysr
KysrKysrKysrKysrKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmjCoMKgwqDC
oMKgwqDCoMKgwqAgfMKgIDYgKysrKysrDQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRp
b25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMN
Cj4gaW5kZXggZTg5Y2VlMzIzZDhiLi5jZTViMWUzZjFjMjAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBAQCAtNTIwLDYgKzUyMCwyMCBAQCBzdGF0
aWMgdm9pZCBpbGtfZmJjX2FjdGl2YXRlKHN0cnVjdCBpbnRlbF9mYmMNCj4gKmZiYykNCj4gwqAJ
CcKgwqDCoMKgwqDCoCBEUEZDX0NUTF9FTiB8IGc0eF9kcGZjX2N0bChmYmMpKTsNCj4gwqB9DQo+
IMKgDQo+ICtzdGF0aWMgdm9pZCBmYmNfY29tcHJlc3Nvcl9jbGtnYXRlX2Rpc2FibGVfd2Eoc3Ry
dWN0IGludGVsX2ZiYyAqZmJjLA0KPiArCQkJCQnCoMKgwqDCoMKgIGJvb2wgZGlzYWJsZSkNCj4g
K3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IGZiYy0+ZGlzcGxheTsNCj4g
Kw0KPiArCWlmIChkaXNwbGF5LT5wbGF0Zm9ybS5kZzIpDQo+ICsJCWludGVsX2RlX3JtdyhkaXNw
bGF5LCBHRU45X0NMS0dBVEVfRElTXzQsDQo+IERHMl9EUEZDX0dBVElOR19ESVMsDQo+ICsJCQnC
oMKgwqDCoCBkaXNhYmxlID8gREcyX0RQRkNfR0FUSU5HX0RJUyA6IDApOw0KPiArCWVsc2UgaWYg
KERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KQ0KPiArCQlpbnRlbF9kZV9ybXcoZGlzcGxheSwg
TVRMX1BJUEVfQ0xLR0FURV9ESVMyKGZiYy0NCj4gPmlkKSwNCj4gKwkJCcKgwqDCoMKgIE1UTF9E
UEZDX0dBVElOR19ESVMsDQo+ICsJCQnCoMKgwqDCoCBkaXNhYmxlID8gTVRMX0RQRkNfR0FUSU5H
X0RJUyA6IDApOw0KPiArfQ0KPiArDQo+IMKgc3RhdGljIHZvaWQgaWxrX2ZiY19kZWFjdGl2YXRl
KHN0cnVjdCBpbnRlbF9mYmMgKmZiYykNCj4gwqB7DQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5ID0gZmJjLT5kaXNwbGF5Ow0KPiBAQCAtNTMzLDYgKzU0NywxMCBAQCBzdGF0aWMg
dm9pZCBpbGtfZmJjX2RlYWN0aXZhdGUoc3RydWN0IGludGVsX2ZiYw0KPiAqZmJjKQ0KPiDCoAlp
ZiAoZHBmY19jdGwgJiBEUEZDX0NUTF9FTikgew0KPiDCoAkJZHBmY19jdGwgJj0gfkRQRkNfQ1RM
X0VOOw0KPiDCoAkJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgSUxLX0RQRkNfQ09OVFJPTChmYmMt
PmlkKSwNCj4gZHBmY19jdGwpOw0KPiArDQo+ICsJCS8qIHdhXzE4MDM4NTE3NTY1IEVuYWJsZSBE
UEZDIGNsb2NrIGdhdGluZyBhZnRlciBGQkMNCj4gZGlzYWJsZSAqLw0KPiArCQlpZiAoZGlzcGxh
eS0+cGxhdGZvcm0uZGcyIHx8IERJU1BMQVlfVkVSKGRpc3BsYXkpID49DQo+IDE0KQ0KPiArCQkJ
ZmJjX2NvbXByZXNzb3JfY2xrZ2F0ZV9kaXNhYmxlX3dhKGZiYywNCj4gZmFsc2UpOw0KPiDCoAl9
DQo+IMKgfQ0KPiDCoA0KPiBAQCAtOTIyLDYgKzk0MCwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9m
YmNfcHJvZ3JhbV93b3JrYXJvdW5kcyhzdHJ1Y3QNCj4gaW50ZWxfZmJjICpmYmMpDQo+IMKgCWlm
IChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxMSAmJiAhZGlzcGxheS0+cGxhdGZvcm0uZGcyKQ0K
PiDCoAkJaW50ZWxfZGVfcm13KGRpc3BsYXksIElMS19EUEZDX0NISUNLRU4oZmJjLT5pZCksDQo+
IMKgCQkJwqDCoMKgwqAgMCwNCj4gRFBGQ19DSElDS0VOX0ZPUkNFX1NMQl9JTlZBTElEQVRJT04p
Ow0KPiArDQo+ICsJLyogd2FfMTgwMzg1MTc1NjUgRGlzYWJsZSBEUEZDIGNsb2NrIGdhdGluZyBi
ZWZvcmUgRkJDDQo+IGVuYWJsZSAqLw0KPiArCWlmIChkaXNwbGF5LT5wbGF0Zm9ybS5kZzIgfHwg
RElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTQpDQo+ICsJCWZiY19jb21wcmVzc29yX2Nsa2dhdGVf
ZGlzYWJsZV93YShmYmMsIHRydWUpOw0KPiDCoH0NCj4gwqANCj4gwqBzdGF0aWMgdm9pZCBfX2lu
dGVsX2ZiY19jbGVhbnVwX2NmYihzdHJ1Y3QgaW50ZWxfZmJjICpmYmMpDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaA0KPiBpbmRleCBjNTA2NGVlYmUwNjMuLjQ5YmVhYjhlMzI0ZCAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBAIC0xMDc3LDYgKzEwNzcsNyBAQA0KPiDCoA0K
PiDCoCNkZWZpbmUgR0VOOV9DTEtHQVRFX0RJU180CQlfTU1JTygweDQ2NTNDKQ0KPiDCoCNkZWZp
bmXCoMKgIEJYVF9HTUJVU19HQVRJTkdfRElTCQkoMSA8PCAxNCkNCj4gKyNkZWZpbmXCoMKgIERH
Ml9EUEZDX0dBVElOR19ESVMJCVJFR19CSVQoMzEpDQo+IMKgDQo+IMKgI2RlZmluZSBHRU45X0NM
S0dBVEVfRElTXzUJCV9NTUlPKDB4NDY1NDApDQo+IMKgI2RlZmluZcKgwqAgRFBDRV9HQVRJTkdf
RElTCQlSRUdfQklUKDE3KQ0KPiBAQCAtNDI0Miw2ICs0MjQzLDExIEBAIGVudW0gc2tsX3Bvd2Vy
X2dhdGUgew0KPiDCoCNkZWZpbmUgTVRMX0NMS0dBVEVfRElTX1RSQU5TKGRldl9wcml2LA0KPiB0
cmFucykJCQlfTU1JT19UUkFOUzIoZGV2X3ByaXYsIHRyYW5zLCBfTVRMX0NMS0dBVEVfRElTX1RS
QU5TX0EpDQo+IMKgI2RlZmluZcKgDQo+IE1UTF9DTEtHQVRFX0RJU19UUkFOU19ETUFTQ19HQVRJ
TkdfRElTCQlSRUdfQklUKDcpDQo+IMKgDQo+ICsjZGVmaW5lIF9NVExfUElQRV9DTEtHQVRFX0RJ
UzJfQQkJMHg2MDExNA0KPiArI2RlZmluZSBfTVRMX1BJUEVfQ0xLR0FURV9ESVMyX0IJCTB4NjEx
MTQNCj4gKyNkZWZpbmUgTVRMX1BJUEVfQ0xLR0FURV9ESVMyKHBpcGUpCQlfTU1JT19QSVBFKHBp
cGUsDQo+IF9NVExfUElQRV9DTEtHQVRFX0RJUzJfQSwgX01UTF9QSVBFX0NMS0dBVEVfRElTMl9C
KQ0KPiArI2RlZmluZcKgwqAgTVRMX0RQRkNfR0FUSU5HX0RJUwkJCVJFR19CSVQoNikNCj4gKw0K
PiDCoCNkZWZpbmUgTVRMX01FTV9TU19JTkZPX0dMT0JBTAkJCV9NTUlPKDB4NDU3MDApDQo+IMKg
I2RlZmluZcKgwqAgTVRMX05fT0ZfRU5BQkxFRF9RR1ZfUE9JTlRTX01BU0sJUkVHX0dFTk1BU0so
MTEsIDgpDQo+IMKgI2RlZmluZcKgwqAgTVRMX05fT0ZfUE9QVUxBVEVEX0NIX01BU0sJCVJFR19H
RU5NQVNLKDcsIDQpDQoNCg==
