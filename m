Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGRfKxyoCmp/5QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 07:48:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0AF566729
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 07:48:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 684E310E2E3;
	Mon, 18 May 2026 05:48:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TMCFc/5a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CD5510E2E3;
 Mon, 18 May 2026 05:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779083289; x=1810619289;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4xpBj/Rt0FTzweXF6QBEB9Efhj03vYcqKNSFoFX5MQc=;
 b=TMCFc/5atIyQ6E7AyLqWb2GzbLzEX5a3w51tW8tsbT0WtGn/Q5Zdi6wy
 t2csh91IHPX0sMghzGtx6aYqNMg2XmSoiHXMbbI1Kt9Qk4sKp/mQzDbHk
 P27u2rm7B4n9ETJVGkbHSfsHsA+En5fJDE+Uw5iO8ICnkld7LcFVq4P7I
 40nOrSPNWwwB53Rmo60inEhI2CA5+tgefUAxa2AZjSxT8TVvEesr7oMCj
 rIXkZnYHH6N341F1i+1efFgFqdwOZRcwT+w7U6ALEKEdtS5yR89KZVA1F
 wBCIVG7S9aAc7dlVjb/GO/BQcf2FTYR2yikSr6f+VkzR0oyrlhkNCqH+o A==;
X-CSE-ConnectionGUID: avhIbG6WS6y+uyfTf+Yx6A==
X-CSE-MsgGUID: 8gnZ/+zUScOKOq+ZW3XCRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="79783783"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="79783783"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 22:48:08 -0700
X-CSE-ConnectionGUID: 4cNmIBA+Tuu/80RF3B3yKA==
X-CSE-MsgGUID: TSMwE7XPT8uPHMgot7t7qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="241135263"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 22:48:08 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 22:48:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 17 May 2026 22:48:07 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 22:48:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LD+Mz719vaSy9FxByvHFZNWA5ZzOoE0urmuJhAL7+88HFspb2RJsc/DNmXtm7mFCuqPNI2Cn4p/fk1ZU5u8eQADx1Ctyx///nPmh69c8zkJTwrmkZkud1MmwHHUpEaWu7KRkNW0wdApFdSedre7k1/vH8ctwNw8Qwbtwi0hbP2z8EzOZrv9nhgdyXLo4gJ9Mp0BlVsw+sVKw4pr6IVO3b0pLUxDJtDRZuiJ3KoyAafZIcNWhcfrTCjqSnDIGnXInLI8IJd713W70O8udXOgaT3MUitIC2RhycvrC9uRqbRFvHUGpfvWUiQXjlpyuu+1kKXjdYbbBFXHQFlS2JBpH+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4xpBj/Rt0FTzweXF6QBEB9Efhj03vYcqKNSFoFX5MQc=;
 b=oEoiz2O6R/n4OqL7lmhM/EHNXqnxzkJe4UCSFdVEp4haqGyJrJ+hW0q4+KOSEf88/6uYClk/PVkY+k3x+Cdp0zM/tEVUWweMqEp2NZ2P1GJgtFusWziKJ55rNNSWJmstelz+cLmQNE8WFQqT7aUptBtFH0NvSXSst2aeBBabXfWPVpAwMvCH7KjRPeQmYnR5qvfUgMCh7ke8llte8bC/voYLWkRsSwPWFzJgGGZt8P2eSlq/ROc+wy1K2u1tYzr/5+2C2P4ymM32SLnOs6eYBvHILkeXkVf94dFBxMUa2qOOMvQD25aicIkJOBgAgr1EIqNKktNJalW33K/06K3AmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA0PR11MB4752.namprd11.prod.outlook.com
 (2603:10b6:806:99::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Mon, 18 May
 2026 05:47:59 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Mon, 18 May 2026
 05:47:58 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2 4/4] drm/i915/psr: Apply SDP on prior scanline
 workaround for Xe3p
Thread-Topic: [PATCH v2 4/4] drm/i915/psr: Apply SDP on prior scanline
 workaround for Xe3p
Thread-Index: AQHc5FFqLmLi7cbtF0ykCmzQjhs7cbYTSv5A
Date: Mon, 18 May 2026 05:47:58 +0000
Message-ID: <DM3PPF208195D8D43D52DB8C35393883F76E3032@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260515095756.2799483-1-jouni.hogander@intel.com>
 <20260515095756.2799483-5-jouni.hogander@intel.com>
