Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F00B3B8A6
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 12:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 410D310E146;
	Fri, 29 Aug 2025 10:24:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gf1NSSr2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2665610E146;
 Fri, 29 Aug 2025 10:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756463044; x=1787999044;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jrWvGxHh/pyqZV2XmmMtAaF7SCBveG7w+IqxhdxW20w=;
 b=gf1NSSr2a0ONM4r8xV/llKuCLL9X1RGsjgkdKLTFO3PsTOqQeHxHFEv0
 Tj82UcN/Ah93gonnP72UD5P8/sE61RBUMNOsjUxPaPDDkhbbz6SQ9l1B2
 Bp412qwHXUOXoUvEj0Yh6aT4nqGx0fiRwWNASoFahlba4X9cGYIstu0WW
 QDQIVOoAnXu2mGfwliDhy8yLI1JFNpHW7VpF/TJppFhajnGmSmLcekBrH
 tZEPHoZEunAdlr5Cf2e6AqYdiOlqY8TRbc/AMVfskOIMPCv4t605R352r
 FD9at9GXmTl9H41VuNp77MvXXC5OnHf7qYkVK82LPvJVhDHH+rHmD4CBL A==;
X-CSE-ConnectionGUID: ryGNy4/qR762q74+PLMIsg==
X-CSE-MsgGUID: spxn1iIySxKVgDhWHH24cQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="69020858"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="69020858"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 03:24:03 -0700
X-CSE-ConnectionGUID: eSsYv2BmQxmPpiMNlrXiiw==
X-CSE-MsgGUID: GzU0UCzhSKy0oslGucl3xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="169877016"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 03:24:04 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 03:24:03 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 29 Aug 2025 03:24:03 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.44)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 03:24:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EQNo8whsA0FHE+luCWhBDDHXOkrXdBu9OIopYfAVjBo8wsglTnSw4MqUTpw8C2CdCD1jl5gBkCJYgT3ytbKJTtBzJP9cBBnOSWqdwiaHScTwrEt2I5P2MreppwQWI+HCD/cMbHXtKhk1KoV3pApgBw+l/eOqRiMSfCMheeFwc6ahv0jLtfeScVIxMqGbzm7br3uoM+7Z3yGf970ctyOsAwI7KWC1O6f04ZsmH8C5prVd2rHsgc/8gw00sEFVPgT3l5+DNLCZwsu/qaN+VIazUwCgfEUBfM12BHzUj5Dd3LzgZcCxD7L3UVt0G8VbQP1zrQ10VxJBr3pP+jgNknUORg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jrWvGxHh/pyqZV2XmmMtAaF7SCBveG7w+IqxhdxW20w=;
 b=AH5TvtFRTd+d//vQ3SyP9dIGRNeYQWNGkp7KMF/wshy/U01xx73SRitdRO1+hgk55OTKVhIL/Quz3BStobX2rT3rxa/EdCWgCCISvJ2Rsuj/AnWAt+Xjrs7YglD3WfVlDFC6K9R1PZ482B0Va7NzHZ5iSSvupFQoVlKYoCqBvysdEKJhx7sWcwBU2KLFH0bz8qifIqG6s/W0q2psLl0wHbFZR4XS3n2diX8shsxjBbYp5+4vwl16xn5mEGDQ9Xf7QRI1j17YBk/6EdaBeyhPcbi9usdt/QjNCi3YQC9nnfDleQJyYS06QnHjC3MP9Kzf/RazGs0isAyCKzYw8kg60Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CYXPR11MB8663.namprd11.prod.outlook.com (2603:10b6:930:da::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9073.17; Fri, 29 Aug 2025 10:23:51 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%4]) with mapi id 15.20.9052.019; Fri, 29 Aug 2025
 10:23:51 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2 3/4] drm/i915/alpm: Replace hardcoded LFPS cycle with
 proper calculation
Thread-Topic: [PATCH v2 3/4] drm/i915/alpm: Replace hardcoded LFPS cycle with
 proper calculation
