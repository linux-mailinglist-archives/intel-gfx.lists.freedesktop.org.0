Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCEE9BE1FB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 10:11:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E871310E68B;
	Wed,  6 Nov 2024 09:11:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gIKWc2yd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3594D10E1C2;
 Wed,  6 Nov 2024 09:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730884311; x=1762420311;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=gYVtTCFxshpblY4DVuwepz1KPJMq5k8Ad6zCZn7T044=;
 b=gIKWc2ydwd8xHYlxTDnrlmg2H6u6GhiHpDZiM+uh1RayK1UWAUYqeHDo
 Yz58RFTDsLSEeuthte2rHfnwVCuBOJT9px76RA3xpToIyHftMF8KZM71i
 C3yzyDVtwrt0uPYXdSr1qZEYoP7BKjLtVbUXNJ5hA1g61M1ScqlovmPf7
 8Z+jUYkWXMTJRIXabslFjUCIfJe7x2bIEZZhxyBUsv1i0Xb68lDbV54CY
 OvMuEqDePcGefC9+93ZjaKtbjKUy/0LH8/R2pI77T/6HLUj+8bS2k9tBB
 u0Ri8RAYCPDf0Eb2JJsX6gA0Z9o6O0blyilJkbEReWy6sZdoEZHYUFDeR g==;
X-CSE-ConnectionGUID: YXcF+AEVTA2iIZgr7c6Z+A==
X-CSE-MsgGUID: 2b2dY80WSjSBm5zTXvgb2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="30556368"
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="30556368"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 01:11:50 -0800
X-CSE-ConnectionGUID: SEw/3oCkSUiX2oPi7SP6tg==
X-CSE-MsgGUID: 2YBxMCylQXucxmDWkmVzKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="89566962"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 01:11:50 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 01:11:48 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 01:11:48 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 01:11:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L/LyFeV7zx2ueVt1hQzJEpaBtquWc5lvbjeYcjtkBVfYypMniSkFz2v/ZFp2mXMDBXM91u8DhVoyONpO278c9bRSyHtW3X7et2hxg9/WMzTORcsrCtkNE5Lvcm9DWxfpJmkK0ugbKKsnlGlwdsS2B3LcFRcrKpsiepVe4h43gd8gTOI3ZCTZL+nWawK2cThZ27i0DIIVXHf8SpfXSagsjWeA2WV17ZCPPsVDp9R5dKEBF9oVjfSlW99oDvRXjqPBczNtA0t6kn+90L2aA3F2n9iEzRbhUKUvhqdpyZ8Jcb+W5WHGCo7PEi6JbuDBr9sETc9jqgwMTkAWI7/zCuuCVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gYVtTCFxshpblY4DVuwepz1KPJMq5k8Ad6zCZn7T044=;
 b=Rxk4NNwMIHPsS5CmawMcT9oaJX/MKpUHxwBkthr/WISs5lFTUmn+uL74irTH1pF5jLR633wrtLDcOJB4WFmMdEdGlZKUZovjwPY/5b+XLIIJ0sAjHDMTy3FGXrzDAc03DoD5Vd0321UWOsmnYbrsBBu5ohpGSpVZMVyaQJHw4x1xgxRY4Mj90HwLWo5UAX/HJPRXGb14VUB3LauCEsQdyuVJKRjNqNmUNBxEkUElvpA7Z7Mi5IMDiXfum7f+DrEhHADNlyFn83HWwL4Ttb+q6GNrWdAFgCkTIp+dVoa+VMAd4XD2L9XiwDzFaesiP5i7dDq9PBq0TebcZFVlVxulwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SN7PR11MB7568.namprd11.prod.outlook.com (2603:10b6:806:34e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 09:11:46 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8137.018; Wed, 6 Nov 2024
 09:11:46 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 03/15] drm/i915/display: convert HAS_4TILE() to struct
 intel_display
Thread-Topic: [PATCH 03/15] drm/i915/display: convert HAS_4TILE() to struct
 intel_display
