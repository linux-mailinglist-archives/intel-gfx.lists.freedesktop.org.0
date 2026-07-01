Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VyoKOQ3sRGoD3QoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 12:29:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A47D6EC27B
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 12:29:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jhYcEzDY;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A446510E362;
	Wed,  1 Jul 2026 10:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DEB410E332;
 Wed,  1 Jul 2026 10:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782901770; x=1814437770;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VcY/0c4emcJSqdlsBpFdZTRAXcWVYtux3gT0E20tnMU=;
 b=jhYcEzDY+Wb7Ny+RuGYLF8pfKDyMAJRJ9Cv4+w1dpIBzs6cabnQ1zI4S
 2GEmmp7zirqvP2aQOi/udFUCeH7OoeHLC9b69kZ+8RpBkeh7GAPvAPzWS
 NevnOOWcZ7mOpzdMqlo4y1rr3mR1ZnaCSjsPX69Rjaqq6FN09+qVZ7MT+
 kX+IoRHbOJm8sqjQvLKckRIYofbfhw+WFA7rbgsFBXzsAS15l+Ms64wPc
 /SpMEyYC81u7bt10iRo2cQpmt/c6WyZd8kGHH53mf+5V0ROWoUwtMU6nX
 ldl02ZBlqa4kKwTJWuFxmhzqu5B3HQL2djO5+GM4sFxKz5BdzChfOgs31 A==;