In-Reply-To: <20260515095756.2799483-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA0PR11MB4752:EE_
x-ms-office365-filtering-correlation-id: 54148f0b-03ba-4d6e-8e2c-08deb4a1045f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|18002099003|56012099003|38070700021|4143699003|11063799003;
x-microsoft-antispam-message-info: n3iOhG49rLDnpWSnI3XfGVnlvnlCzDPEw9Zlb9IyoLmvL9nFhmkcQtpoa5Y4xUmHB6kd4u1+dWol+ZVgj2bwoLAuvqmov4fO66sVlkEy36mWfAgJKyVDKyyeBz5Th4Vcu2QewR/5Wm7ox3Xpvfm+93DySSFFpVTCGWigsJNG5IVlgSVoVU7shG7cHlTlgfew+BXe49bzxvwyIaYw8yU+WwrfJ1YOeobZkn9HAy/1raXk7AY9xe//9QICpdvfFSVB/koqf9e7C5csPq5I8KrDHq+c9+CM16Zt32uiZqrZzMb91OGZuDaXbJmeY4XYpmRU6cTN1X8N4AiQ6y0wCWLFE8dChWSpA4dW4TB8k6+a6G4lhUELZ+b6rZP/rZLcnvcBDPR1ZdCrBeKYyDyGMbBZe91wEdHyHDyPh8M7tVo/LeJwfpWXRZf9vb+eh1s3+cLMKeyfpBI/E9Z4Zm2fiQSsK7IE8/oFSUdSJ2VZtPEcYZ0pqRvVeHiODuJ180kJ9AfGzJWjOOu1v/NQqgT7IXey9mLCMz0lSBHOAMAstZAKvuCL1l36OInpJXUq0pWJbatU0L7zXKwEp5hS7SZkC7RCpSd1PiL2BgCDhLC5YHMkmSljy1y9X8GFoJt9c2QYR60MzU95p36GHx1Vo7RcCympVYrKohHmiNtF3zMtxSoD1mV07hNAR2FK/gQJ0TPm1BD4KJhG3uZWt+otSk010v2sebfudU8U0PW3p0TEdkXWhFLHFHytDi5Q6Uq34STe7OTc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(18002099003)(56012099003)(38070700021)(4143699003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YjlYbmVuVlRNdStCNkJiV01MR3VEZ1lxVTZDR2VNTGs2aUh0Zm0wY240MEJP?=
 =?utf-8?B?akRwT2d3TDBieE9ndzY0YXd4NGhRdXJKeHlKZlQ2Q3kzOEx4TXZqNlc3d2ZE?=
 =?utf-8?B?ZEVkSUZ0YlFVVUM3U3JhMlJXOU1SRkxCQlQvMFNrSkpoSUw3c0lRNUZVUTBi?=
 =?utf-8?B?eWwxMHRmZXplcG4wK1B0VFFYTDBDMWZ1SlNqRGptSk9QMjlIcktISDc3alRJ?=
 =?utf-8?B?STE2ZU5pWmFCT0tGdENPSUJ2THF3aHp5NXF6a05qbVVrUUpIeWEvcFRBZHRQ?=
 =?utf-8?B?YmNDV0UyTm5RVlBhYWhJNFlmanB1a2J4UEd6cjlTL3VDWll0QjZyeVkyVWdI?=
 =?utf-8?B?WDY5UGpEZkhuOTNPTXB2aE5rZVJDUUFyTDBwbWE0bWFicE8vL0tzVU9yOUth?=
 =?utf-8?B?czRSeVJNN055K0w2WEZKVnZjZVpKWlVuc0tOK01XSnhydnpWS0NLbnNaY0lw?=
 =?utf-8?B?K2ptc0JPSjBRWGZlYlNUV3MvcW9vcHMwVWIrUStUeDVKemFCRGIrMStVQWlr?=
 =?utf-8?B?eTFDQld5TmVGOE1NN2Flc0hoRk9Wei9uY3JGMmFzMVBza2JWcUFOMmVOeGht?=
 =?utf-8?B?S2hnUm1LSGd6ZytwV2tpa1MwenR6VktqdmpVZXk1WlEwTDBMdmd6Q0JBYk1K?=
 =?utf-8?B?Ky9LSmlFMzVLc3FDYmhVS0ZRQ2c5cGhWdGFYMjFtaUg5M1o0cEV1SHFJZDhN?=
 =?utf-8?B?TGJNR3Q3c0diYVRnMGNwYy9QdXVtWnI3OWJXQ3F2ZC9waURxOG5SRmRqaUtw?=
 =?utf-8?B?K2ZscmtPdCs5c29MQzVsN0ZRQWpuajluVnkvVnc0T1F1QUhTRVJEdmFrTTJo?=
 =?utf-8?B?RXdaTkRDMjFTNUFFTmhDMnV0ZHNnRXFEeFl4Tm5VR3lwZGJmMWtUek5CV1FY?=
 =?utf-8?B?VWdkR3d6VEgwRTdHdFplYVU3S2ZHV2REaHIrQTZVZm81dktYT1RYWjluQ09H?=
 =?utf-8?B?SXJFelV3WDNXaEl2U2FwWWVraVhoY2pqWm9EYmIwdUlqd0VxMzdJRXc2ckY4?=
 =?utf-8?B?dGNta1BmWk8wVnRUNjlsNW0xaVZoYjVpUlI5MjhyV1BqWWloRzJOakl6RnhK?=
 =?utf-8?B?Rnp3eEc2MGxEVHBNUzlUZ1ZaZ29OQWs4Uzl3L2RPZlN5ZHVlMWsrSVFNUjVT?=
 =?utf-8?B?RnJ2UGxEMHFlMzlJc1dWbmVublRrbU5RMzRqVEVWL2ZCVVZQcUgzK1NuZVJv?=
 =?utf-8?B?SUlMRXVOcVJNbVdvK0locWxOZXlodU5WWEdsTXE5eGRYa0I5S2tyaVZ4MFRr?=
 =?utf-8?B?YkNKVjMxNTk5T0NEYzRHN2dHK1hXRE1TUCt1STVnSDBWbU15bTdDTUFiVk9h?=
 =?utf-8?B?S1grQkFGQjBzUzkvV3FUa2JnOVc3VUZ4cmY3WGk0a3l2QjJYUkQwamFiOUg2?=
 =?utf-8?B?cExsQ3BJWlQvM2ZVWDMyWEtmTEd6OFlGbFFZbXZDZDU0bVpqajBJbEU1N1Jr?=
 =?utf-8?B?UWF6ZXJDNHltVlI2OWxFdmVacDMzTXJCRlExMDd3ZFJnUFZPVU1rOWVITncz?=
 =?utf-8?B?M1pyekpmRjlMbGF3SENJVUFxTmJZYmxsYWszSlFqRFNnNkZTc3V0YVF4TGIy?=
 =?utf-8?B?THgzVGgrbFd4VWtwSW90U21IaDV6d2tqQVVTVW1WQkw2T3Y2VDE2ZXBLOTRn?=
 =?utf-8?B?T2JDanBlYndyTEFwWVhPMzI0NnI3Vm00WWF6ZFJQSGd3dEZQb1Z4UUwxZ1p2?=
 =?utf-8?B?MHdIZG5xU1B2SXB0RnpEN2pwbW96ZHVScFhOakliTGFGN2xyeDdiMVoyaUFV?=
 =?utf-8?B?RHJFdmFOMlpGM2FCNVM1ODkwTXZGejk4akJqUm9HVlJhZ2tDUDRFamlQNmor?=
 =?utf-8?B?U0o4K2tVZXY0Y1BWS01SbFVJQ3JoZ2FYOElHNmlOZ0JJRENueHhGME9TaDBU?=
 =?utf-8?B?ZzFQSlNYVXpjbjFNTWhBUnl6SWVvWFE4YlltRTNqOG9nWGNuUVYxclJTTGho?=
 =?utf-8?B?TEYyTW5ESHlpaEQxL04ybWE1djRISWNCMVI0dTZDMlFwMCsyVFRqcWp6elQr?=
 =?utf-8?B?czlDZXlMeTlzU1BTakZqRnJGWS9kS2FnZHpSUlUzZTlnN0dPWC9mYUZrQSsz?=
 =?utf-8?B?YzQ5N243Q3Z4d04vcGFkWGRaVGd0OVd3WlZRd3NpQTliRlcza2h5TXcxbWJP?=
 =?utf-8?B?L1ZVUnh0WEQ2V0JWYXMzVjdSRlRUOFQvUmc2TjdZRGp5U2N3UmJGNHBsczVh?=
 =?utf-8?B?d0tZd1NhTnVIR1I4OU5Gd0prK2VZWFZJbmtGdnpsbURHdXdwT3IwTHBrcEFI?=
 =?utf-8?B?VURYdU1aRDRzNEVvU2FTWndFUmNQUWpPazJ6eCtqenI5VHpKQndSUUNrdExN?=
 =?utf-8?B?UmdVOEdzVzVaWEdVYXRYN3RjSWJhL0lYOG43d0RBbVlzclJpRk9yUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: q162+14gyVGPDpWBhaf8HSymjsjP9xtgQBKQ9agziEWp2AOU/qoGJE5HuXVS/PzOnKYvIEZ9nL0pnQak7hYVDuqvuq8cdcbgSWH1MjxvBnn+2lUPQNglzndDsnRU7B1HUDh8LWJ8VmbSmTBvUsCjUjaWeZE+JCKVslR0p9ZUYAmaKdUKEYbvv0IhczJajyBzV9X/h+Daxd/SlEeYkLgYReq1JcpV9AQ6pnvCotgDzgphqLqXSzQ5196qOC1VvZlIVWK5803ftkqNvbrx6SJ7XZbskg1mdniwsqK4u+askz6rqjttQLvrY7Gs4qoK4qT6p4R0ORRu5qyxyouditciew==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54148f0b-03ba-4d6e-8e2c-08deb4a1045f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2026 05:47:58.9048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AjjmJbOWNlvJBEkq8DAHr9hCRFCt8wAHVnc8bdqLyc5NykiK2DmvSV9mdg8HHRIxZ1q0nboNNcFLLkxx/Gp1Mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4752
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
X-Rspamd-Queue-Id: AF0AF566729
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