Thread-Index: AQHbLt3MSG2Fxv+moECM9iGIt31bR7Kp+hAA
Date: Wed, 6 Nov 2024 09:11:46 +0000
Message-ID: <063516a5dcbc7987f7e53e0bae7c7245eb675f56.camel@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <6e5ed4a54281f0e35a8802e1eec57601be73f837.1730740629.git.jani.nikula@intel.com>
In-Reply-To: <6e5ed4a54281f0e35a8802e1eec57601be73f837.1730740629.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SN7PR11MB7568:EE_
x-ms-office365-filtering-correlation-id: 1af9d748-dd7d-4708-024f-08dcfe430a0c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?QVl3Y2orbzAxbmY4UHYwT0NqaDZjTU51WllXT3AxY05Fc3pMRUF2a25BYkI2?=
 =?utf-8?B?RnhMcXU0QlJ0K0lzTGFtN2kzbThPTG5nRUJBL3JQMUsrTGZNNW9kSHFOajlB?=
 =?utf-8?B?L1U3dWYxcnBXb0t3bkwvMDY5bzMrcDRpTWYrdmpxMHZUaTdVTTNYRmlrQjR4?=
 =?utf-8?B?NVJLOGwxWXh4ckF0RTVUMXRacDJQamx0clc2eXVLU0ZaaG1abk9QbkhxVFRw?=
 =?utf-8?B?SUVzc3RDbGNqYkVvalVTNmZsL1E2ME1YVm1qY0VGU2hlU0xLYUdZNHNaNHNE?=
 =?utf-8?B?OGo1NS9pSEhndGZpK3JhY1JkbnBEUlA5UmNuU1ZZNXMrOGJMLy9Vd09wK3pD?=
 =?utf-8?B?VVRoTFhrdGIzZnd3cU9BbTEzRUtJRVFFYzdNQmxpdHFTd2FSUDZnaUpUc1dQ?=
 =?utf-8?B?Y1diekVDK1hxRGppOWxDRWJSeFk1eDlMZXlMTmZhNVM1SUtlR0N6K0kvVnJq?=
 =?utf-8?B?K3UvREJiWnA4VEd3V3FQOW8vSDRSL2wyZHNVOWRHSm1LTGRWdlNGV284UXEw?=
 =?utf-8?B?RkR6MGZaTWdmZUdmTndqK0tFNWtTaWRDSVBla0VkWEo4ZWdERmQ2OFNMVDlx?=
 =?utf-8?B?NlJndnl1T2dDZm1XYnRjTHpkNFUyNksxeFNBdms3TmhINEZGVFF6WlkzOEhr?=
 =?utf-8?B?Qk8vb0p2Wng3MTFZSGJCUzRETVJYVHZwOGErcUZmS2FWQ2ZtS1o2SnRxK2lW?=
 =?utf-8?B?ZHRvWGFhZnNFd28ybG9aVktsV1JoczNlKzdvOUtLamw2SmU3UDBGaVFtQ1Zm?=
 =?utf-8?B?c3g0eHNVaWNmWVE4UlJCT096QnJobjFvZ1JLaTQ1cUtwRFFJK1l2QjV0WHR4?=
 =?utf-8?B?ZXpQOUVIV1FZWWYwYno4am9FcVVUWG51VndxaEo0YndrZUordVc5NWZRNlBs?=
 =?utf-8?B?b0JLQzNtajE1NE5KQUl5WDU2eHhhQjRGUmRpSnhYb0dnTk9xR1lGdk5qM3pK?=
 =?utf-8?B?TzJucHJjbm1JeFB2VWV3eXF2TDNsZ1lKWi9jTEFxQ0svZkhzVkNwWjRtREE4?=
 =?utf-8?B?RWcwN1ozTEpKSDBxRS85cW5DaDh3SHNPdVNJL3U2TlJRdXdzNFdPejBKNldR?=
 =?utf-8?B?VGRQd3h5bkpqWDJoMkJiVGVkVDVUVWxaUnhKWFByaldwQzc4OGwyVVo0U0xr?=
 =?utf-8?B?UmVOdm9Ka1d0ZUh1blBzNTBxNnZVZ1AzTDYxN2FaTG5PUS9ZWXhneGs3ejk4?=
 =?utf-8?B?MkpiSlpqcGhETFB1MzRFVm5lM0FyY3QzQ1cvRHpSYlpqaFBWQzJaV0dHNUc3?=
 =?utf-8?B?Y1B6cDFham0wcXlWMkpTV3dwNllJOHZxN0YvdVV2MU9UOStmd3Q4Wjh2S2kr?=
 =?utf-8?B?ODdibVkvTnovR3pnTU9RVFhpbExUQnVpNEt1VFZnR2FVTVBjZXdZamNXWGov?=
 =?utf-8?B?RE92aXBhc1VodUk2OXNkbVo2Z0VhRjR3Mm9MeGxyYWhsbElTMStKTldqdXdE?=
 =?utf-8?B?bGpOdDBidld4VUM4a2J4eFFBZGZ0NkUrWnptMmZWcms3VjdDY3ZQY2FSNXZM?=
 =?utf-8?B?ZEJWV3NkQ0N1MlpQaTVYM1AwbkdIdXAwcnorbUd2SFJLVjYyYzB3M3k0WHlr?=
 =?utf-8?B?V0ExMUYwa2FnZ2tTSXNIV3liV2Z2QUMvbE44K3VZRnBPSEpUNXVHMjFXQ1ha?=
 =?utf-8?B?TXhsSXZxWGx0R0dOMUo2a0lmNXM1TXBnbysrMWFxQ29YYVhpSHlydGhZUDNZ?=
 =?utf-8?B?KzV2T3puaU8xTkgwRU90TVY4eG1oN0ZSc1c2VUc4dGtDQUE4ZDIwT2QxY05U?=
 =?utf-8?B?c050bXFJV3E3MzR0TERhSmZCTmhQOGJURWxCVHlmdzJ0T3lNWCswdUNPa085?=
 =?utf-8?Q?7IQhI91zISfpY86l8znwfQ4rckf0eIaSv/ktE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UC9ZUUlaUmxETXlJbFlYQ1RzVUVha21XTGxraUFncHl5ZDl1WHJtYW5XaWVj?=
 =?utf-8?B?Wnd5L1hmSnNSMWFGdU85bnBlMm1CdENpWHh5VnJEMTgvc1l2dStoTVF5Ym9n?=
 =?utf-8?B?d0tLcXMxbzd0QWJrQkhiOFRKUUlpNiszV1BLR2dUUUpQcFZ2QVByN1NmSG05?=
 =?utf-8?B?RmhTYldMUGo4eHp6QVFUdFA0SmhvVjlYTjYzaWZ0UzBiSnExVTdDNWhtQ2Vp?=
 =?utf-8?B?NXNGR2hRR3VNU1RWQURxRS9Rc0twQUQ4dHRNbkpCYlAxVm5JUG5FUlpoRUJ4?=
 =?utf-8?B?VkFrSzRjZGJ4NkQyU250RnFqRis4MjJ4WHdDM24rdkhsTCtOdEx1cUZ5VlVG?=
 =?utf-8?B?WVVjZm41MWZWcEpsZExHYk1TUHZPNTgxamtja3cxaENtRDlnakR4ckRlWnEx?=
 =?utf-8?B?TE1uSU02eGZ1UkhpYjJlV0xETUVEYm5IRnJJYzNaYkgvM0RjNms4dGR4UElS?=
 =?utf-8?B?NXhEMjc4blB3aXlwVEpnMFlLMnd5d0h5K2VYcEt4cnF2OVQxWmxRVGcwR3I0?=
 =?utf-8?B?dEoweW9BWTZCYkorZ2VrYWZmMU9WRzVjQUZjVmIvYTgrcE1IaERvSi9DVHhI?=
 =?utf-8?B?OWQrWFcwdG56dkJ2a2FjQUhFY0QwWlBhUjZPdG9yOWNiQ2Y1Z1psZVVPWVZw?=
 =?utf-8?B?UUV3TDFqTUF3WFg4djd2SXBjM0hmMFRmRFdoaU5XaFdmNEt3WStnM1FsYkd2?=
 =?utf-8?B?T2xVbWo2TDl3dHRGaW4rQ21FUjFPOGhLUkwwYllSWTRnTGZmcC9TMEh3M2Qz?=
 =?utf-8?B?NzZXZE93L1ZsR0pUT0RyanB1SjNuSXZDR01qZHBqZjB2SEY5aUp2QzlLUlBS?=
 =?utf-8?B?MlZMUjlsY0NGeUpSbm5MZ0dGeGZZaklxSkxEdndhc1ZocVREdUtpTXlVWEhY?=
 =?utf-8?B?RGlOeWtWd1E5Smt0WnVwMFZMbWNPbkc5SDRqSHZuUU9pRVBCSFpkcWkwWm9w?=
 =?utf-8?B?YVZBUDJtZU00OFRRMXFNQTlOYTcyRTBwazNyV0c0amxaYW5kMmY5a2l1SXVL?=
 =?utf-8?B?VG1yd253ZXY3czU4OXZvb0U4NmVTc24vdFdmSjk1RklEQVdhNHVXa3B1YXBl?=
 =?utf-8?B?aE5hU0lFU2E1dkhxSjNrdjZXaVJWRExhNVdGU2svTjJDL2xTUTg0Sm5XZkt0?=
 =?utf-8?B?UnliVEwxemNBeTlLcnJNckxXSDR5SXpraFAzYm1CclREVUlqaEVvaldyUjNv?=
 =?utf-8?B?OTNsa3I5KzgvNzlvMktvdW9TZllXUHpBV0FYZ2VvNi9SUE9HR29tYnFzdG83?=
 =?utf-8?B?WC9sTUtKRmJDSHFNWnhrWi9hdEFvNmJDTGJNK292OVkwTW44YjhwZW92SVJX?=
 =?utf-8?B?RnRKbS9UbUwrdVpDM0RseDcyakRtUkhEUVoyOVNNYVpuMDc3VEpBUTl4OXJy?=
 =?utf-8?B?UjJiTkpWV29tbGVBcHlhZU9zSmVHd1pRT1FKQlhiclBIU0g1WlBRdVRqK2pH?=
 =?utf-8?B?SDUrYXVDTEZFSnZHQUZpZDgyQzBBVysyY3pnQ3lQSis3TlptQlR3WXo3MmZQ?=
 =?utf-8?B?eStxbW9YZkZqS1ZJN1dGdFNSeHlxOUlqeHdQaTd2ZitkWE5IRUE0VWJmZjRM?=
 =?utf-8?B?ZlU0S3AxY1NDN2kvakJUU0hOK2tHbUoxT0F6QkF4NERCZGFjTEd6UFduUE1E?=
 =?utf-8?B?V2NpQnNQbmpxREJKU1lLUEU1Ym1UTTExNGI5T3pmdmJ0ZVhjSXlvUTIwQUNB?=
 =?utf-8?B?MHRjOXhxL1Z2QVU1WEVvRUdrSGMzNUdyVzNPVTRRYVJxOFJkQWpwL2lNYjBK?=
 =?utf-8?B?TVZiaDJwQXluaDJHNjNPWUdYQlZ6dldSbXNLeXB1aGl6Q1Rtc0czMDE5QTBM?=
 =?utf-8?B?UVFQT3EvYkNHOG5sZ3FZcTNoTXdsajN5dDZNTG93di93bGhQMUlQeVVmbUl6?=
 =?utf-8?B?UHRwMkQwMlhaUEplTzJoZWFxYU1CTHg1WTJjSlk5bnBjSWdvc3RWMzJIUTE3?=
 =?utf-8?B?MWVQNWtjdi9BTHpRaFYxTC9PekJrMThhVWJHbTE3a3FneGFPOTF4cm9PU2dn?=
 =?utf-8?B?N1RoeEVJK1U4K3hEbVBBSmEyV1ZzVkpvQUZNVi9FZDFDODBac3RSVHhuRmRk?=
 =?utf-8?B?clgvN25BMzZPWmJqMitXdXdhNjZoSWVNUEcxSTN5eVRpdjlrUlZyRFJIWG05?=
 =?utf-8?B?YXdaWlJ4RGNhTzNrZjVDVWs1ZVpVcU5LZnpwdUNyWnRpZCtqY3EwRjY1SmNO?=
 =?utf-8?Q?EZqPsA1sLYtsrYtW9M5ZSAo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7D88A2D6DE20284EB067D84CD795DE87@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1af9d748-dd7d-4708-024f-08dcfe430a0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 09:11:46.4080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1Qb/fLIabddOHr4fs6FoT6IreY2sjc/GZeD7ujc66yEovKLwc6JTbH9L2em2lwhL2HVPsqG2Y+SE67wklxTDJZBjf0kSgupjDdP8qoJGNR0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7568
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

