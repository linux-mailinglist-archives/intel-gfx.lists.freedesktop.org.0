Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A57A0B518
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 12:06:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CEDC10E648;
	Mon, 13 Jan 2025 11:06:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZfGUWdz8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A922210E647;
 Mon, 13 Jan 2025 11:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736766396; x=1768302396;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=svvbhFdGG6omZbo9GMtjECBjqqrDI8PN0P2OlhhqYts=;
 b=ZfGUWdz8L+0iJrGhEWxv+1DKvj3loDcL7N6dD2U3JdLgD6RAqVm4sI+8
 bQfX7Oc5+bN7b9wKgscJfoRWLwTA4k+yScMrU0w0Ui9kwfpnsuaF4jJFF
 BfWESpvoqGRtUDRqXGHgn0Wm29T0h/jf6pryRM/Vg4GAxelzBybIPSrYc
 zrVfQY/lk/RKWAta84X1svut5LQfLSyzUzESvXifRyrwsueJFc/iCiLbv
 Y6JUK00l2aVF2oKy/4u04R4eCmMGMla3bWWYPEOFBj8rFbthn8N9pqyov
 NwKjh2OAA4sYB08ga/RA1V4LDkZtUo7VdAV08uxCDw8hy3hCL5u9IT3pp Q==;
X-CSE-ConnectionGUID: AyrLU99iTHamqjT1/MuYgg==
X-CSE-MsgGUID: Xk70X4LCTWqiP1fqEL3Icg==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="37251794"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37251794"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 03:06:35 -0800
X-CSE-ConnectionGUID: oakkVyjIRoW6vvCXXqCEuw==
X-CSE-MsgGUID: QqshREhJQ3WvLqCeuk7nAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104255001"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 03:06:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 03:06:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 03:06:33 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 03:06:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fz/+t1rwZ4Pv30Blirc3Wn0fHVhY184wq8CGwXWNaQiT6uV4y2q3PpNTn8JTv44Yis0+ZSG9Z468bXa8yz0LHiJJoZE0MWz+mAll1ObsF/SNH0lXGMURBW0+FmJiGAo29SNXqh8QtoLw/v8/gopmay/473WYLAffemGwX+surx/KemByqTTnokiJHHUTVWzV1hNil0bryEA4GdgYRpu3bGEf0ueI/9gFqdSWRSxku1s8gQFN/XAD4dtZANha8fpqypd+dpYjhdXNbiyhG0odUEKk2jKlDt4kweMRIB61VV/vghEF627NBPSr6pU0a3xoV0piVoCZXae0kmudNb0y4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=svvbhFdGG6omZbo9GMtjECBjqqrDI8PN0P2OlhhqYts=;
 b=NEuc/5ChE4DfMA4dAlmm4XgqO+xivJ+19n9dNqeVxV3jgA+VPgQOv7dgtCTAx7F3yTuNtWmj2MeWVLGkHBy9+WqqtmtM2mpRKsf2tliqWcSxOpgkzOQrKyIuYlbNNq4ks2voZUSaprFjA+ekEcDNEpJaEYODOMtRkaJw4g7+ruT7nN+ugBzVhS3Kh7b6bodeaXAYUzMR6/3P+86YcjN35HxyeVga5cOzlWLh6ZAHT2F2K4C61BOBvuLKHLKjFDz7ybBhAa7DfOtwsemZ7UYWGyC7pUJ3/PLuhp5Vd36Vvy7lxZLFTozXrJPEL+UU3zC+tj6aFym6McbyfFUrPapzhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH8PR11MB8285.namprd11.prod.outlook.com (2603:10b6:510:1c5::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 11:06:03 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%7]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 11:06:03 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 2/4] drm/i915/psr: Enable Panel Replay on sink always when
 it's supported
Thread-Topic: [PATCH 2/4] drm/i915/psr: Enable Panel Replay on sink always
 when it's supported
