Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9696B436A5
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 11:07:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 586A510E9AE;
	Thu,  4 Sep 2025 09:07:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="foCLHvHS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E7FA10E9A3;
 Thu,  4 Sep 2025 09:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756976824; x=1788512824;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=LtACWQ8Y3ABJRHE0setOER43uoeYzbJK3zQZo/IChf4=;
 b=foCLHvHS3XfasmOIqI0kQdBMVso+igc9+hXlrmVuIVCUnC70wIYWaD+o
 Mlow4MjXHvEVt8Nb18VWDKNILUJH2v8ChmJxgYCxezB30SuJdfI1pt2c3
 OQQ5BwstOVy7dJMX+jCqHpvitFjIXdk4Y8NlKn+NucmW6mo1V47whXXaz
 b6zO41w7hfTJ73WLeVhP2K+PcNzEIkDmblAH3vkuaXx/GlVfIjMbecpPB
 NlDyuE5W0rG+kYwGLheHWWPnc9N0g01aJYYvPZ4ZXGtwfrMCtJzJ701sP
 pjI6RMyNlLjFod4DBXAY/oPzW/ZwXWOr+QWd2o5qiyIyfCAIVO2ZC3+9M A==;
X-CSE-ConnectionGUID: Osehm0MGQ1eCVuwfmb5cUg==
X-CSE-MsgGUID: 7zs1z8c3QueZelUlvxpSqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="62949750"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="62949750"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 02:07:03 -0700
X-CSE-ConnectionGUID: xPpve1pIQ5SK6U9Q0n7kwA==
X-CSE-MsgGUID: ywm9SxS3RX+B5NvjQJTBAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="171712584"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 02:07:03 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 02:07:02 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 02:07:02 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.77)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 02:07:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A9jWygn+AlcKZJZKdDYnV0/Uw4UeqqZwucO6z1KNAwivuHFXOYJ55V1o2dTumctxhoDrSIqn8Lunf2cJMZC6Bf8jRPOWDWx883j6yjFtghDoI4wmpwq1zwShTNxJAxaDQbgm6s1BNY1PfYY0WVd1RW12glpsDDAyKCcofB4kaYyPiqtlG6AFgyXdnnYtBEEq3TP2M3LMLtRy6JAP4mUdxsBokQfoXJl0Evp06ui6fQArqR5kisbSrTJzyMP0/SI8UFH1j588pBayQNYux33PIQfw/gietbWuzs+x3zY8O30gEwlszB69RjajAX3TrIJv70pbKDvV43Kt+5vH96dhxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LtACWQ8Y3ABJRHE0setOER43uoeYzbJK3zQZo/IChf4=;
 b=LgXyMUVKbzknQvKViYQ6oV+gxn30Cv+UJUeANmDQg12GfMD//bjtLiuhnYA9J1doP/wFzSabq1syqRoK5Sy3XPFiFe4lRFQVO+L5GwRyF3IbFFFYBtFuZgwNhX35lV/F+Bmt66WACht8d1ZvJqunoXefpxUfey1BvSOtegYIZwhytJqMDLoZYgFjUy7tqjvdwgbs6hNkFfobOdqhwc3fieMQIOY2RsjY5vioN0LMo0pe4z29XuwMl5wOp2+o4omWwSlMml2EEMUGG9ZmW8LEhnZjqFQafNUdTMnbEHhK7M9aCCcP1yRrhdMvBFbcqZyZdaSSO06BNPK3Oxhyxs0peA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB7129.namprd11.prod.outlook.com (2603:10b6:806:29d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Thu, 4 Sep
 2025 09:06:54 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 09:06:54 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 18/20] drm/i915/opregion: use generic poll_timeout_us()
 instead of wait_for()
Thread-Topic: [PATCH 18/20] drm/i915/opregion: use generic poll_timeout_us()
 instead of wait_for()