X-CSE-ConnectionGUID: NBrkCCJ8Tc2hzUui+1XGcg==
X-CSE-MsgGUID: 9V3OUIcARHSiUiDoGjfggg==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="106421349"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="106421349"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 03:29:30 -0700
X-CSE-ConnectionGUID: wpVMy/JKTyysQ8cgLtALUQ==
X-CSE-MsgGUID: xxhOL6EmRbqVDGjo/VGXLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="250808840"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 03:29:30 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 03:29:29 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 03:29:29 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 03:29:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g6Xph+Wn+nJSuJQESpScmKXoJ9XDvuT/jdDhsNjTi1w6visHfqvrV3ewzJ6Qd4vd8cL3Lrz+ANNxYcp4FUUQmm/y0NNmLWLPIaSLq6lN6XHmcmWcQkGDtWM16iZW62kfTPY86DG0LihKi4etGewJxczbPdX+TlqygeqL6rSp70dotUvggE3qSRGKDpYKsGfkG68GEYYc7i4XE3S28853Ita38Ced9P/xeWDHowDYb4J12Jr6B4SnoQ3BHXy6CnCURbkof7Nbw0gFICcMpYvOr1iGU681nj1/9EzGLSe0/Mz38bQK8igJznuqVvfxB58NEQjNh1Svf2Ogts6LKeUORA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VcY/0c4emcJSqdlsBpFdZTRAXcWVYtux3gT0E20tnMU=;
 b=W7BModx30osEILfvieMHxqDk/loRd2WRH4RqjVBCdGmIRQvf0+4Hzuu4NgJthFi6BAyE8rrBIhEKoh4Zj5iLRe7TYaLKNtKrHJ+up6hvHW0mIn/MRg8hh7RZcjz6T/W5Zfjafqw0TBF8+T8V3kDrLHRRSnyNAo1m6SmkpCfH70Lit2algxiq3vElYlQw2rshKPBpplBH5EcScpa7x2UjGlMgZM+BP2mCDyM4LtsrofTLroHaGgdLN6M6nHiST5ajvnFEVzCc0mMh5/w5kvlatu1J/M6cnJTcq5Yp1JUPpxpxzv2ULXEd49jxYqlTPA/5b714va8BVagz/qurfs3kMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by SJ0PR11MB4974.namprd11.prod.outlook.com
 (2603:10b6:a03:2d6::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 10:29:26 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 10:29:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>
Subject: RE: [PATCH v2 1/1] drm/i915/psr: Block DC3CO entry during active frame
Thread-Topic: [PATCH v2 1/1] drm/i915/psr: Block DC3CO entry during active
 frame
Thread-Index: AQHdCUGW2CN7rN10t0+z5nZBDTJNIrZYdatA
Date: Wed, 1 Jul 2026 10:29:26 +0000
Message-ID: <DS4PPFE901A304F69A1071DF16E633218CEE3F62@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260701100650.1689665-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260701100650.1689665-2-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260701100650.1689665-2-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|SJ0PR11MB4974:EE_
x-ms-office365-filtering-correlation-id: 90b357ae-28a3-41e0-7866-08ded75ba03d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|18002099003|22082099003|38070700021|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: ktMn7MPSqr/qbEP/e4uI7mDukB51sbGoDGoUSitxKv44u1l1tBa6+U+rqcAmXLenitfE47U5x0wN/nFyevxkyAIyE2XZjbaMLi27KbBJ8jNO57ITYOYwUMqBYZLarFvEfLjHwCzhQ6idr1292y7xexeK1Xdhv1Z3Wl6VOI265ReytoXK4NIOAis3DZ1gyG9JDFP46FhmNV1Dwv+FlMZyXWU8MBWhFsUYV/+DQkiD5TJUt57xk2fjJ/T2E0n5r+2sQQDpD28zy2ZRmAdRs053C/SHrLoM2WPsFBxAyKLL5IDM/sHdtd5bh38EOMs06yZUI1+AZfb6cBMt19lGcI0m3a8KzVCnTT6t8a4dm4ned7WgeGmRfJVe7P3vVpAx0wy5/cWPH3l32kK+BnrsY0B2nQhO6mcBajFFnbqBWBHvabg7ncPd/XxCVKx9yN1CrhayZ6y5NyVgHQG6STU2eCz6oxcfdlkw0y72GCls21LxVObUMFbD28K7Y8uHB0CuDjdKvFzJ+4wBU8d2tiw1GoCNHrPykT/cZq+6aPSofueKkQDo2EhYHBpGkeKKdY/W8N35ctgqrYSbVnpG80vBn2GKnaZylvozinqsrKjevRjyFqFccUblNGFVgEMri1nhC663pScExR3gWFbFvN3893CaI/1XYGXRiAwBh/gElekxuAJJPuglC9tv2hTzUrD4ABnC4vkEUH0OJ6tgDmmVUyAmTHJssqzqUEnfC79x7knNDBw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(18002099003)(22082099003)(38070700021)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OElZRWlJbGwzc3RSaG9kSEc1V0pwbjBQbklkNzErZldKeDE1ZVFUK3o2RVdK?=
 =?utf-8?B?ZnJWa0ZOL0JRS3Zsdkd5cUt5Q21aNzVRaFh3T2VmL3ZLcXhNZkp1THEwaDVR?=
 =?utf-8?B?ejRyN1VFSTcwWXJ6eTgyZDUxWFQzT0lpV25xUjkzY1ZkRTVlemRISS9TbDkw?=
 =?utf-8?B?QVFQNlNHU2VTSDg4dnhrdWUrK1pUc0hGeHJYb2t3bTBUN3ppaXdzNEZjNzFG?=
 =?utf-8?B?MFRja1ArN0l1YktSZE51aUl0ZzlOQkVpK0NpcUk1NUxobHlRRk5lU29rODQ3?=
 =?utf-8?B?YTZoeEFKRVowTkh4d09FdWhrdjJkUlF6d3BkamFVZ0JpeW9MdHRiV2dKYXBD?=
 =?utf-8?B?ZUxpL3NCanpxSTNZMkN1SVhkc3plRjRyVE92WDFJdklCSVJ6SWF2Sy8wbXJz?=
 =?utf-8?B?WUZvYWxWb1NVTWZrUHRZWkd6L3NiQ2ZKVW90N0IrcTgyTXZRY21uQ3cxdGZ6?=
 =?utf-8?B?ZnRzUCtIbi9uSnl0UDBjcG5KeUFEVGNvWVZKMktNOThSdWFMWDZKOE10bE5Z?=
 =?utf-8?B?VS9pOVNJS0Q3UkRKWVlFb0RIaGVQVjFzNnZndGlJM2NnVzZ2ZmZGNnZRNVA0?=
 =?utf-8?B?SzArRXFYaU9MdCtTb0gyMVN4NmZFdkk0TmdsNWthb2srMG85cDJKeFdGcFNF?=
 =?utf-8?B?eGNtV3BvZEF2TWE3NHpmRGJLS1VuM2FWN3hxcHkvUkIzQnI5c3VtaURxdVY5?=
 =?utf-8?B?QWFsTzZzd2ZTbkE4bUZqSjRIb01RUHk3SEkzSnc4RU5vYzBIa0F0cVlhd3Nr?=
 =?utf-8?B?RzlOTlBGYzV3cy9NMzNjb3I2MVY2QS9wZkN5SkQ2TUExUDdNZ2g0alJsRkF4?=
 =?utf-8?B?ZDdPeGZVWlE3UEdLbFNaZlZuWktzWmdaclJySllqcUxEOWFmTitRaUNXWnpz?=
 =?utf-8?B?djM3Y0ZMbkFEOGpUR3RmeTlhUkRjajUxQlRYbS96Ymd5b1BQWUZMQmxHV3V1?=
 =?utf-8?B?UDdjVm15WTAxU2Z3UnlYK1diaFFHOWhsNTBjNndpNVlDSVVwYlZPbFRBdHRm?=
 =?utf-8?B?QUhvcUhOSUpjYSt6WjgvajlXd0V6a1VRZzBZVER5a1N2Sy9XTHM3WXJaS1dP?=
 =?utf-8?B?RVIvRjNLZy9IU0pMaTdtU2hWaUtDbnAxcnA4STZONnRJOUtvM0FXUWVQaXpL?=
 =?utf-8?B?TFJ1Zjllek9MNzNrcFhQZGRXdC94RnRyV3A1N2dqSEhYSHZ1VFo0Tzc2Tmlv?=
 =?utf-8?B?T29yZHd2a0k0a1RtWFB1c1N1T1hqVlE5Vm5uejV3cHU3ZVZWMHE2czRJV1Fl?=
 =?utf-8?B?S21PRHQrNXpMY1BqQWJmb1gyejBhaVNQZER6UmU2OU9nQUFEV3h4aU12dnZH?=
 =?utf-8?B?bVZScVpMWGQrSll3MzU5Q3cwKzgrR1ZydUx4ZGlQd1JLWkExYitLVkxNSjhM?=
 =?utf-8?B?dTFZL3hOYkV0SW14anduOFRVUk1CZE1ma3loTXBwejRKOUsrR2pCZWNuZHlv?=
 =?utf-8?B?R3BxR0VacER3YkdXaCtGQU1vVVlvQTBPSUhqWTlxZWJMa3NGQTA4S1hjdmVz?=
 =?utf-8?B?SlhadFBYRmpzVU1zWWZ0bTZucXNUNmJ6RHJRSitReGozbGVNUU5CZmZidVgx?=
 =?utf-8?B?MG92MWNBTnhXN1AvZDZURHVqKzNjTXpEZE9HWkhlVzZ2czY3TE0rTlZOMUpP?=
 =?utf-8?B?c3BxbGdNR2hsQzRQUVdqVXRNSGR0b3A2OFhiWmROaXl2L3BsVjNudjFMUGsv?=
 =?utf-8?B?UUtQK3BsTUpEck85STZOV3EwZzZSRFcvVXd1bjJTM2wrOFRhU0l0VlNyS3dE?=
 =?utf-8?B?RHF6cGVvTWlUd2FXYW85dWdQY1AvR3J1dTRCUTFQMXF0UWc3blVhWGdJbkN6?=
 =?utf-8?B?bllJd1EvSDVscE13SXpTYzc3cEt1OGtyM3BRQ3JRU245UGZUaCtjUmRWcGtL?=
 =?utf-8?B?K1BDem0xdmQ4NEhqNkVTWlYwMEJFUFN6ZG5WSnZhMHEvaXBsR3pIRkJxeG42?=
 =?utf-8?B?UWVHZ3hqZVAvUElNd0hYV01mM1QwUllrSHdKWGloQlZVVzUzbVZVd1NFbGlY?=
 =?utf-8?B?Ui9OTHl0aFgwTW45SzMyMllNNHNXRHR0bmx6YjRwT3MwU3RaT3RvK2ZVUzJu?=
 =?utf-8?B?ZzBQMTNOYU96MmVtOWY1TWRhb09RZTNJZUVrQXcvdDRLeUoyL3hYY2lLSnd4?=
 =?utf-8?B?TmRQVTY2SFBvd3hkV0ZXS1pRcjJZamUwQnp1WFJkdjdHS01zazRsY2taMmtH?=
 =?utf-8?B?Q3JMYytZQXpVRTY4TWpybkVSVENXWkVGVTV6U0Q1bFVDSlpnLy9WQkhwQ2Nx?=
 =?utf-8?B?cnBQM25jMTBOR1NTS2s0bWNYTzM5eGxWbk1DKy9GbGVXQW1xYWJoRCt5dWpP?=
 =?utf-8?B?Y1d6eEU1VjI4bC83TCtCT0ZQeEVRSXhaL0lNL25iRHg3N3ZLa0x5QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: j0SCISaazdEXbyRQc7LP3LkYQ6J6zIBJW97DQDet3kOvm784O9+AwFK5LRlscJIMtchpexm6/BW3M3Jqs+tYyOYQJUAnTOuiLSblyHVnIjh30QpJbMn7eEDSCgWJOfmk+zOnPeLSgSNsnDuyG2UhiXHwfcIK0g3lJVgVq/i0RT/evyZG1NOrd2F7VIuaR35zv9Mnyip3sXrNjLI9M1+sZSYfk2QAacFrryQaEZ4FCpch7fRVRx5DqyXjr7U9vr4I9rE+iihVnhTWIY9e+rh2VMSH1kIHSnJue0d1Brfn+ti/oRNO/4+cuxNNt6nQeB+SxmmK02+gz5A3hYbGFuuJpw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90b357ae-28a3-41e0-7866-08ded75ba03d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2026 10:29:26.2987 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nNWc3JisLawyYnPQcJuJKfizxjptU5rwb3Vljs3m5FUR5K8kLVTPaHXvHb5PS+rvFpE/v2tKhN5HlTuTAWZxxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4974
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4A47D6EC27B

PiBTdWJqZWN0OiBbUEFUQ0ggdjIgMS8xXSBkcm0vaTkxNS9wc3I6IEJsb2NrIERDM0NPIGVudHJ5
IGR1cmluZyBhY3RpdmUgZnJhbWUNCj4gDQo+IE9uIFhlM1AsIHdoZW4gUFNSMiBpcyBlbmFibGVk
IG9uIGEgcGFuZWwgdGhhdCBkb2VzIG5vdCBzdXBwb3J0IEVhcmx5DQo+IFRyYW5zcG9ydCwgREMz
Q08gY2FuIGJlIGVudGVyZWQgaW4gdGhlIG1pZGRsZSBvZiBhbiBhY3RpdmUgZnJhbWUuIFRoaXMN
Cj4gcHJldmVudHMgdGhlIHBpcGUgZnJvbSBjb21wbGV0aW5nIHRoZSBmcmFtZSBhbmQgbGVhdmVz
IGl0IGluIGEgYmFkIHN0YXRlIHRoYXQNCj4gZG9lcyBub3QgcmVjb3ZlciB3ZWxsLCBjYXVzaW5n
IHZpc2libGUgY29ycnVwdGlvbiBvbiBzY3JlZW4uDQo+IA0KPiBTZXQgQ0hJQ0tFTl9EQ1BSXzQg
Yml0IDI0IGluIHRoZSBQU1IyIGVuYWJsZSBwYXRoIHdoZW4gRWFybHkgVHJhbnNwb3J0IGlzDQo+
IG5vdCBpbiB1c2UsIHRvIG5vdGlmeSBETUMgdG8gcHJldmVudCBEQzNDTyBlbnRyeS4NCj4gDQo+
IHYyOg0KPiAtIFJlbW92ZSBkaXNwbGF5IGZyb20gY29tbWl0IGhlYWRlciAoU3VyYWogS2FuZHBh
bCkuDQo+IC0gQWRkIEhTRCBudW1iZXIgdG8gaW50ZWxfZGlzcGxheV93YSBmcmFtZXdvcmsgKFN1
cmFqIEthbmRwYWwpLg0KPiAtIENoYW5nZSByZWdpc3RlciBwcmVmaXggZnJvbSBYRTNMUERfIHRv
IFhFM1BfIChTdXJhaiBLYW5kcGFsKS4NCg0KSSB0aGluayBqdXN0IFN1cmFqIGlzIGVub3VnaCDw
n5iDDQpMR1RNLA0KUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50
ZWwuY29tPg0KDQo+IA0KPiBCU3BlYzogNzE0ODMsIDc1MjUzDQo+IFNpZ25lZC1vZmYtYnk6IERp
YmluIE1vb2xha2FkYW4gU3VicmFobWFuaWFuDQo+IDxkaWJpbi5tb29sYWthZGFuLnN1YnJhaG1h
bmlhbkBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcmVncy5oICAgIHwgIDMgKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfd2EuYyAgfCAgMiArKw0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaCAgfCAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jICAgICAgICAgfCAxNiArKysrKysrKysrKysrKysrDQo+ICA0
IGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5oDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3JlZ3MuaA0KPiBpbmRleCAzOWU1
MDQyMzEzMmYuLjBmNTAxODQ4MjQ5NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3JlZ3MuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5oDQo+IEBAIC0xNzQ3LDYgKzE3NDcsOSBA
QA0KPiAgI2RlZmluZSBYRUxQRF9DSElDS0VOX0RDUFJfMwkJCV9NTUlPKDB4NDY0MzgpDQo+ICAj
ZGVmaW5lICAgRE1EX1JTUF9USU1FT1VUX0RJU0FCTEUJCVJFR19CSVQoMTkpDQo+IA0KPiArI2Rl
ZmluZSBYRTNQX0NISUNLRU5fRENQUl80CQkJX01NSU8oMHg0NTRhMCkNCj4gKyNkZWZpbmUgICBE
Q1BSNF9CTE9DS19EQzNDT19BQ1RJVkVfRlJBTUUJUkVHX0JJVCgyNCkNCj4gKw0KPiAgI2RlZmlu
ZSBTS0xfREZTTQkJCV9NTUlPKDB4NTEwMDApDQo+ICAjZGVmaW5lICAgU0tMX0RGU01fRElTUExB
WV9QTV9ESVNBQkxFCSgxIDw8IDI3KQ0KPiAgI2RlZmluZSAgIFNLTF9ERlNNX0RJU1BMQVlfSERD
UF9ESVNBQkxFCSgxIDw8IDI1KQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiBpbmRleCAyMDk0ZWRhMDljOTEuLmI0YzQ5ODE2Zjdl
YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3dhLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3dhLmMNCj4gQEAgLTExMiw2ICsxMTIsOCBAQCBib29sIF9faW50ZWxfZGlzcGxheV93YShz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gZW51bSBpbnRlbF9kaXNwbGF5X3dhIHdh
LA0KPiAgCQkJRElTUExBWV9WRVJ4MTAwKGRpc3BsYXkpID09IDE0MDE7DQo+ICAJY2FzZSBJTlRF
TF9ESVNQTEFZX1dBXzE0MDI1NzY5OTc4Og0KPiAgCQlyZXR1cm4gRElTUExBWV9WRVIoZGlzcGxh
eSkgPT0gMzU7DQo+ICsJY2FzZSBJTlRFTF9ESVNQTEFZX1dBXzE0MDI2NjQzMzAwOg0KPiArCQly
ZXR1cm4gRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMzU7DQo+ICAJY2FzZSBJTlRFTF9ESVNQTEFZ
X1dBXzE1MDEzOTg3MjE4Og0KPiAgCQlyZXR1cm4gRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMjA7
DQo+ICAJY2FzZSBJTlRFTF9ESVNQTEFZX1dBXzE1MDE4MzI2NTA2Og0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmgNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaA0KPiBpbmRleCA5Y2Rk
MTQ4ZWE0ZmEuLjkyYjM5ODBiZWE4NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmgNCj4gQEAgLTQzLDYgKzQzLDcgQEAgZW51bSBp
bnRlbF9kaXNwbGF5X3dhIHsNCj4gIAlJTlRFTF9ESVNQTEFZX1dBXzE0MDE2NzQwNDc0LA0KPiAg
CUlOVEVMX0RJU1BMQVlfV0FfMTQwMjA4NjM3NTQsDQo+ICAJSU5URUxfRElTUExBWV9XQV8xNDAy
NTc2OTk3OCwNCj4gKwlJTlRFTF9ESVNQTEFZX1dBXzE0MDI2NjQzMzAwLA0KPiAgCUlOVEVMX0RJ
U1BMQVlfV0FfMTUwMTM5ODcyMTgsDQo+ICAJSU5URUxfRElTUExBWV9XQV8xNTAxODMyNjUwNiwN
Cj4gIAlJTlRFTF9ESVNQTEFZX1dBXzE2MDExMTgxMjUwLA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggOTJhZjIxZDgyM2EzLi40MGUzZDcwOTU5
OTYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBA
QCAtMjEwMCw2ICsyMTAwLDE4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc291cmNl
KHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+ICAJCWVsc2UgaWYgKGRpc3BsYXktPnBs
YXRmb3JtLmFsZGVybGFrZV9wKQ0KPiAgCQkJaW50ZWxfZGVfcm13KGRpc3BsYXksIENMS0dBVEVf
RElTX01JU0MsIDAsDQo+ICAJCQkJICAgICBDTEtHQVRFX0RJU19NSVNDX0RNQVNDX0dBVElOR19E
SVMpOw0KPiArDQo+ICsJCS8qDQo+ICsJCSAqIFdhXzE0MDI2NjQzMzAwDQo+ICsJCSAqIE9uIFhl
M1AsIHJlc3RyaWN0IERDM0NPIGVudHJ5IGR1cmluZyBhY3RpdmUgZnJhbWUgd2hlbg0KPiBQU1Iy
IGlzDQo+ICsJCSAqIGVuYWJsZWQgd2l0aG91dCBwYW5lbCBFYXJseSBUcmFuc3BvcnQ7IHJlcXVp
cmVkIHRvIGF2b2lkDQo+IHBpcGUgYmFkIHN0YXRlLg0KPiArCQkgKiBETUMgaG9ub3VycyBDSElD
S0VOX0RDUFJfNCBiaXQgMjQgdG8gYmxvY2sgREMzQ08gZW50cnkNCj4gZHVyaW5nIGFjdGl2ZSBm
cmFtZS4NCj4gKwkJICovDQo+ICsJCWlmIChpbnRlbF9kaXNwbGF5X3dhKGRpc3BsYXksDQo+IElO
VEVMX0RJU1BMQVlfV0FfMTQwMjY2NDMzMDApICYmDQo+ICsJCSAgICAhaW50ZWxfZHAtPnBzci5w
YW5lbF9yZXBsYXlfZW5hYmxlZCAmJg0KPiArCQkgICAgIWludGVsX2RwLT5wc3Iuc3VfcmVnaW9u
X2V0X2VuYWJsZWQpDQo+ICsJCQlpbnRlbF9kZV9ybXcoZGlzcGxheSwgWEUzUF9DSElDS0VOX0RD
UFJfNCwNCj4gKwkJCQkgICAgIDAsIERDUFI0X0JMT0NLX0RDM0NPX0FDVElWRV9GUkFNRSk7DQo+
ICAJfQ0KPiANCj4gIAkvKiBXYV8xNjAyNTU5NjY0NyAqLw0KPiBAQCAtMjM0MSw2ICsyMzUzLDEw
IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChzdHJ1Y3QgaW50ZWxfZHAN
Cj4gKmludGVsX2RwKQ0KPiAgCQllbHNlIGlmIChkaXNwbGF5LT5wbGF0Zm9ybS5hbGRlcmxha2Vf
cCkNCj4gIAkJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBDTEtHQVRFX0RJU19NSVNDLA0KPiAgCQkJ
CSAgICAgQ0xLR0FURV9ESVNfTUlTQ19ETUFTQ19HQVRJTkdfRElTLA0KPiAwKTsNCj4gKw0KPiAr
CQlpZiAoaW50ZWxfZGlzcGxheV93YShkaXNwbGF5LA0KPiBJTlRFTF9ESVNQTEFZX1dBXzE0MDI2
NjQzMzAwKSkNCj4gKwkJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBYRTNQX0NISUNLRU5fRENQUl80
LA0KPiArCQkJCSAgICAgRENQUjRfQkxPQ0tfREMzQ09fQUNUSVZFX0ZSQU1FLCAwKTsNCj4gIAl9
DQo+IA0KPiAgCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiAtLQ0KPiAyLjQzLjAN
Cg0K