Thread-Index: AQHcGKdzZznc4QXkIEW5PJI95uRzprR5bHVA
Date: Fri, 29 Aug 2025 10:23:51 +0000
Message-ID: <DS0PR11MB80499F31F8098B51FEE1A357F93AA@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20250829053929.3585636-1-jouni.hogander@intel.com>
 <20250829053929.3585636-4-jouni.hogander@intel.com>
In-Reply-To: <20250829053929.3585636-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CYXPR11MB8663:EE_
x-ms-office365-filtering-correlation-id: 7b7291c8-a372-452b-cae9-08dde6e62635
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?M3Jkdm8xSVFhQVlTMWNKR0hlWnlGak5QQWd4MEYxblF2VmtMNmJONmlzZlEx?=
 =?utf-8?B?ZUVLL0lFcnBIem5GRlpxS0tJaW5nY2NPdHQyK0dKYWgyWncvWGhURmFrV0o1?=
 =?utf-8?B?M3dScnAweVRwUVd3L3EwNmg4MDQ3SThjUW9NcE1sbTZuL3lOdnFseW9najI2?=
 =?utf-8?B?WEhCck5HeEEzUmZwT1NUM2lmcVNxUG53QUt4UVQ5Vnh0R1ltaDdyOXo0dWVh?=
 =?utf-8?B?T3FIbDhoeDdLdEY3TndCU3JOZkpCYnJwMERiY1VaZDNHeGgxRjdjempqVTBo?=
 =?utf-8?B?c0pGSjZFalNad0Qxd3k5czNmUDZ1OHBoMWsxYWY2MlJ3eXAwZGt3MmYrU25C?=
 =?utf-8?B?bXFGbTFSVzZQWnJ0dEZTWHp6dmM3T1RseE14SUNnNkg3YXRFdGVJVGhiRTVn?=
 =?utf-8?B?aXMybStKZGxjQ3JIR2NUYXhqQ3dFT0ZOZWdFOGREY2g4Mk1QWW96MkFLUCt1?=
 =?utf-8?B?cTZ4OXcvL1VLSlZ3ZkFJSys0ekJvVGFoMUhmK2N6T1YwMW9sOHo0VmlqRDJX?=
 =?utf-8?B?ZWtuMndscHdJTlI5cmYzcVhqekE5Nk9yU2RnaThzdkVaeWNGczViSWlESzFh?=
 =?utf-8?B?NW9uY2tOcllXSU9sZ0pST3VoMldzeU9MZFBjMm1pTEgrb0J3c01WS1BVYlM3?=
 =?utf-8?B?eFVCWGRuWW1pUVdrdWNPV2pLVXZXR1V2QjZCeWhNeGpXaWJUNU56d0hwK2lN?=
 =?utf-8?B?OUxMZnhtRjFxa2xCNFNudmszWE1iSTd0QVRXR1pNN3Jlam1PVEVOcitxSzhW?=
 =?utf-8?B?QXZEMlJWdW12emhXV3c4RGZnNG43OW9wQXpVSTNuWEg2VlFvdUtJcFROSnRO?=
 =?utf-8?B?YjFINUYxdTFNT1NCR1owbVhQTlhqQVNyYkdsZDVhTDM2UmUyTGZCTFJqQ0lY?=
 =?utf-8?B?QkRlMmJ2MWdPaUMrZHRxUitBNFd3RFI3TDI2aXJxSm9DZmRGdCs2OHpJY2ww?=
 =?utf-8?B?ZXhBbVNvUllnUVBja3N0WHpWTFhRbGRqWStlZ05iOW5QMTV6N0JFaDdJZnc0?=
 =?utf-8?B?ekZ5RVhTMStOQWt6ZXI5K0FsQ0hiY3VGRUhJMDB0a2lKaFJNUVhac0pzSWhX?=
 =?utf-8?B?Q04ydkprZWg1Ym1GZ25ISEVTZEVPLzJSRjFEY2pUNmFHdGNqSytOckZxVjZQ?=
 =?utf-8?B?VExvUVRRY0wvS0pTQXk3dzh4YUhQd2doNUlJRUpHZ2Zac0drYnJuSElWRXpN?=
 =?utf-8?B?dno5RkZuZ2FuNlFWWG9hUWJhcWhpN2h6eTZ2ZnJrS1BZQThKU05uek1GOUk5?=
 =?utf-8?B?c0p6TzUzUG93SXFCYUNYWDhvVXZ5emNaV1Z1ZnRmbVZaR1lETVRtNE1ZRkda?=
 =?utf-8?B?QncrY25HblEwbWNVVjl4dnN0QWR4aTljYU01cm1IdW9xY0E2YWVlY3dKMHRJ?=
 =?utf-8?B?NFJRSnBSMXZGZldrQnFocjVjbFQwRk1yNm5ZS01YcjdkQ296YUY2UDBnWm5l?=
 =?utf-8?B?ZVZobE9GVUlwcXVYdGdNT1ZzeDQrSEhkbjkzdFA5SzlMSVkzemtBSHhValY2?=
 =?utf-8?B?S1pSbU9BVnFwaS9xMFY3R0I3citGaytsSXNNWGNQa0dlbHBOQ0RnNFB3MlV6?=
 =?utf-8?B?TnhhS1ZwSE4vUEkzalFYMDNRV09ObTEyTGZQdlc2dkF6a1FpVVZNeHJWZXUr?=
 =?utf-8?B?cFhoM0x4ZFF2enRoYWp2emtDbitLbzd5WTR6ZisyQ1dOVFRPQ2NWU0hjTnQv?=
 =?utf-8?B?dTcrTDh2cE4xREtEcXpYUHpSaEZnRGpxWXpodlVXVi95UkkzWXpDWWRwUHBq?=
 =?utf-8?B?UytXbUF2cjh6ajZYZWVTSHIwcWpEdkQzNlFCdVgvblNGdEZEaU90UzRSQkhi?=
 =?utf-8?B?K2VuQVM4VVhBendWaStNdk1TaEV0ZjNmbXNySFdIVUxzVE1tTURXY3BneUZ6?=
 =?utf-8?B?eUlRUFhBOWxYcEt4WTdNdFJhR2JGTklPbm44L3JlZENWT3RaeGdabTVZdFVD?=
 =?utf-8?B?Y0lxSDRZcDRPN1orMTBvOHdUa0E0NzRjR20rWjFBRmY3bkZOeTNnYlYveGtN?=
 =?utf-8?Q?g1wzjtO5s8o0u6lFNl9aDEIWy+1uwk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NHdKYmVmbmlhNE0wT1FKRHV1aDg5bUd6SndVUXJ5ZnM4OEtiWHpsaDM3VTZF?=
 =?utf-8?B?NldkczZRTXdlK0J5U0NEQWI5dHY0YlhqMTNrQ2lyTUhxSFp4cVFlTWZQNjNX?=
 =?utf-8?B?N1NmMS9SRkxjd1h0dStiQ2VjNVlFK0F6MjBGZC93SHJySWRqd0hFVUpIZ0hI?=
 =?utf-8?B?bU96WlpBaldwZUh3MWJoalprdVFiQmRXVnZtNGlEbXZIZ2ZSTi92T1BaZThJ?=
 =?utf-8?B?c08yczl3T0h5a1pqd1loQkFyeUpqUHNSZzBzMGk2V21QR29FL3VWckhzeHBX?=
 =?utf-8?B?YkdaYlJ3Z21aOEJNellXOVQzQjZHcTJqVHhDd3pDWjhwa0lTRkFVb1VYdTNw?=
 =?utf-8?B?MTJiYkNZRExZS3NvQ3MxYVBISHZGTGlWcjE3WWVrUm0rRUxlc2gxbzYyQ0Fl?=
 =?utf-8?B?VFN3R3NzNU9DNndMSnhtZWRITHZvRC8wU2R2ZitsQWlKb004cmxNSmRFMEVY?=
 =?utf-8?B?YXhoRmEzSmlVZzdEekN4eGFIYmhWcGhIR0FDbVVjTG9XbmxybXl3VFhOV1Ax?=
 =?utf-8?B?RVlWdFdJWWJ4VGtwQlBPL2JranRYL2ZHYWxmaU4yenY4VkpTTEErMEhiYmFm?=
 =?utf-8?B?STJxNGpsV3ZIbHh6OHhTSjI3NXhPS0ovNFluVWJIK1VOV081K3duWmhWL3FK?=
 =?utf-8?B?dCtzUnVBUTVPTHpyY3NnRmhmNUZGbVpsYmJ0NnJyRHRYWDBpSjVlTXJHTm1y?=
 =?utf-8?B?bTgwcnU3YWxKNHo2UjloT29hS0JkZWZqVVFsZmpXQmlPUTJxWlQ4Y3Y5c0x0?=
 =?utf-8?B?b3pTekVPdVZkRkl6aGxnZUYwczlUamNwV25QOUtJd2c0N0owS2Mrc29xWG9S?=
 =?utf-8?B?Sk1DTXFvZDhWSlFHb3dlTThRbzAvOTRQZEdLRGlhRG5YVFdHUDJkaTl0V1V2?=
 =?utf-8?B?bWhLbTl5OGZTSDRSM0NVWVhpRXZBMzNhYzV4Q0J3WEIzRm5wblE3Z1VMNXBj?=
 =?utf-8?B?SFNadFNQUk9ISG9jTnQrdmEvV0x5Mkh6YXdKM2k4NjV6TW5xc3pBak5TN1Bh?=
 =?utf-8?B?dTJOS2llaEhqN3lBRURnT292RGFtcG5xbkRtWnhZQ3hrQWVNOVd0RXJkdEFP?=
 =?utf-8?B?Ym82Tkd0RTZ6cEhJTTRYajdTWUlKQmYvNi9nTGU1QWI2YmhobFA4aWxwZWpL?=
 =?utf-8?B?K2FBTDAyajVXRXV1c2I1OW94K2dYcDFjalRocTZVVHFWUnhST01qUjdtVlk5?=
 =?utf-8?B?NDI2bHJ2dUZZcGFLUGVZWlZ1MlFOQW9PZE1hUXVCT2RWc2c0Y2dpaWdPTGFH?=
 =?utf-8?B?Q3BHcERRSTZqWkFTTXYzelo4Y1lZRkNOWTgvbEF3NE5nWnJGcFpydmNHM1Ax?=
 =?utf-8?B?TXdrSitWeHl0VEhXMHZVa3YyU2NFNEpQcWtBNWRzTGdwa1lJMHhpNFpVZ0FE?=
 =?utf-8?B?WFY2SWRJUG1vSjZ0RVM0VGxtNStOdFNZOVMvSEdoQ2x5REM2SXdBTUwwZmg2?=
 =?utf-8?B?M0ErYkN3N3N1QW1tdm02Z2IxOTB3SURMU2JTQnJWYUh3UC9tMElBa1BCRnYv?=
 =?utf-8?B?MkhWYTZ0QWIvZXRHV2kxem9PNDdBY20rZEw3Q2M1ZnVuZHFocWN1UUovVWtW?=
 =?utf-8?B?aGw1KzRpOVNReVJEK0VRNlVXeEZnTU8wRTM2TENPSTYvZHRYdS8yU1dKVWU0?=
 =?utf-8?B?MWp5UW9XVmxWVEtUYTNuM0JNckthYWtXbjZMWHcwTzJmdG9mTHc3eWMxdCtw?=
 =?utf-8?B?NkJZcHNKaEFJTGx0TkxSdSsvR2hOYjdXVC9rU0R2V1RXTXRYaU95SWxKY1g2?=
 =?utf-8?B?SWV0Q3hpaEdoTUpNdEJrUUxyUi9oSkR0cE9Ja052UXowbDk2YU5DTGdtdkh4?=
 =?utf-8?B?Slg3N2lmenNld1ljKzlWT3k3R3h3MVYyUTh5eDlmWndoRkc2OHhFTnFmLzNB?=
 =?utf-8?B?WS9QUGFLNENqYklxbStjQ0RDdGV6ZGd2eDAvaEErODdEZjVoNUF4Q1ZVZzFr?=
 =?utf-8?B?S1BadEY2ZENDNGVoT25GM1JUMVQybTFxUkM4SGtoalIzakhKNVY4SVhSQW5P?=
 =?utf-8?B?R1FBUWxjdnJabGhTSlRJMzQydDFYaHdacS9XcFNUQ3NhYU1ib24zbW1Pd21X?=
 =?utf-8?B?akpGOXlwVFZuSUptMngwbEVnVVhMdkdYbmFQRTdNQTVwbDFTWHgwS1NDc0pl?=
 =?utf-8?Q?dwTX0LAXpy9gNDTHUATX98gxY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b7291c8-a372-452b-cae9-08dde6e62635
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2025 10:23:51.4320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TXfqIX+gxf3t6MEli7S/X2QGsiiXxymWyKOxe6fev4q7EYzLRSXJ9eBWtTcMUVtoWc0nXeP6qMrGAj+MM9sifQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8663
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IEZyaWRheSwgQXVndXN0IDI5LCAyMDI1IDExOjA5IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMy80XSBkcm0vaTkxNS9hbHBtOiBSZXBsYWNlIGhhcmRj
b2RlZCBMRlBTIGN5Y2xlIHdpdGgNCj4gcHJvcGVyIGNhbGN1bGF0aW9uDQo+IA0KPiBDdXJyZW50
bHkgTEZQUyBpcyBoYWRjb2RlZCBmb3IgZGlmZmVyZW50IHBvcnQgY2xvY2tzLiBSZXBsYWNlIHRo
aXMgd2l0aCBwcm9wZXINCj4gY2FsY3VsYXRpb24uDQo+IA0KPiB2MjogcmVwbGFjZSBoYXJkY29k
ZWQgMjAgd2l0aCAyICogTEZQU19DWUNMRV9DT1VOVA0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBB
bmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIHwgOTAgKysrKysrKysrKy0tLS0t
LS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCA1MiBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2FscG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5j
DQo+IGluZGV4IGFlNTU2YTg4NWMyYS4uYjA2MWY3MTY1YmJhIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBAQCAtNTgsNTggKzU4LDQzIEBAIHN0
YXRpYyBpbnQgZ2V0X3NpbGVuY2VfcGVyaW9kX3N5bWJvbHMoY29uc3Qgc3RydWN0DQo+IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJCTEwMDAgLyAxMDAwOw0KPiAgfQ0KPiANCj4g
LS8qDQo+IC0gKiBTZWUgQnNwZWM6IDcxNjMyIGZvciB0aGUgdGFibGUNCj4gLSAqDQo+IC0gKiBI
YWxmIGN5Y2xlIGR1cmF0aW9uOg0KPiAtICoNCj4gLSAqIExpbmsgcmF0ZXMgMS42MiAtIDQuMzIg
YW5kIHRMRlBTX0N5Y2xlID0gNzAgbnMNCj4gLSAqIEZMT09SKCAoTGluayBSYXRlICogdExGUFNf
Q3ljbGUpIC8gKDIgKiAxMCkgKQ0KPiAtICoNCj4gLSAqIExpbmsgcmF0ZXMgNS40IC0gOC4xDQo+
IC0gKiBQT1JUX0FMUE1fTEZQU19DVExbIExGUFMgQ3ljbGUgQ291bnQgXSA9IDEwDQo+IC0gKiBM
RlBTIFBlcmlvZCBjaG9zZW4gaXMgdGhlIG1pZC1wb2ludCBvZiB0aGUgbWluOm1heCB2YWx1ZXMg
ZnJvbSB0aGUgdGFibGUNCj4gLSAqIEZMT09SKCBMRlBTIFBlcmlvZCBpbiBTeW1ib2wgY2xvY2tz
IC8NCj4gLSAqICgyICogUE9SVF9BTFBNX0xGUFNfQ1RMWyBMRlBTIEN5Y2xlIENvdW50IF0pICkN
Cj4gLSAqLw0KPiAtc3RhdGljIGJvb2wgX2xubF9nZXRfbGZwc19oYWxmX2N5Y2xlKGludCBsaW5r
X3JhdGUsIGludCAqbGZwc19oYWxmX2N5Y2xlKQ0KPiArc3RhdGljIGludCBnZXRfbGZwc19jeWNs
ZV9taW5fbWF4X3RpbWUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3Rh
dGUsDQo+ICsJCQkJICAgICAgIGludCAqbWluLCBpbnQgKm1heCkNCj4gIHsNCj4gLQlzd2l0Y2gg
KGxpbmtfcmF0ZSkgew0KPiAtCWNhc2UgMTYyMDAwOg0KPiAtCQkqbGZwc19oYWxmX2N5Y2xlID0g
NTsNCj4gLQkJYnJlYWs7DQo+IC0JY2FzZSAyMTYwMDA6DQo+IC0JCSpsZnBzX2hhbGZfY3ljbGUg
PSA3Ow0KPiAtCQlicmVhazsNCj4gLQljYXNlIDI0MzAwMDoNCj4gLQkJKmxmcHNfaGFsZl9jeWNs
ZSA9IDg7DQo+IC0JCWJyZWFrOw0KPiAtCWNhc2UgMjcwMDAwOg0KPiAtCQkqbGZwc19oYWxmX2N5
Y2xlID0gOTsNCj4gLQkJYnJlYWs7DQo+IC0JY2FzZSAzMjQwMDA6DQo+IC0JCSpsZnBzX2hhbGZf
Y3ljbGUgPSAxMTsNCj4gLQkJYnJlYWs7DQo+IC0JY2FzZSA0MzIwMDA6DQo+IC0JCSpsZnBzX2hh
bGZfY3ljbGUgPSAxNTsNCj4gLQkJYnJlYWs7DQo+IC0JY2FzZSA1NDAwMDA6DQo+IC0JCSpsZnBz
X2hhbGZfY3ljbGUgPSAxMjsNCj4gLQkJYnJlYWs7DQo+IC0JY2FzZSA2NDgwMDA6DQo+IC0JCSps
ZnBzX2hhbGZfY3ljbGUgPSAxNTsNCj4gLQkJYnJlYWs7DQo+IC0JY2FzZSA2NzUwMDA6DQo+IC0J
CSpsZnBzX2hhbGZfY3ljbGUgPSAxNTsNCj4gLQkJYnJlYWs7DQo+IC0JY2FzZSA4MTAwMDA6DQo+
IC0JCSpsZnBzX2hhbGZfY3ljbGUgPSAxOTsNCj4gLQkJYnJlYWs7DQo+IC0JZGVmYXVsdDoNCj4g
LQkJKmxmcHNfaGFsZl9jeWNsZSA9IC0xOw0KPiAtCQlyZXR1cm4gZmFsc2U7DQo+ICsJaWYgKGNy
dGNfc3RhdGUtPnBvcnRfY2xvY2sgPCA1NDAwMDApIHsNCj4gKwkJKm1pbiA9IDY1ICogTEZQU19D
WUNMRV9DT1VOVDsNCj4gKwkJKm1heCA9IDc1ICogTEZQU19DWUNMRV9DT1VOVDsNCj4gKwl9IGVs
c2UgaWYgKGNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPD0gODEwMDAwKSB7DQo+ICsJCSptaW4gPSAx
NDA7DQo+ICsJCSptYXggPSA4MDA7DQo+ICsJfSBlbHNlIHsNCj4gKwkJKm1pbiA9ICptYXggPSAt
MTsNCj4gKwkJcmV0dXJuIC0xOw0KPiAgCX0NCj4gLQlyZXR1cm4gdHJ1ZTsNCj4gKw0KPiArCXJl
dHVybiAwOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW50IGdldF9sZnBzX2N5Y2xlX3RpbWUoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKypjcnRjX3N0YXRlKSB7DQo+ICsJaW50IHRs
ZnBzX2N5Y2xlX21pbiwgdGxmcHNfY3ljbGVfbWF4LCByZXQ7DQo+ICsNCj4gKwlyZXQgPSBnZXRf
bGZwc19jeWNsZV9taW5fbWF4X3RpbWUoY3J0Y19zdGF0ZSwgJnRsZnBzX2N5Y2xlX21pbiwNCj4g
KwkJCQkJICAmdGxmcHNfY3ljbGVfbWF4KTsNCj4gKwlpZiAocmV0KQ0KPiArCQlyZXR1cm4gcmV0
Ow0KPiArDQo+ICsJcmV0dXJuIHRsZnBzX2N5Y2xlX21pbiArICAodGxmcHNfY3ljbGVfbWF4IC0g
dGxmcHNfY3ljbGVfbWluKSAvIDI7IH0NCj4gKw0KPiArc3RhdGljIGludCBnZXRfbGZwc19oYWxm
X2N5Y2xlX2Nsb2Nrcyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiArKmNydGNfc3Rh
dGUpIHsNCj4gKwlpbnQgbGZwc19jeWNsZV90aW1lID0gZ2V0X2xmcHNfY3ljbGVfdGltZShjcnRj
X3N0YXRlKTsNCj4gKw0KPiArCWlmIChsZnBzX2N5Y2xlX3RpbWUgPCAwKQ0KPiArCQlyZXR1cm4g
LTE7DQo+ICsNCj4gKwlyZXR1cm4gbGZwc19jeWNsZV90aW1lICogY3J0Y19zdGF0ZS0+cG9ydF9j
bG9jayAvIDEwMDAgLyAxMDAwIC8gKDIgKg0KPiArTEZQU19DWUNMRV9DT1VOVCk7DQo+ICB9DQo+
IA0KPiAgLyoNCj4gQEAgLTE2MSw4ICsxNDYsOSBAQCBfbG5sX2NvbXB1dGVfYXV4X2xlc3NfYWxw
bV9wYXJhbXMoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAlhdXhfbGVzc193YWtl
X2xpbmVzID0gaW50ZWxfdXNlY3NfdG9fc2NhbmxpbmVzKCZjcnRjX3N0YXRlLQ0KPiA+aHcuYWRq
dXN0ZWRfbW9kZSwNCj4gIAkJCQkJCSAgICAgICBhdXhfbGVzc193YWtlX3RpbWUpOw0KPiAgCXNp
bGVuY2VfcGVyaW9kID0gZ2V0X3NpbGVuY2VfcGVyaW9kX3N5bWJvbHMoY3J0Y19zdGF0ZSk7DQo+
IC0JaWYgKCFfbG5sX2dldF9sZnBzX2hhbGZfY3ljbGUoY3J0Y19zdGF0ZS0+cG9ydF9jbG9jaywN
Cj4gLQkJCQkgICAgICAmbGZwc19oYWxmX2N5Y2xlKSkNCj4gKw0KPiArCWxmcHNfaGFsZl9jeWNs
ZSA9IGdldF9sZnBzX2hhbGZfY3ljbGVfY2xvY2tzKGNydGNfc3RhdGUpOw0KPiArCWlmIChsZnBz
X2hhbGZfY3ljbGUgPCAwKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IA0KPiAgCWlmIChhdXhfbGVz
c193YWtlX2xpbmVzID4gQUxQTV9DVExfQVVYX0xFU1NfV0FLRV9USU1FX01BU0sNCj4gfHwNCj4g
LS0NCj4gMi40My4wDQoNCg==