Thread-Index: AQHcGBdUtRjvQT90akmNFIGSpAaR67SCxlIA
Date: Thu, 4 Sep 2025 09:06:54 +0000
Message-ID: <31a21b70b78d634f53383a25eb567add602aea72.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <63db3a1e1db9e55a18ed322c55f2dffe511a10bb.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <63db3a1e1db9e55a18ed322c55f2dffe511a10bb.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB7129:EE_
x-ms-office365-filtering-correlation-id: 810ba132-0397-404f-d3e6-08ddeb9264ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Q1JxY1VmNk5BWFVhRndnaEEwR0xmWVRkVWM3SDFEN0dSSTNTN2ZwWlU5N3FG?=
 =?utf-8?B?OEllNlB5cGFJQlgrUHZaTjRkSmlVTXlLWGVJREVoQUh4MU1UZEw0d2lUczdw?=
 =?utf-8?B?RzZqUFVjeUxNOHVvT25iU09kdEpMZWF0eHNNbEpPQUVES2QxSTh3SitXc0hS?=
 =?utf-8?B?ODFzeEkzZkp3Z2EvN05BK05Wd1E1SjdnMTNvci9XWDRmbTFrdElweHZBNjZz?=
 =?utf-8?B?UlBjOUxQbWFxaEU4ZmZac05DbkpsRVY2WnNkZUh2enpQREd6Zm5hbjQ4ZkVj?=
 =?utf-8?B?YXNRMjN4Z0NNOXI0Rzh3a2RaTEhORmQ1NFdkNTFBT2g4S0oweFdFdFV6bWJH?=
 =?utf-8?B?UjlDZ1dFODdiWUhTdHRPZ3RFWGh3UVkra3RyN1hSY0s4NDJvbUNhSzJRejVN?=
 =?utf-8?B?QnM2d0dDc3RSeUdhL2NubVNocE5OSS9INENQUFZkT3RRdUlyYmJsa1JmWlNU?=
 =?utf-8?B?TkhRL0RIekY1OWNCR05TcmF6Tk44Skk4Umw1TmU5MkNYaG9LZDVJNmlDQ1Bv?=
 =?utf-8?B?cG03TWNPbHRTWVljU0gwNzN1VmRQaXFZUWI3dnRLRHNSVXhtQ3Z6SzRLcUlx?=
 =?utf-8?B?cWZYYmJCM1ZURysxQXBncEk5cnhlOUQwc2ZoMGEwR21sbWI5Qzl2b0xKL2hQ?=
 =?utf-8?B?M21FeGhjUFZDQnhqS0pSMHI2N0lRc3J2bzZpdmNBS0NtWXBSQUxNYmY3U2Rz?=
 =?utf-8?B?eHBKclNpaU9ZaUgvTkVINVp5WVhiNmo3N1c3ZGp3bzEzWlFEU28rUFVhSURt?=
 =?utf-8?B?bTAvWDJ6TEVFcUhGcGZ4MlZ3M0prYzRIejV5emdSWU0wTFA4R2hjT1RyRm5z?=
 =?utf-8?B?cWJtL2JMTC9CY29vZlV5azdvajcrdnBoVVNMUWVGbDlwM2NoMFpxTC81RmFU?=
 =?utf-8?B?QzVjM0dsdzRobkRrTFNqc2lEWm5YYXFSNEtPZlkxM2Exa2lDeDdySzZVMXZF?=
 =?utf-8?B?NTVFOXZ0azd3TWU3aTB4Z21jR0N6aFpVaDZxMFdJS3hjODg2T1pJY3pucytk?=
 =?utf-8?B?Wk5mRHhXamFacXdYUVRhcmN5VDQ1b2FaY2NjdGFBZWg2OStsWmNqaU00bTFY?=
 =?utf-8?B?a0Q1SVlodml2akpweTFoTDIwVjVzdUxjbWNjUm9PQXBGbWJRdnk5WWtJMGly?=
 =?utf-8?B?TGVZa1FlVG9VaVlnVkFYTTR2VU9GVHlxTDMvSGd5VXhJQVlRNDJ5L29OVTRl?=
 =?utf-8?B?THBvQ3pwSjR3U2FwQWlCcThTL3NrZjZVN3ZjRHNhNjQ0OStUWGNqVy95b1Fi?=
 =?utf-8?B?cVBEaWpKS05NUzFkTXdGZWVGWW1aRDhyeUlRMDNRMm4zNGJ3Wk8rOU1kME52?=
 =?utf-8?B?dU0yWEliTmJOOEErQUhTM2t1TzFWZDhJZXo4RktaOWlEa2FYeExnMGs2bHgr?=
 =?utf-8?B?WUhYRnpRS2JqYU1LbDUyREl3YXN2OXo0ZVBPeDNJcVR0RnZOZjEzV0htZm5o?=
 =?utf-8?B?bkc0ak1VdnFkUllNdTZyOGJwZmpQQmVpRHpqV2Y1WUlIaUQvcS9yY2xmSENm?=
 =?utf-8?B?MWpXeThMT2VuRDlkK1VpdXdQQTBmaWJ4NUZJUi9WeVhoTk51QjRJamNzTjlR?=
 =?utf-8?B?NERPaHI4ZmdPYllQZEJFVndaZzlSYncxRTdWRlZTWFVjRk95MEtrbGZkb1pE?=
 =?utf-8?B?T3dkM2tUTkhpbkt0YXA0d3pNdHYyN1dDMFhvTmhDZlpCQXJYZ0FsSU5OQTVU?=
 =?utf-8?B?c0VzTkJ3WE5KWEtXR2RWdzN2bnlzVWdpbDBqbEtPeXYrbHRCZzBiUk5zckhH?=
 =?utf-8?B?SFVUNmpIZk9JaXQvZ0JSZ3NmS21SNDYrSUdtNDU4MDNPaEUyQ2lJWDhZdTYv?=
 =?utf-8?B?R3BtL0JjUGx2cTFYRlEvQmVPc0ZhWUR5RmpBbklnVmJ1Sm5KdUhDTWNwT1R4?=
 =?utf-8?B?cmplSElLMjBwVXM2eTBOWFdjR25kbnRmaUR4ZnFseWxJMWIyK2FzbzF2RkR4?=
 =?utf-8?B?RElrOTZ2RGxGUjU1bVRJdlpEVk5rcXljNkEyS1RPQmZzdnRMUi9OVnU0MHVr?=
 =?utf-8?B?ejkyYWEwbXNBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RCtRbXNXQVlEcDdvRmhmQUFveEkwaUorbFZFQUxQb0tvY3ZSckxyRHMvVjVR?=
 =?utf-8?B?TThYQ2pjeU9IYUVIT2M0VGNRKzFmcTNCM1U4REFzWTZlcjN0clgvVjZuTGw3?=
 =?utf-8?B?cGMrSUVnd1VYbnRsY2ppeEpGN0pYanU5OUJ2VW1ua3ozQTFnV0xYY3ZPLzVZ?=
 =?utf-8?B?NE9qVHA5S0FTNXcxeHdwaDNTOGVaalE4M200QjljbFI2YWpLVFlFWWlUelBk?=
 =?utf-8?B?MXpBa1k3ak9yNWx2K1pLY2R2NElIbjcwMzI2WndqQVZPZjR2VUk0ZERDV2hu?=
 =?utf-8?B?VlU5NG1FZVVpS3VHTlpYcVlKUnNJQkx2ak5PM25BRXhnYkM4c0Z5Q1NIeEM4?=
 =?utf-8?B?YlVjVHA1QWF5TzU0QWZRcCtrc1NRRTE1YXFiTXhUbk9ZdFd2RENjZUdLU212?=
 =?utf-8?B?eFhQamNnMDJ3LzZQM28zdHo1T0cwcGdvVGRMQm9vSkxncFVLOWlzTjI3SFY4?=
 =?utf-8?B?WjF2TTZQL2JjeWlXb3dlejdvVzI0OFRwM3V2dEdXTTRWcHpvZE1uTVJBeTg3?=
 =?utf-8?B?NWw0MWg0azJ6K3owZFJQMVhKcXQwQzEwYUlWekZQcFduc1pSSW9kbzY4NHFU?=
 =?utf-8?B?VUluR1NLeVFBRkowU3pYWWVYOUNHV2RTL2lJd1pISGh1VjJaUnN5QjNxTldo?=
 =?utf-8?B?d2ZTOS9ZdTBucHFvZTlYanlKWHg3UE1yTEl5YTJ3bU01SjlHcHNXOVNQVkxv?=
 =?utf-8?B?THFNbFUyQkFGZUVoazJkbE51UHpzWFJVTitORG1JQ0JQT1JoUlFDM3BteTZZ?=
 =?utf-8?B?cUhoUkpXVWZQb2w2L3NpcXVMRHZDbTQ3czd6a0dvREQ5dDBZWm8xbkxIT2dt?=
 =?utf-8?B?SXY5Sm5PN0c5c0JvSFRtdVFndUxsQU1DaUNVbUM2YnRBRk8zNWZSSFBrc0Nm?=
 =?utf-8?B?MGg1ZksrMUlxczlZMDR5ck1KQzRTa2MrREdlaG9STk9mdDEzdWxXNmdQSTdh?=
 =?utf-8?B?Mm8vUXdSdlV3cExoQXRPQnNmWStmNzV0WnB3NFhNK2tybS8vdjU0Y2l2MXhG?=
 =?utf-8?B?elZnTUJtMVZDU3JRQ0h6UFUyU2RZYWFEVmNEdXFqTkxwNmR0dXpDTk8vUWdN?=
 =?utf-8?B?QW96ZytQTDZDK2t3SDlSS2htNy9WbDBVSnl3bmZ5TWtCS1dSSzhuanhHUGNt?=
 =?utf-8?B?WWlyWndFeTBqUXFDQnZMNS9CM3BZNktoZWgyT0c1MTNLQm5JU1lVMmZSSktX?=
 =?utf-8?B?Kzc0MVJZem1IcVdrZDI3ZHlIRDBOZFp0eDdONXRhV2JFVE0yQ0x3bTBNaDFQ?=
 =?utf-8?B?dFFYdjJNb0tHVG5oOUZDdGJQdnp3QWZubjJWQXJoSVJCajlEN2ZoYnl4RUcw?=
 =?utf-8?B?NXNpRGRZb1hlakNUQmM3WVlZOTZuLzhiWFpBYWNIcHIxNG9HY3luNE42azFz?=
 =?utf-8?B?c0xMeFNiR05IdzhzYjBaU3lXd0JGYzMrZnpFbXBYblZMM0VTTEQxdmJMZ3Q0?=
 =?utf-8?B?czFDVlFXN2NBd1Uvd2dmM29iWmN3TWRXb2ErVFlBM1ZYTVNubTlvcDFYMUhh?=
 =?utf-8?B?MDFsM2cxMXVlakFlVWU0WUF3cXJyWkNVdmVIVmdlTkNpZ2g5YUJUcFI4VHdq?=
 =?utf-8?B?dXJWUkFGb1ZHYnFwSElHY0x4NEF2NGE0OEgwWDQrQml4WkRod1ZMQUxta2Mz?=
 =?utf-8?B?bWdiZDJxMXBwZU1oVUl4YkhBNkppZDhZQmhSOTFHejRnQktDS0h5N3NHWTRo?=
 =?utf-8?B?U2tnNTVscmhWMnFmZ1Z6YkthZDBmTVE0QTIvSXV2WTBycitJeXNIb0hRYXFM?=
 =?utf-8?B?STR1ekdhYVJORzNiRmFhVVFqNFFzQ3poNmE4SlBXK0t3eFJweUk3VWY5bkFa?=
 =?utf-8?B?RmdxZkNlSVNzSTFFNFQzcXEydW84S3JGNEZCd0FMVWVkcUJEeEgzYzMrNnB3?=
 =?utf-8?B?RTNJczh5dWVkcjlROTROL0V4cjV6clMxSTYzdFArZzRSOWNxdVJ5OXQ0Z1RC?=
 =?utf-8?B?R0U2T1hxcnVoMEtkVGtuQnRYd0NMSEJlTllEb05RTkVuR3NEYUJUMU45ejhl?=
 =?utf-8?B?c0JuaEFyQTFMRkJRa1l4Sk1wTkp4bkdCaVJvVjNFR3gzQ3VqMXJaZFBLZFlt?=
 =?utf-8?B?UDJWN1VsMkt5cEFxN0VpVnJtWW1GY2orS1E2RzgxSFdKZlprczl3V01PNnJ0?=
 =?utf-8?B?VmdvK2U5anFVQUE4VzBrT0FLSmt4ZUxhNW55RElzM3BycFpZQmI3YUtWczRJ?=
 =?utf-8?B?RWo5dW9XZElqRzR5aDErK3VHZXNVNHpJZHBtdzlsQ1dDelZIOTRvWjR2VitI?=
 =?utf-8?B?QWJaeGtVUlNRZEhpdnpDQ2k3SGdnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <29F1EEB3CD630548B25AC1023E4883FD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 810ba132-0397-404f-d3e6-08ddeb9264ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 09:06:54.2860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aqo2OWC0Yeu4YsQvmQ8ckqxcURpDUvT4BrRP8Rv0utScWQH0W/iNMRYglpAzMW4Qkf1soYiQPm/AESK35tJ4WSnqiw1kcBHZHHF1oYBGZ4w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7129
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIxICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSBmdW5jdGlvbmFsIGNoYW5nZSBpcyBsb3NpbmcgdGhlIGV4cG9uZW50aWFsbHkgZ3Jv
d2luZyBzbGVlcCBvZg0KPiB3YWl0X2ZvcigpLCB3aGljaCB1c2VkIHRvIGJlIDEwLCAyMCwgNDAs
IC4uLiwgNjQwLCBhbmQgMTI4MCB1cy4NCj4gDQo+IFVzZSBhbiBhcmJpdHJhcnkgY29uc3RhbnQg
MSBtcyBzbGVlcCBpbnN0ZWFkLiBUaGUgdGltZW91dCByZW1haW5zLA0KPiBiZWluZw0KPiBvcHJl
Z2lvbiBkZWZpbmVkLCA1MCBtcyBieSBkZWZhdWx0LCBhbmQgMTUwMCBtcyBhdCBtb3N0Lg0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCg0K
UmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0K
DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24u
YyB8IDEwICsrKysrKy0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfb3ByZWdpb24uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfb3ByZWdpb24uYw0KPiBpbmRleCAzODAzMTRhM2I0ZDkuLmNiYzIyMDMxMDgxMyAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYw0K
PiBAQCAtMjgsMTMgKzI4LDEzIEBADQo+IMKgI2luY2x1ZGUgPGxpbnV4L2FjcGkuaD4NCj4gwqAj
aW5jbHVkZSA8bGludXgvZGVidWdmcy5oPg0KPiDCoCNpbmNsdWRlIDxsaW51eC9kbWkuaD4NCj4g
KyNpbmNsdWRlIDxsaW51eC9pb3BvbGwuaD4NCj4gwqAjaW5jbHVkZSA8YWNwaS92aWRlby5oPg0K
PiDCoA0KPiDCoCNpbmNsdWRlIDxkcm0vZHJtX2VkaWQuaD4NCj4gwqAjaW5jbHVkZSA8ZHJtL2Ry
bV9maWxlLmg+DQo+IMKgI2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4NCj4gwqANCj4gLSNpbmNs
dWRlICJpOTE1X3V0aWxzLmgiDQo+IMKgI2luY2x1ZGUgImludGVsX2FjcGkuaCINCj4gwqAjaW5j
bHVkZSAiaW50ZWxfYmFja2xpZ2h0LmgiDQo+IMKgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfY29y
ZS5oIg0KPiBAQCAtMzU3LDEwICszNTcsMTIgQEAgc3RhdGljIGludCBzd3NjaShzdHJ1Y3QgaW50
ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gwqAJcGNpX3dyaXRlX2NvbmZpZ193b3JkKHBkZXYsIFNX
U0NJLCBzd3NjaV92YWwpOw0KPiDCoA0KPiDCoAkvKiBQb2xsIGZvciB0aGUgcmVzdWx0LiAqLw0K
PiAtI2RlZmluZSBDICgoKHNjaWMgPSBzd3NjaS0+c2NpYykgJiBTV1NDSV9TQ0lDX0lORElDQVRP
UikgPT0gMCkNCj4gLQlpZiAod2FpdF9mb3IoQywgZHNscCkpIHsNCj4gKwlyZXQgPSBwb2xsX3Rp
bWVvdXRfdXMoc2NpYyA9IHN3c2NpLT5zY2ljLA0KPiArCQkJwqDCoMKgwqDCoCAoc2NpYyAmIFNX
U0NJX1NDSUNfSU5ESUNBVE9SKSA9PSAwLA0KPiArCQkJwqDCoMKgwqDCoCAxMDAwLCBkc2xwICog
MTAwMCwgZmFsc2UpOw0KPiArCWlmIChyZXQpIHsNCj4gwqAJCWRybV9kYmcoZGlzcGxheS0+ZHJt
LCAiU1dTQ0kgcmVxdWVzdCB0aW1lZCBvdXRcbiIpOw0KPiAtCQlyZXR1cm4gLUVUSU1FRE9VVDsN
Cj4gKwkJcmV0dXJuIHJldDsNCj4gwqAJfQ0KPiDCoA0KPiDCoAlzY2ljID0gKHNjaWMgJiBTV1ND
SV9TQ0lDX0VYSVRfU1RBVFVTX01BU0spID4+DQoNCg==