T24gTW9uLCAyMDI0LTExLTA0IGF0IDE5OjE5ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBD
b252ZXJ0IEhBU180VElMRSgpIHRvIHN0cnVjdCBpbnRlbF9kaXNwbGF5LiBEbyBtaW5pbWFsIGRy
aXZlLWJ5Cj4gY29udmVyc2lvbnMgdG8gc3RydWN0IGludGVsX2Rpc3BsYXkgaW4gdGhlIGNhbGxl
cnMgd2hpbGUgYXQgaXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KPiAtLS0KPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2RldmljZS5owqDCoMKgIHzCoCAyICstCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyB8IDE0ICsrKysrKysrLS0tLS0tCj4gwqAyIGZp
bGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCkxvb2tzIGdvb2Qg
dG8gbWUuCgpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBp
bGxhaUBpbnRlbC5jb20+Cgo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaAo+IGluZGV4IGU0NWJhMjExNjZkMy4uNzBkMWJl
ZWJiZjhmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9kZXZpY2UuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9kZXZpY2UuaAo+IEBAIC0xMzgsNyArMTM4LDcgQEAgc3RydWN0IGludGVsX2Rp
c3BsYXlfcGxhdGZvcm1zIHsKPiDCoMKgwqDCoMKgwqDCoMKgZnVuYyhvdmVybGF5X25lZWRzX3Bo
eXNpY2FsKTsgXAo+IMKgwqDCoMKgwqDCoMKgwqBmdW5jKHN1cHBvcnRzX3R2KTsKPiDCoAo+IC0j
ZGVmaW5lIEhBU180VElMRShpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoChJU19ERzIoaTkxNSkgfHwgRElTUExBWV9WRVIoaTkxNSkgPj0gMTQpCj4g
KyNkZWZpbmUgSEFTXzRUSUxFKF9fZGlzcGxheSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKChfX2Rp
c3BsYXkpLT5wbGF0Zm9ybS5kZzIgfHwgRElTUExBWV9WRVIoX19kaXNwbGF5KSA+PQo+IDE0KQo+
IMKgI2RlZmluZSBIQVNfQVNZTkNfRkxJUFMoaTkxNSnCoMKgwqDCoMKgwqDCoMKgwqDCoChESVNQ
TEFZX1ZFUihpOTE1KSA+PSA1KQo+IMKgI2RlZmluZSBIQVNfQklHSk9JTkVSKGk5MTUpwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgKERJU1BMQVlfVkVSKGk5MTUpID49IDExICYmIEhBU19EU0MoaTkx
NSkpCj4gwqAjZGVmaW5lIEhBU19DRENMS19DUkFXTChpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKg
KERJU1BMQVlfSU5GTyhpOTE1KS0+aGFzX2NkY2xrX2NyYXdsKQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYwo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKPiBpbmRleCBjNmU0
NjRkNzBjYzcuLjI4ZjdmMjQwNWVmMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jCj4gQEAgLTI1NTAsMTMgKzI1NTAsMTQg
QEAgc3RhdGljIGJvb2wgdGdsX3BsYW5lX2hhc19tY19jY3Moc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUsCj4gwqBzdGF0aWMgdTggc2tsX2dldF9wbGFuZV9jYXBzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGVudW0gcGlwZSBwaXBlLCBlbnVtIHBsYW5lX2lkIHBsYW5lX2lk
KQo+IMKgewo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0g
Jmk5MTUtPmRpc3BsYXk7Cj4gwqDCoMKgwqDCoMKgwqDCoHU4IGNhcHMgPSBJTlRFTF9QTEFORV9D
QVBfVElMSU5HX1g7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkg
PCAxMyB8fCBJU19BTERFUkxBS0VfUChpOTE1KSkKPiArwqDCoMKgwqDCoMKgwqBpZiAoRElTUExB
WV9WRVIoZGlzcGxheSkgPCAxMyB8fCBkaXNwbGF5LT5wbGF0Zm9ybS5hbGRlcmxha2VfcCkKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNhcHMgfD0gSU5URUxfUExBTkVfQ0FQX1RJ
TElOR19ZOwo+IC3CoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA8IDEyKQo+ICvC
oMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDEyKQo+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgY2FwcyB8PSBJTlRFTF9QTEFORV9DQVBfVElMSU5HX1lmOwo+
IC3CoMKgwqDCoMKgwqDCoGlmIChIQVNfNFRJTEUoaTkxNSkpCj4gK8KgwqDCoMKgwqDCoMKgaWYg
KEhBU180VElMRShkaXNwbGF5KSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNh
cHMgfD0gSU5URUxfUExBTkVfQ0FQX1RJTElOR180Owo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGlm
ICghSVNfRU5BQkxFRChJOTE1KSAmJiAhSEFTX0ZMQVRfQ0NTKGk5MTUpKQo+IEBAIC0yNTY0LDE0
ICsyNTY1LDE0IEBAIHN0YXRpYyB1OCBza2xfZ2V0X3BsYW5lX2NhcHMoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsCj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHNrbF9wbGFuZV9oYXNf
cmNfY2NzKGk5MTUsIHBpcGUsIHBsYW5lX2lkKSkgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgY2FwcyB8PSBJTlRFTF9QTEFORV9DQVBfQ0NTX1JDOwo+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTIpCj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxMikKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjYXBzIHw9IElO
VEVMX1BMQU5FX0NBUF9DQ1NfUkNfQ0M7Cj4gwqDCoMKgwqDCoMKgwqDCoH0KPiDCoAo+IMKgwqDC
oMKgwqDCoMKgwqBpZiAodGdsX3BsYW5lX2hhc19tY19jY3MoaTkxNSwgcGxhbmVfaWQpKQo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2FwcyB8PSBJTlRFTF9QTEFORV9DQVBfQ0NT
X01DOwo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDE0ICYm
IElTX0RHRlgoaTkxNSkpCj4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkp
ID49IDE0ICYmIGRpc3BsYXktPnBsYXRmb3JtLmRnZngpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBjYXBzIHw9IElOVEVMX1BMQU5FX0NBUF9ORUVENjRLX1BIWVM7Cj4gwqAKPiDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIGNhcHM7Cj4gQEAgLTI3NDUsNiArMjc0Niw3IEBAIHZvaWQK
PiDCoHNrbF9nZXRfaW5pdGlhbF9wbGFuZV9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMs
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3RydWN0IGludGVsX2luaXRpYWxfcGxhbmVfY29uZmlnICpwbGFuZV9jb25maWcpCj4gwqB7
Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRl
bF9kaXNwbGF5KGNydGMpOwo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSA9IHRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5zdGF0ZSk7Cj4g
wqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjcnRjLT5iYXNlLmRldjsK
PiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShkZXYpOwo+IEBAIC0yODI2LDcgKzI4MjgsNyBAQCBza2xfZ2V0X2luaXRpYWxfcGxhbmVf
Y29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZiLT5tb2RpZmllciA9IEk5MTVfRk9STUFUX01PRF9Z
X1RJTEVEOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnJlYWs7Cj4gwqDCoMKg
wqDCoMKgwqDCoGNhc2UgUExBTkVfQ1RMX1RJTEVEX1lGOiAvKiBha2EgUExBTkVfQ1RMX1RJTEVE
XzQgb24gWEVfTFBEKyAqLwo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoSEFT
XzRUSUxFKGRldl9wcml2KSkgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAo
SEFTXzRUSUxFKGRpc3BsYXkpKSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgdTMyIHJjX21hc2sgPSBQTEFORV9DVExfUkVOREVSX0RFQ09NUFJFU1NJ
T05fRU5BQkxFIHwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBQTEFORV9DVExfQ0xFQVJfQ09MT1JfRElT
QUJMRTsKPiDCoAoK