PiBTdWJqZWN0OiBbUEFUQ0ggdjIgNC80XSBkcm0vaTkxNS9wc3I6IEFwcGx5IFNEUCBvbiBwcmlv
ciBzY2FubGluZSB3b3JrYXJvdW5kDQo+IGZvciBYZTNwDQo+IA0KPiBJbiBYZTNwIHRoZXJlIGlz
IGFuIEhXIG9wdGltaXphdGlvbiBkb25lLiBXaGVuIHRoZXJlIGlzIGFuIFNVIHRyaWdnZXJlZCBp
bg0KPiBDYXB0dXJlIHN0YXRlLCBMaW5rIHdpbGwgYmUga2VwdCBPTiBwb3N0IENhcHR1cmUgQ1JD
IFNEUC4gQmVmb3JlIHZhbGlkIFNVIHBpeGVscw0KPiBJbnRlbCBzb3VyY2Ugd2lsbCB0cmFuc21p
dCBkdW1teSBwaXhlbHMuIFNvbWUgVENPTlMgYXJlIGltcHJvcGVybHkNCj4gY29uc2lkZXJpbmcg
dGhlc2UgZHVtbXkgcGl4ZWxzIGFzIGEgdmFsaWQgcGl4ZWwgZGF0YS4gUHJpb3IgWGUzcCBsaW5r
IHdhcyB3YXMNCj4gdHVybmVkIG9mZiBldmVuIGlmIHRoZXJlIHdhcyBTVSB0cmlnZ2VyZWQgaW4g
Y2FwdHVyZSBzdGF0ZSBhbmQgbm8gZHVtbXkgcGl4ZWxzDQo+IHdlcmUgdHJhbnNtaXR0ZWQuIFRo
ZXNlIGR1bW15IHBpeGVscyBhcmUgcHJvYmxlbSBvbmx5IGlmIFNEUCBvbiBwcmlvcg0KPiBzY2Fu
bGluZSBpcyB1c2VkIGFuZCBFYXJseSBUcmFuc3BvcnQgaXMgbm90IGluIHVzZS4gVGhlIHdvcmth
cm91bmQgaXMgdG8gc3RhcnQgU1UNCj4gYXJlYSBhbHdheXMgYXQgc2NhbmxpbmUgMC4NCj4gDQo+
IHYyOiB1c2UgaW50ZWxfZGlzcGxheV93YQ0KPiANCj4gQnNwZWM6IDc0NzQxLCA3OTQ4Mg0KPiBT
aWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cg0KTEdUTSwNClJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVs
LmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV93YS5jIHwgMiArKw0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfd2EuaCB8IDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyAgICAgICAgfCA1ICsrKysrDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV93YS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3dhLmMNCj4gaW5kZXggN2QzZDYzYTU5ODgyLi4yMDk0ZWRhMDljOTEgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5jDQo+IEBA
IC0xMzYsNiArMTM2LDggQEAgYm9vbCBfX2ludGVsX2Rpc3BsYXlfd2Eoc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXksDQo+IGVudW0gaW50ZWxfZGlzcGxheV93YSB3YSwNCj4gIAkJcmV0dXJu
IERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDIwICYmDQo+ICAJCQlJU19ESVNQTEFZX1ZFUngxMDBf
U1RFUChkaXNwbGF5LCAzMDAwLA0KPiAgCQkJCQkJU1RFUF9BMCwgU1RFUF9CMCk7DQo+ICsJY2Fz
ZSBJTlRFTF9ESVNQTEFZX1dBXzE2MDI5MDI0MDg4Og0KPiArCQlyZXR1cm4gRElTUExBWV9WRVIo
ZGlzcGxheSkgPj0gMzU7DQo+ICAJY2FzZSBJTlRFTF9ESVNQTEFZX1dBXzE4MDM0MzQzNzU4Og0K
PiAgCQlyZXR1cm4gRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMjAgfHwNCj4gIAkJCShkaXNwbGF5
LT5wbGF0Zm9ybS5wYW50aGVybGFrZSAmJg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaA0KPiBpbmRleCAxNWZlYzg0M2YxNWUuLjljZGQx
NDhlYTRmYSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3dhLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3dhLmgNCj4gQEAgLTUyLDYgKzUyLDcgQEAgZW51bSBpbnRlbF9kaXNwbGF5X3dh
IHsNCj4gIAlJTlRFTF9ESVNQTEFZX1dBXzE2MDIzNTg4MzQwLA0KPiAgCUlOVEVMX0RJU1BMQVlf
V0FfMTYwMjU1NzM1NzUsDQo+ICAJSU5URUxfRElTUExBWV9XQV8xNjAyNTU5NjY0NywNCj4gKwlJ
TlRFTF9ESVNQTEFZX1dBXzE2MDI5MDI0MDg4LA0KPiAgCUlOVEVMX0RJU1BMQVlfV0FfMTgwMzQz
NDM3NTgsDQo+ICAJSU5URUxfRElTUExBWV9XQV8yMjAxMDE3ODI1OSwNCj4gIAlJTlRFTF9ESVNQ
TEFZX1dBXzIyMDEwOTQ3MzU4LA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gaW5kZXggMmY3OGQ3NmM0ZWUxLi44ZDhhOWZmMzE3MTggMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMjkxMyw2ICsyOTEz
LDExIEBAIGludGVsX3Bzcl9hcHBseV9zdV9hcmVhX3dvcmthcm91bmRzKHN0cnVjdA0KPiBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCSAgICBjcnRjX3N0YXRlLT5zcGxpdHRlci5l
bmFibGUpDQo+ICAJCWNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYS55MSA9IDA7DQo+IA0KPiArCWlm
IChpbnRlbF9kaXNwbGF5X3dhKGRpc3BsYXksIElOVEVMX0RJU1BMQVlfV0FfMTYwMjkwMjQwODgp
ICYmDQo+ICsJICAgIGNydGNfc3RhdGUtPnJlcV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZSAmJg0K
PiArCSAgICAhY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc3VfcmVnaW9uX2V0KQ0KPiArCQljcnRj
X3N0YXRlLT5wc3IyX3N1X2FyZWEueTEgPSAwOw0KPiArDQo+ICAJLyogV2EgMTQwMTk4MzQ4MzYg
Ki8NCj4gIAlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMzApDQo+ICAJCWludGVsX3Bzcl9h
cHBseV9wcl9saW5rX29uX3N1X3dhKGNydGNfc3RhdGUpOw0KPiAtLQ0KPiAyLjQzLjANCg0K