Thread-Index: AQHbYoJSD0zeGbKqbEmhtbRD2YU9+bMUkRGA
Date: Mon, 13 Jan 2025 11:06:03 +0000
Message-ID: <MW4PR11MB7054179FDDCF853E5167C3D4EF1F2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250109103532.2093356-1-jouni.hogander@intel.com>
 <20250109103532.2093356-3-jouni.hogander@intel.com>
In-Reply-To: <20250109103532.2093356-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH8PR11MB8285:EE_
x-ms-office365-filtering-correlation-id: 0a2400df-6c79-441d-2245-08dd33c2451c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Z2oycDV2TmFYM0MvQ0V4Zng3U2Q2NUQzZDVFQWVxL3ZVUDVNODBqTXZKWmRJ?=
 =?utf-8?B?Z2gzb0lZd044NTF3V0NBV0pqSnJoRWhXK2pYRzhwZzhpcXJxVUpaY1VheVcy?=
 =?utf-8?B?d3U3bWdPREppY3BrZ0sya0plT2lBNGtNTEVYd1VMaFpaZ0hlbFNQUDJuMm14?=
 =?utf-8?B?bHJFUVd6OFppR2N4MWVqd3hZMzNhNzg4QVBuQ2MvaEROWjRINGNxMXltMGJz?=
 =?utf-8?B?VFcwMVQ4UlEzOWxkcmRxT20wVlBHanJqN0N6WXNKOUNJQ0tzUE9pbXlGLzl4?=
 =?utf-8?B?M0U0bzNCTHhHY3Z5cVdJTDhCdC9ZZHkxNXlzaTNlOXd6eWQ2aWhUZ1VzOU5I?=
 =?utf-8?B?Wk93VW1kM3NNb3FhSnJENzl3ekp2QWFrcTMybllxTWNlTEpYRVk4MWlnZUNu?=
 =?utf-8?B?WmVuQ1VWTEZHR1hXNmVZQzhUWlJncDc4bVBVdlJleDZjMFBzV2lHMEV3N2lh?=
 =?utf-8?B?QXhJcjM3RWo3ektzak1USE5sanRKMCtad1cwaDdXRXovU3BHTWtEVUp3U3Q5?=
 =?utf-8?B?SDl4dzNaU2xCTzQyWFJ2OEQzdkVvL25KcE1sTFJwbm04OUd3MjlRS2FnUW13?=
 =?utf-8?B?VGd1aDFDaXVNTXg5L0hzWjduTHRFRDgyYUdmeG92akJHTU1BaGZMSEVrRnB3?=
 =?utf-8?B?U1RIbnNEOUZMQWhkL1V2L2luS3c4VTJ3T0FacllnNHJSQXoxQW5aTXhmUkJM?=
 =?utf-8?B?WXplTUtlUW56RmIxeUp0blVmWjNzY1NJY2V1dS9PclVkMUpYaVJzRFBZNm1w?=
 =?utf-8?B?VnZMVTVZK1hYVzNOUlZjVWdVejlwa3NCZFA3ODlSR2h4TGR2U3Yyc0svOVRS?=
 =?utf-8?B?WGJpeFVvTENib20wVmpNa05TcVU2WmFKbUh2V3VJSDFRb0NncWwyamZVRWpO?=
 =?utf-8?B?dW1KZWZkTXpLRk42QzczWG4xSHhvMkpocUhONFo2VnlQOGFjTGxqa1NxeElU?=
 =?utf-8?B?eVNZLzlaR1pkL0ZTQmt2ai9hNlUzSkM1QnFiWnMxUXNFZUltR3FOWTh4R2Jy?=
 =?utf-8?B?azZ1YkY2ZUFpdGU2TGxHb09KYUtRVGs0OWU0cDhVVE9wc0JKOGNvdW41aFZK?=
 =?utf-8?B?ckJiWjVIVUlhUDVBekJNOXNIN1BTVHRNWGlKZytlVGJEZHlFSmtscHF5M2tS?=
 =?utf-8?B?cUVvcktjd1M2S0UzM3ZuUkNHdlViMDZ0TkFmMm9lbHlnVzlzR1FONEVVcFhM?=
 =?utf-8?B?MmJWQ0tZV0J3YWhKaXEyS2Y4cC9QTzcvN0RSTEw1M2JZYWdJb2hjUmM3cmlI?=
 =?utf-8?B?b2QvQWZRdFBRYXZiY3psVmpmMXhsTXIxRjdvcWZ0YW5aRm9pWlEzVDU1VkpT?=
 =?utf-8?B?dm1Zak5sa1JORitpWUIveFJaNXRPYVZ5dWlRSm5zbjd3ZjBzR05rcjg4U3Bo?=
 =?utf-8?B?Um9yQ0pHNUNYRkNXK2NFazZaOG4xTHc0ZjNhVHBnSUpWeXZ1MFA4eFRNZHZB?=
 =?utf-8?B?YmtQdG1EZzhTRHQ0b2JyUjMwTmRtM0M0L3lDUG43Tlg3SDdDcitJY1dueGhG?=
 =?utf-8?B?VHBURU5kZjE2NStnbXZvQ2NGd3hpK2dyeVpNSW9vN01HWU5pOWFQQi9YTGtu?=
 =?utf-8?B?Tmxhd1Y0ZmVPRjh1VjdCMUhoWlIvMDlsVDZORzBpNXdFQWp5VHRXb1RaT2ZV?=
 =?utf-8?B?dmllYUtNcG56cHBwV1BldnllZG1lRjFzclI4d3FSWmZkMXkvVkF0Yk1CSGZ4?=
 =?utf-8?B?TithRGxuQXlabmYvQXNjeWNJRG1PVmszdGNMV3hpRFJYTDdsQjNiWWtVNWpM?=
 =?utf-8?B?V2Rud0VtdDNiYjlHV2tGd28xRWE5NmY4aEs0YTF2VTNlNnY1UVRqVUwzUmEw?=
 =?utf-8?B?Qnc1bWtvVDZDUkVPZjRlNzdlaXY1OWpzbjhQcW5DY0o2elN4b05yKzJKMHlN?=
 =?utf-8?B?dmNsS2YzZVFIaVZMajBvZ0c1bmJvUVo4YnZLdXhST080SzUwN1dGQkRwZmMw?=
 =?utf-8?Q?q+xn62UmL8Plz19x4E3Z399Ezk1zX16E?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QVhrSGlHV1o0MC9oNUNJR1ZoQ2JWT0lSSHJQazFrbFEvY1NWZEFNZDBuRk0x?=
 =?utf-8?B?ejdBT1o2L2xxQlZwWXk2aTE1RjQzM1Y0ZjBBeC9yZ1puK1BKbW5TRnR0Y21w?=
 =?utf-8?B?VzluaElyWUlPNE4vb0V5WmRNbUgzQm1QdGx1TWFSTEhsWmswZUpmMSt6K2cy?=
 =?utf-8?B?ckpiVExBM1c4MTFuUWtjSEV6ek9CWnUxWFR4Wm9wbWEyeEtpRytOWU5nN2RM?=
 =?utf-8?B?czA1YUFudFVPL1BUQ1d1VjhLVzRwLzYwQmsvaGpyZk1yWHV1TlhkMVpyVVk1?=
 =?utf-8?B?V2JCOXJFYzZINVFVZHdkU1diaWl6elJEYVlMTUJia0VXeFRVZUdLQi9GdW0y?=
 =?utf-8?B?N1hjcldOSHVXb2xQcmdCU0NvdUlQaVJQNkpISDdveisyOEUvQS9OVEFGYWtU?=
 =?utf-8?B?TGFRM2w1dTVNYURSZGRWazRLMUdMM3MxMVQ2SGcxeW12OXduRndpVnRCRmpi?=
 =?utf-8?B?cnIxVWY4Rk0wTXNvbFZMTDJVZUlJcWYrZ3JGZ2EzbEFLZFZJUEN1dUEzUzUz?=
 =?utf-8?B?VngzcWZCSE5iR3QwcVNIb2d6YVF0SVI3R0ZHdFQzMFJmS1pvdnRwYWluQ1Y5?=
 =?utf-8?B?bjFBbTBnWDcxZmtTL21aUURIYmlBbC9tYlh6cUtKVEFua2g4MHZPS0V5NHFB?=
 =?utf-8?B?VFVCQWhjRnB1cE9mendZcjJOZ3N6VDNOT05LWDlZVXB5UHIwNDIrQ3dLMWQ3?=
 =?utf-8?B?WUQydUl4V2taMzQvbS9nZDVJdk9WMnFPbTlhb2I5bGNBQmJSVGEzSVNrczFk?=
 =?utf-8?B?U05uTnc5bGFERDJXWVBBUlV0N1d6Y3c0aHFsd3gvWnpvelJnSldPSzFGYzVV?=
 =?utf-8?B?RXlaS1duRVQxOEhYUWVMUjBOVGNWZ3hQbThtNmx0MGwwRWd1OHV0Ung4YmFs?=
 =?utf-8?B?cmhrSm1Ybk1uU0dYTlBiMDg0bGFZa2l4TjE5L1p3MUhWSlFoUE9tY251R1Nh?=
 =?utf-8?B?Und0YUd1amFDREtsQkEvSWN4cjhYMm94WXJYcndQMHNZMlFwVG8yaEZhaFV2?=
 =?utf-8?B?WXVLcEw3bFNwd1ZxUkRTR3NhakVhU3h6UDkyam5PUXhvNzR3dWpzd0RGaVJ4?=
 =?utf-8?B?RkNiRmVtOW1pR2kvYVg2V20wVjg5dm04YzZ5eU1LUEpub0h2cm9MVTVDbzVl?=
 =?utf-8?B?SzRVcWZEc25OZ2VSRVl2eFhseHhvekg2djdXYk1NaVFPak02WGt3OTJaN2Zl?=
 =?utf-8?B?Rmo4bHFIaHdhNUxVYkJoYmVLSXBnUE5kTlBHU3hSa3VwNWxQUFdsV1owRU1U?=
 =?utf-8?B?eUJBOGQwZ3BDNjFnbWZNc0pGYk1ZWDc0THZTZnh2dk5QZGhTODhuVmJrNHN3?=
 =?utf-8?B?RzdVOTk3dG5aUkVad0hucjdCYWRkYTBTMnlsdUlKR21OQzNsVXZmUEFSVXUr?=
 =?utf-8?B?UjkyZlZ4TUZDMHBhZkxjME9GWG02QTh3RFYzZ1RwZmJVMUVhZ3FGYmFLV2lK?=
 =?utf-8?B?RXFZS2pOSlVVa1hwMmgzK0VrVFRKR1RyNkpIVmNZWmsrREM5UlJyelY4Y2ta?=
 =?utf-8?B?eDF5WEdaQTE0WHd2K21KOUNodXJJbnhCUVl3bUF3WnBQVkhJb2tMQWpNMWdo?=
 =?utf-8?B?c2EyQmkrOXBJWGZjeDd5cnc1dC9nNUJVY2VDTVBUV3NsN2tKN1JqRzRreXQ0?=
 =?utf-8?B?MTltbkhtOEk3OExlZjlsWWtkRUZYZjBnZ1dPa1BrYlZVT2ozUzJ1OXJYT2Ro?=
 =?utf-8?B?ZUVScGd2a1VJd0R4S3krU1VHWmFnTkRzemk5b3hVV085SGlWN3Ira3ZjTXFS?=
 =?utf-8?B?YkdxNjJFWndLRkNic0lML3F1ZXNDa2lZb01aY0RvUUYyYVQwbXJwQU9uS21u?=
 =?utf-8?B?SWRReUJJZ0Y4UUhlSndNaFE4MmNhZEIzSFYrOHpwbGdRKzhLNlBrSzl4STBH?=
 =?utf-8?B?REhvdkVaRlZ5QzZGc1VpNWl1NE15YmFmd1JPY1ZXYnNLeDlRRGJZZHhtcjFz?=
 =?utf-8?B?MkNtSXFkNlMrcjRYeXArRWpYRmlJU0F1Z2Z1UnFCU2R1K2ZyM1drTXpIaTIr?=
 =?utf-8?B?VnNZWXpKZi9EcG5hMmJ1ZGgvVGRFdEdFTktWcWxpSWFYS3FScktOeTdSUHhX?=
 =?utf-8?B?dnRyWVAvSGx4alcwMXJraVpETjNTYmdub1k2YjcyTHd1OHh4WkxGd3hyclVQ?=
 =?utf-8?Q?XPY+DiurSM05Mm+ab1SBOFeGg?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a2400df-6c79-441d-2245-08dd33c2451c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2025 11:06:03.2402 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DDLMHQslCWrDOMFVdO88oi9z1du0/kCxLf09n42QUOTCcKvMyt+eajoiUAGw4kPXvycEXwDsaV+l9x4Jhqdwww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8285
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBUaHVyc2RheSwgOSBKYW51YXJ5IDIwMjUgMTIuMzYNCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFtQQVRDSCAyLzRdIGRybS9pOTE1L3BzcjogRW5hYmxlIFBhbmVsIFJlcGxheSBv
biBzaW5rIGFsd2F5cyB3aGVuIGl0J3MNCj4gc3VwcG9ydGVkDQo+IA0KPiBDdXJyZW50bHkgd2Ug
YXJlIGNvbmZpZ3VyaW5nIFBhbmVsIFJlcGxheSBvbiBzaW5rIHdoZW4gaXQgZ2V0J3MgZW5hYmxl
ZC4gVGhpcw0KPiBtZWFucyB3ZSBuZWVkIHRvIGRvIGZ1bGwgbW9kZXNldCB3aGVuIGVuYWJsaW5n
IFBhbmVsIFJlcGxheS4gVGhpcyBpcyByZXF1aXJlZA0KPiBhcyBEUCBzcGVjaWZpY2F0aW9uIGlz
IHNheWluZyBzaW5rIFBhbmVsIFJlcGxheSBuZWVkcyB0byBiZSBjb25maWd1cmVkIGJlZm9yZSBs
aW5rDQo+IHRyYWluaW5nLiBBdm9pZCBmdWxsIG1vZGVzZXQgYnkgZW5hYmxpbmcgUGFuZWwgUmVw
bGF5IG9uIHNpbmsgYWx3YXlzIHdoZW4gaXQncw0KPiBzdXBwb3J0ZWQgYnkgdGhlIHNpbmsgYW5k
IHRoZSBzb3VyY2UuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jIHwgMyArLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYw0KPiBpbmRleCA0ZjljNTA5OTY0NDYuLmIwZWE1NmUxNjZjNSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IEBAIC0yODkwLDggKzI4OTAs
NyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3QNCj4gaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJCQkJICAgIGNydGNfc3RhdGUpOw0KPiANCj4gIAkv
KiBQYW5lbCByZXBsYXkgaGFzIHRvIGJlIGVuYWJsZWQgaW4gc2luayBkcGNkIGJlZm9yZSBsaW5r
IHRyYWluaW5nLiAqLw0KPiAtCWlmIChjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5KQ0KPiAt
CQlpbnRlbF9wc3JfZW5hYmxlX3NpbmsoZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpLCBjcnRjX3N0
YXRlKTsNCj4gKwlpbnRlbF9wc3JfcGFuZWxfcmVwbGF5X2VuYWJsZV9zaW5rKGVuY190b19pbnRl
bF9kcChlbmNvZGVyKSk7DQo+IA0KPiAgCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxNCkN
Cj4gIAkJbXRsX2RkaV9wcmVfZW5hYmxlX2RwKHN0YXRlLCBlbmNvZGVyLCBjcnRjX3N0YXRlLCBj
b25uX3N0YXRlKTsNCj4gLS0NCj4gMi4zNC4xDQoNCg==
