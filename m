Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DC6A5A38A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 20:02:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5608E10E4C4;
	Mon, 10 Mar 2025 19:02:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HBmW8tZM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B929E10E4C4;
 Mon, 10 Mar 2025 19:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741633342; x=1773169342;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=1MnhqV57LaY+4/y1PENC2QVRoVw8gtLOHoEmU8sLx+g=;
 b=HBmW8tZMSx2muaQEsHuifnXE6WDOhJu480rS5arkkWIGqNAwF3Ruf1GJ
 B1/Cd1hxU0qQwSyDCu+rA477TCjlZFGTgSvCX9H+ASS/T+C5SXPAKtU3m
 bIuo2W2ZU6YeDyUQdcXwGibBSXIckmHsYIr6gEeG/Ijvc+nvKR28d3/ry
 MM6+e/BQFDL2U02yCyttw4EAvwti2H4GQGhi5evJNYXdxVUTPnzc+i7an
 FHrxr12j6gthcOH3G5WHFapr+w1qKoZfyjGWvF5CIfnaeKm4YfO5qwmD3
 cgscilxnwjBXxFyDaPAdeMW2cGfzKnm4JzMsJrYITHSrAdFfCQQv8nZBJ g==;
X-CSE-ConnectionGUID: 9JRqerv7QZaXHSoqnaU/+g==
X-CSE-MsgGUID: YUqYKcd/Qoysn2IW7jdN1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="30220719"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="30220719"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 12:02:20 -0700
X-CSE-ConnectionGUID: EnTQ/y6hTwm2+vaahNLHBQ==
X-CSE-MsgGUID: V2j9gCcnSWOvriSE2bS/nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="119908276"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 12:02:20 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 10 Mar 2025 12:02:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 10 Mar 2025 12:02:19 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Mar 2025 12:02:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hZaftPI4y/9yVtnZrq+v00Yolx28d+ccB6BDiW+jriOCWa7ghQETNafHwnQ3+2PR6tjSsv9fLaBurbIWZ7XMShB6m22VAETNiDbHFXhD8IZg235Zzq1gOOTfabe+Y98zpor4WXoyA2hMpP4lpbie/UyXATEEq2v0P2lT7USelaQTqXaT9phyB9hDSMqXVMWtdjnvnyMemdyq9a3qP0wHDvLucz9tK49xpILDCeGpbm8JU1JBoPYzlgMLFgKAKvNE1lGkHqBoiI9wxtRE79UUg6KdLbSfV/K/+FuTF+ugjBhEuzOuEL+SE39fVnGqXhVINiF4yManVzqO/MRYZXusMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1MnhqV57LaY+4/y1PENC2QVRoVw8gtLOHoEmU8sLx+g=;
 b=qTBtLql8dCLul0EOs+1wVMlNx+xC2sHbt4Df7SA5VIJiD8e22nzJM1zivf1nQAPez6ViSMmp1hs0K9QaXrrEa/+UljTf6zBJbiumqSproAvoGRiijKlhe1t1rxkZurf/JALMuCp4P1VCnBMagXrVMNT838S4A72V98S3PE8hdbbU+NvsG3Kkpsd++ooCWWPp4AOeUof99kqOcMMZTeQHWCWUqpaa6SWOAJs5fhBz8QwlzKdY/LNRWeXiPLn2Xk3P1TFSTDmRskrMTIEDG5eF007wyS9t5EW6xS95ePI5Ily25SF/OGTBiFaB4AUIwM1DrZlLW9gw8h+ko4GO3fLAjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB6465.namprd11.prod.outlook.com (2603:10b6:208:3a7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Mon, 10 Mar
 2025 19:01:47 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8511.025; Mon, 10 Mar 2025
 19:01:46 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z88VOxMunnhE_koL@intel.com>
References: <20250307-xe3lpd-bandwidth-update-v3-0-58bbe81f65bf@intel.com>
 <87ldtdghbo.fsf@intel.com> <Z88VOxMunnhE_koL@intel.com>
Subject: Re: [PATCH v3 0/3] drm/i915/xe3lpd: Update bandwidth parameters
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Matt
 Roper" <matthew.d.roper@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Jani
 Nikula" <jani.nikula@linux.intel.com>
Date: Mon, 10 Mar 2025 16:01:41 -0300
Message-ID: <174163330161.59796.5685266090399655524@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0236.namprd04.prod.outlook.com
 (2603:10b6:303:87::31) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB6465:EE_
X-MS-Office365-Filtering-Correlation-Id: c35b2454-ae00-43d3-9852-08dd60060114
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d1Z2cFV1TEdubWY0aEg5V05YQ0IvWjNQbW5WdE5uUUs3ZS9PaEZHUUo0N0M3?=
 =?utf-8?B?TnA4c2FpeFkvSlI0WjRpTW16NU55T25WK3U3RURsV0Nic1k1aEs1c245OG8r?=
 =?utf-8?B?NU42Z2tTbW9mZU5BMFVSOGZCQlc1bGNzZG5EaHpSdDFLNVd1WUZWUlRoWFNm?=
 =?utf-8?B?VU5CSWlGTVllTG9iYXhwUEVQM0h4N2RLdENzOTR0amhZaDRrN0ZLNXRKaUxZ?=
 =?utf-8?B?UTUxTXRUajBjckFJajRqT3FoK0d6b29yc0VjRXBQM2xHZis3bGxmMEVKcHRn?=
 =?utf-8?B?M3JGRVplZlZSLyt1WFlTRFRxSDVCWHpwQ2pZZ2tIWEVXaXkxTXBKY1BETEVo?=
 =?utf-8?B?d1VHeTVsdnZyQzhoS2ZmOCtZbGdnN2VnYm45bXE4ZGJ2UWN2WGR2bENlQlY4?=
 =?utf-8?B?N2wxazhBazVhemNYZDdzaEhXNFhHejhRZXdQVXBYRWMyRDljTGRBc2pDeVRB?=
 =?utf-8?B?UDRjdXA3NTVDbDBDTDF1UUM1bTZUYkFZTSsrMVBLMmd6Ry9sd2lZbXZzV3N3?=
 =?utf-8?B?L09EYkFRREttRlFuVTIya3V5Y05DWS83MCtJcFhlY0dYQnkzcTZJc0NBbERK?=
 =?utf-8?B?OFlTNXU3MDk3TnY3cWk5QnJMNXFSVWk4eHhGaGJMOGpBUFJVdittOWt2VW9R?=
 =?utf-8?B?d21mRUpocy82VEJpYi9OUUdteTRaM0pBWTlFZFloM2lMcTZJL00vV1daOVow?=
 =?utf-8?B?d3NkTzk5UmpYVFBOVlJCV2pQVWlTN09pdXEwckRqNDZSdFlFWFEzK0didGt6?=
 =?utf-8?B?a2ozdHZSbG5jMWJBc1puR2gzQXZEc0FmSkV5MjdOdmdJMXdZLzM4Y001YW5F?=
 =?utf-8?B?NHJlYWVYQXFtcVppZkl4N0I4cncvSkowajd3c1hwVU9iZExUSlNKRkdLd1U0?=
 =?utf-8?B?cTA0RWcrMWNKeDNja0Q1NlpXVUhyaU4wVEZYekdQYlhIcnlKS2E0OXdUczJN?=
 =?utf-8?B?UFV0NnJjS0tQbUVYbnVETDJvWHdJSnh0eEcwWEJncTlxSTREM2lhMmZBdVZV?=
 =?utf-8?B?NFBFT3JRWDVsQm4wOVl3Sm5mbUcrNEY1c3FDUjJUUEkrZ3JmSWZLZjhwcHNm?=
 =?utf-8?B?RkJtcUh0aFJyMDdYNzNpMzhuVXlBRUdQRlBicU1YcFVEb2dNYzBTbWJHMmhs?=
 =?utf-8?B?V0loay9HNkYyOHlKVGthaWloWGJ1OFVNTVI5bFlpcC80SjRmYmNpS2JCejQx?=
 =?utf-8?B?ZlI2T042QUFLZmQyNjBzTWk1NVM1RWJFZjZqMWRlbmM3bStsRlE5SXl6M0xN?=
 =?utf-8?B?a2hOd1l0cmd3bkh6Z2xNQ05sdzZLZ0NMbUNnUXNFLzArb1NZdUhNTzNFY3Ar?=
 =?utf-8?B?bnk2RWxucTVybmVSNFhoNjdlQWtqbHphNHhGamh1ek5jWmllK21YOXRLNXdL?=
 =?utf-8?B?QzRkQmVQai92ZlM5TjZ4aUVHNDQxR1lmbWNSaHowMW9rT0dEb3BQdTNHV2Zy?=
 =?utf-8?B?NUxUQ2ZXdzNveFFyZ0UxamwyOUxSQjV6ZzdPSVBwWU1ZT2N4eVRxWVFhZjdm?=
 =?utf-8?B?MVh5dVhoMnhMNmJPVElQZit4L3NKUmo2amRxc1JPWWFZdzdGN0xVVFJPbjEz?=
 =?utf-8?B?L2xsTXRidGxxUS9UMWk3ZDJqWlJUd3B3dmZvcXR3c3ZDbEh0WHpWWGNmd0Zi?=
 =?utf-8?B?UndSbk84eUd4bTNDUFhzeDNzL1F0bmdmdUJCT0x2aDNCTTJSOVdIeTNPWkFV?=
 =?utf-8?B?dlFldFJrWTQ1aTgvWmE2K3lTS3hWZWxaUDF6blpwMW9xbjR4bVp4STVmMTlI?=
 =?utf-8?B?L2VqenYzVWprSjRhZFVFeU1VdUx4TG5PWU1COEVGWkU0MXFXd000WktJNkVh?=
 =?utf-8?B?ZE1MNG95ODZOVU1veGEwcHBHMWI0R1BBZ3o1VElLWlRDalYxdFpibXFtRWxK?=
 =?utf-8?B?K29uREZaTDdYUjNvbjJneERsOUNZWGRnRWNPZnoxbVI3UkhlRVUrbERsaHY0?=
 =?utf-8?Q?Ax46wJRJ+zeff5FtKIsKEMHUKZqjRL6W?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WCs4eXpWYTUyUnIxYXhJVGY2SEZpM2czanpRVm82LzRGYkltM3dWRFVGWGRa?=
 =?utf-8?B?aE0yZzFST0dXVFRxOGdNeW5nZXRmalZ6RW53SVdNVEEvTThoZVZuUUFHMWov?=
 =?utf-8?B?RzNmVTB3M29IRFNCQlBhVVpKdDQ1OGtHbVJLajd6cXg4ZU5zam9RWGhONlN1?=
 =?utf-8?B?Y0NHQ1ZWS3hrQ2U0a2dya2twbmZkNWwyRVZ0eUMrenRmRHFHVkdGMUNYWnJO?=
 =?utf-8?B?ZFREQm9hWFFRVlYvSmx5dWdKUG1FY1Ayd3dOdEcwc1VjbmFYVGZ2TE1KMEhD?=
 =?utf-8?B?WDA5RTJsRW83ejNpR0FNQzhXWDd3Mm0xYjB3Y3Q2RUc2S0M1ZHQwMDBTM0VK?=
 =?utf-8?B?ektMbUprekpGNHVia0pyeDUzNHJLaGNndHpQTnlTaWV1UGtYWXdrd0swNWV5?=
 =?utf-8?B?SFkyNnkxQVNhQzc2L3QyUVdOT1g0TFhSNUVsbm1uUy9kZk41RSs2UlU1R0tj?=
 =?utf-8?B?SDAvT1ZFNmpFRmszQm1FK1FyVWpNaUxJa0dDcGFsMGMzSmQ5b0V2aUlhcjVJ?=
 =?utf-8?B?SDJSQlhqb0c2Ym1vSkdGbHhQN3U4RUpHNHlhdTZ1T0FCdkRma3Z4c3c5UFdB?=
 =?utf-8?B?aGN3Q2VMREJCWitoN3NBRlpyZ3JlWkJ5a0prZXJWWDhmY2F3amo4elcwaFNX?=
 =?utf-8?B?dWpvZjZtdHBsb2NJbnFxY2pzeXBrQnJiNmZZcXd2YjhLeUFTeGhacWpab1JD?=
 =?utf-8?B?NzlIZHBiLzgwOWdvSzVnWjZ2MUVnVWxOdzB4TXNENzlhZ3VvNXdHRHpzSVVw?=
 =?utf-8?B?L2J2aTZBTHFjTUhXWXJrV2tiTUVVR3YxZlExb0E1Nkp1SEFJZ3diU2l6Umxp?=
 =?utf-8?B?eFkyR0pYTytYSVhIcTlrTXVYRk14eGZIL2ljMWljNTBkTGJVdFV0eDFKR1lN?=
 =?utf-8?B?aXJ3Tm9OUldVMXZFc0w4Z1dVLzF2eE8xUDk0Smt2SHF2ajV4ZGc4ZHdzWTc0?=
 =?utf-8?B?MmsyU0dvdzNrU2U1aXl5Y3FCUnppY0VMK1dIcDJpQklYVDJ6VS9IeHVXTS9G?=
 =?utf-8?B?eU90TVZiVkc4WEtRWVFhRUo0QlVIaVZoRFduRkhUUlcrT24ySzIwaE1kdnZ2?=
 =?utf-8?B?QjRSdE81QUl3ZHBqUUcwNTUyd2svblB6VVR6Z2c2c2xGblZQbFArZFh1S0lO?=
 =?utf-8?B?YXN2WEFWL0JXSFdnNWM5QmtIQmkrZDBQN1Ywd2c0eTZ4MlZpRVpmN2NPRThi?=
 =?utf-8?B?d0J6WEpMWTkzWFAwQUVrOWxRS2c5Nk1uSjdpb1FaaE1MVnI2UHA4QmRnRUNT?=
 =?utf-8?B?bkhHanZXR1oyRmpZS29QcmJzVUgxckJVUi83RWRHY2ZHVm1VZlcwZTdZNUhB?=
 =?utf-8?B?cmRBeWtjWjlwbng2Vi9FOW53NHZXenU5eE1mTVJ1VmJWNkdxbEVrQ3ljeHkz?=
 =?utf-8?B?bWg1U2wvcnZMdnRZcHpSRC8rWlRHcEM1WnowY21TRWhYamFmZ1JFazBPczd0?=
 =?utf-8?B?amkrdHZPc29qRTNWcTR2M0ZrdExxMnFiV3owelhHbHpIUXBmRW15L0cwRkVZ?=
 =?utf-8?B?MDlRT2s2Z2Y3czBpRkdrbFl0dmpGZEJOc0VXMVhVakhxa3JMWURySHA0cHVN?=
 =?utf-8?B?T250TUM2NlVlNE13TVJLeTlVNnIvZGtmbUMrN0NjVkR4QzduRUdaZnl4MXpa?=
 =?utf-8?B?d3R2dGR4NFgrbi9UTkZubDV2bGZibWhrUzZXS3hkTmhYUU9wL3RXWXZ1NTNx?=
 =?utf-8?B?T0Vra29mTlhyc3IrMFV0WWQvcTZlUDdRaUlzUFFRZCtwRzg1TC9JQnI2Y0NQ?=
 =?utf-8?B?RnY4NEhzQ2lybmc5c3ZzVTZaM3paclZRU2FmMlZZZUUwYzJjWjVZZGFpVU9w?=
 =?utf-8?B?a052MkxrWUlqM0tLQVNRcVB5S2JpWVdCYlNMUklHUjBMSGlzeEs3RzlpUW55?=
 =?utf-8?B?ZmVJbFlTeEUwRVNRQXNUY21tQk9jV0tJRElvYUl6cTNmdVd2cWRKSW1JQlQ2?=
 =?utf-8?B?ekxUc1R2anJTOFdRenZ5aDQ3czRXTllFM3lsSUhQdTJvRDlRSW1JbllBeXds?=
 =?utf-8?B?cGc4QjVGaTlLM2x1bTkyMFBpQ3pVQ0RsZm5GRjA4bGFtT0c0MXNoY0E3VEtq?=
 =?utf-8?B?d04xcWVIRWpEaFhNUTdqK2h2Z0JjemxFd3M3elora0VSRkhJV0JVUHlKUWtt?=
 =?utf-8?B?NTFmVER2ZDFxYVlWWGZxZDYvU1Fad2p2aWNDOE9aZ0hEUDBOK1BWSVhwTjJT?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c35b2454-ae00-43d3-9852-08dd60060114
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2025 19:01:46.2111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dbUAiqC+x7e9/htV8y2KyP/xUq9ODqTg83au2BnzvQr7dXvKZqlcUKVLws2hc64wViaYl8ZGSXvcpVNKMwYxhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6465
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-03-10 13:37:15-03:00)
>On Mon, Mar 10, 2025 at 03:12:43PM +0200, Jani Nikula wrote:
>> On Fri, 07 Mar 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> > Bandwidth parameters for Xe3_LPD have been updated with respect to
>> > previous display releases. Encode them into xe3lpd_sa_info and use tha=
t
>> > new struct.
>> >
>> > Since we are touching intel_bw.c, also take the opportunity convert it
>> > to intel_display.
>>=20
>> In case you didn't notice already, this series and [1] from Ville will
>> conflict badly with each other. Please collaborate to sort out which
>> series to merge first.

Thanks for the heads-up, Jani.

>
>I can rebase my stuff, so no worries.

Thanks, Ville.

--
Gustavo Sousa
