Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F564A505DA
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 18:00:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 052C310E81B;
	Wed,  5 Mar 2025 17:00:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FrK6knJI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6A8A10E81B
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Mar 2025 17:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741194037; x=1772730037;
 h=content-transfer-encoding:date:message-id:to:cc:subject:
 from:references:in-reply-to:mime-version;
 bh=8NlsZDOoMizGm5Bm9XfY4vDmiHa/kLLv7kMGOr4wbNw=;
 b=FrK6knJIZoJ2EPClKSMHsb63XzJj9VVUTz0mN/reoYrw40aAhKrmsU2Q
 nQkzWvqM2SSkTUMxJMpcH5/HF0ydo938hFLjfhQfloROC5b3eOQ+lJsfL
 Q4lECsdfxas0KRq+z8b3wVLwj8vkJznUEhj3cdmrdMUYEaqmylvnFsRHx
 w5o0CWMke3eQ6pOBq7R0bhrmb+hhC68NhXm5QUb7htPu78cVgwrYkQNAR
 Xn+PIYdf/uQuyiSRuGc5YT8kJJTjTKHJ7CmWTAME2MpDiphG51stivr5i
 B2Qm73wZjSg6OgIikdx+eBoCSpmUj3yxU4XnWQhryXZJV55ABFmXwVlfU Q==;
X-CSE-ConnectionGUID: rUFAqow5S22G4LDQvaD0Ug==
X-CSE-MsgGUID: 6dWOaqFBTZmh+adYIm6VlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="41880823"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="41880823"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 09:00:36 -0800
X-CSE-ConnectionGUID: ipnHkwlaQUCXBFSTNfmMYQ==
X-CSE-MsgGUID: 7eHlRqZEQqqZMFultfhK6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="118909710"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 09:00:35 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 5 Mar 2025 09:00:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 09:00:33 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 09:00:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UVB/EVGrq3JiE0DlRIfa1Lx2LNgyoqVQSEo6JDzT28SKDeYTyzqP4+T394OsjOJwphqjiwwjY5GX/Mb0nhBaSqybVeucJj6GUpuof332FTgD09PmfHtrYEuJNejxvVtHaSyZrGVlFJBn2d+uiHXpbIRDqYlb+c/E8q7iiWsEDpo+VuEt7GrM6Osg2reloWlipJETh2vZMjh8z/KQSOnpzbz+iClFO+ifA580VInepVdcpZCyAUtjAuAhtgaLWLUCzlgevpu/9ZkhAPXXIc+hHoBPlE9o8/AiNDW+/tc/QK2KwOFiVpNz8xot0Du1une64/6mPiAETBwzrkp9wXnChA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8NlsZDOoMizGm5Bm9XfY4vDmiHa/kLLv7kMGOr4wbNw=;
 b=ov87CNBW3oF8WXrszpKk886ihwRVjI0pCPr4kbNdzV1auU0NhNVfl8ySfF9CkRDE1uZO0EiRByD1ApWsCF1xCm/9aY3iDR2tf++7S/vODa1C5Op2cu8USXszlJ53OeznjgWfBMlRf/YsfjUbqdplHci08lhUvLeFB/ZGE+WBSbIW/f6BbLsHOY81gvgXS5wVElCP2V8dm5sbYdx8J2zaSmNZCrHsAqn8jz6Y/l8IYH/T3oRaAY7i+EWFXA9ofGShOqWGy4M0UMJJgGbP+x6QzKJPetUA+fxH1mMr8msoTmdNUwLvrJfG/0pBXAAcBuakEWQNWBNIzftiRrRvc1+8+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by MW5PR11MB5762.namprd11.prod.outlook.com (2603:10b6:303:196::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.25; Wed, 5 Mar
 2025 17:00:30 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%4]) with mapi id 15.20.8511.015; Wed, 5 Mar 2025
 17:00:30 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 5 Mar 2025 17:00:26 +0000
Message-ID: <D88HRP898QST.23MJT5TUM1HFR@intel.com>
To: =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <vidya.srinivas@intel.com>, <matthew.d.roper@intel.com>
Subject: Re: [RFC PATCH] Revert "drm/i915: Disable compression tricks on JSL"
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <z6xndjwwwnck67qcv2355v5qejq64qldziqg7saint3eqe6fo2@6sx7xyh5juvc>
 <Z8htKL3L5ICwXzNb@intel.com>
In-Reply-To: <Z8htKL3L5ICwXzNb@intel.com>
X-ClientProxiedBy: DU7PR01CA0016.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::11) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|MW5PR11MB5762:EE_
X-MS-Office365-Filtering-Correlation-Id: aec0b5c4-36aa-4940-ddf4-08dd5c073c6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R3lQV3pBNnYwWnBQU3NpUzA5Z0JmSjVVRXdNZUtOdnRKQkRyZnZaa29zSmJu?=
 =?utf-8?B?WUt6dEdEcTJuQTg3YTNnZXRoUERNb3Z3aW95L3dhQnE0T2RNZ0dBYlVNeE00?=
 =?utf-8?B?MmNGRTBKWi9xNmc5RUt6ZTJLaDljV1ZIQjVUQjFxSm95TzdmdmcwVVArK2ln?=
 =?utf-8?B?NG9vSHlaVGdzc0hNeFFqKzRQMXZUKzhjeWtQUHI3K1FyS0RQck9OZXdZVUhn?=
 =?utf-8?B?Uy9ta3BEUDlNUnhvSzBHZFNycHl6aXFkbDhSeHZ4WlhaZU9wZFpLU1ZxcG14?=
 =?utf-8?B?eUFMY0Y1bFpVMVpqSi9nNHpJc0o2YzJ2ZUNpTHdGUDYrVnE1VUlpcFp2dkpQ?=
 =?utf-8?B?ejhJSVFWV0EyQlVzVG5vZnhkaWlFNGxicGs1TjJsY0RqakUrZTBnMHdyVlRv?=
 =?utf-8?B?aWNIV2Y3aExXVC9QbDZVT2pVMExYMk9nR1BpUjltOUswSXd6RSs3WjZLa1Rt?=
 =?utf-8?B?eEdkSThMRzJSb2lDbnM1QllabCtDNGx1YU1oR3I5RklIVC9tY012QmlGZ21R?=
 =?utf-8?B?RlJuWmtqSUtBYndmbkdsZGxSeG1VS0dXUGt5clJDSjZ1ZE9RMnRmRTBnSy9s?=
 =?utf-8?B?Rm9LVEJ6SElTN1BER0NmUThHc3phaThRWDVnVEtlUkRCZTRZWmhhV2Y3NlYv?=
 =?utf-8?B?WCtpYzlmYU40YzdFR0JUeTBDbkRBVHJ5a3FQT3l5Q0RNcGQ5RzBKL1dmY3ZE?=
 =?utf-8?B?MlJURFVZU3IvV2Vtb1Erd0hIZ3BJOUF2YXlXc2MzcnA2QjFFY21XeWp3WXBz?=
 =?utf-8?B?MUc5Q2psUHVndUM4RkxJdit3Rjk3WDJUNWFxWlBzaStJY2RMZllicXdrK0Nn?=
 =?utf-8?B?ME5tTnVkQkcwdUJFSzRrNWtkZWd5SkZVa0JGU2lJMXlkUUt4TXRhNmlnQWlS?=
 =?utf-8?B?eWpQQmpuNGZycjlsQWFld0ZON1hMSit5eDc2c21aNW41MlJKcnRnWXhnajdV?=
 =?utf-8?B?UENrNWt5Zm9kTkpCMXV4eExrM01idkNqYm13WHBqSEtpSEw5b090dFU1dTFD?=
 =?utf-8?B?cU5MbnI5NzNtUjM5NEhFWG82dnQ2OVpkVnNabUdlQ0k2WENnMnlPeDQ2dXBz?=
 =?utf-8?B?WEdYZmtqRVFLNW1YOUhka1BKR0J5WEt5a0t5NlNQUHNHR0FTVWRkbU5tdkp1?=
 =?utf-8?B?NkJuMTh5UkRKQWQwNDhBaTRNWitMeGZpOHduRDZyaDh0bmwydENWZnZNKytz?=
 =?utf-8?B?VzV1d3ZLd2xUbzZ1RFNQME5pUjI3Rjg0alQyTTBKQXJXaVo2dlh1ZHl2N0Jx?=
 =?utf-8?B?cWxNb1dxUDl4SUpRMW9PR2FDaHNkSGs3WlFJUUhkaGRra2pydTV0WEg0UmNC?=
 =?utf-8?B?dnNjV3gxQmZnTzRGSHBETUpUQ2EvUFdQVkM3NCtUVngzZHFEd1h6QXJPSy91?=
 =?utf-8?B?Z3lhWjhiSHBabVAxWTFVTzUveGcvU096ZWRFaTdnSURvUTNKYzIyL3puanc2?=
 =?utf-8?B?dzFwampKNVdIVkJ1bHovMFBIM2ZRUXB2SWV0emFDT29aTVdFUjlQZEkwR3Ju?=
 =?utf-8?B?cEk0RU1Qc2E2bmRUUnF2Zy9zT2NnNGk3OVpJK2JCWEgrZUVxNlZKV3Q0WVRX?=
 =?utf-8?B?QWcrRHZaNXlVWFprM1haM0ZBbEFLd050WjU2Vm1SUzIxRlVQM2pCWDdhckxj?=
 =?utf-8?B?TzhONzBMV0VqRmxsZmJDVUZZYU1DdFhiMnczRTBvMHEraU9FMnJVeEkvcDF5?=
 =?utf-8?B?M0lRTHdaN3h3WVBmOFNiNkU1eC9qNFBYaGdtSFNDM1dpU1JIRUhyNG8zRERp?=
 =?utf-8?B?TWxGenh1cDZDNmtLcVkyL2RQUUZXMDNUS25rY2Z4bU82NmtUZ0UybU9uRHAz?=
 =?utf-8?B?NEs4cWFQN3hqaVZmM3hGeTYweEY5TXRDZU9ROEp2SHN4VmhiVXh4OWV0Z3BX?=
 =?utf-8?Q?7WGid7YL8lFFM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHNVM2IrMHBpbnRicXN2V1d2bklWbGg3bVFESVVrWXBpUVlVYlpXQk1QN0Nr?=
 =?utf-8?B?dUVmN04vNnpWdFc3V0hUMk5odEJHRnZNeVZSVGw5TFRrLzdhMzhkVFdIT2E0?=
 =?utf-8?B?OVdaRDBzWXF6azJJU2tzTXNGd2dOdHBDelU4OFR6ZEhwUWZvbUI1b1NDU1Zp?=
 =?utf-8?B?cy84MFZNdTdSd3hXeXNzamNGeldnODVTNUtFeURPS3JJaXdvWkFZanNKRW5S?=
 =?utf-8?B?MjhpY2ltQ0pSbmNPTXNrekxFN2VoUkhxNFNKTjAxbVVFMWNXYk9IajgwWTR1?=
 =?utf-8?B?UllQeXp1ZHpYN3p3QkZVNFdUQnp0TUViUHFCaTZTbmxub21SMmZWMXNwWE1z?=
 =?utf-8?B?Tk16NVZORThWdm1GR2pXNVo0TFJ4ODZtbER4VDVHODkrcW5rK2M3aGRUMnlZ?=
 =?utf-8?B?dFlHbnd0MUxUOVRpazliZXJWVzAraUw1TGczK0Y1dVVPWFpZd2lzUXI2M0lx?=
 =?utf-8?B?Z2JBMnJUT3JvYW5NaUNpRThWcXhVbVBYU1RXREhnZ3dQOE92UDJqb1k3RXVp?=
 =?utf-8?B?RHJwWkY4Vk1JR0xLbXFjbHlQZVFSSG9LZlYya1JsTDhWWlpNY0pOU3JQcVZP?=
 =?utf-8?B?STBjbHJySjQ2T3QzVmV1SEk1d0ZRUTNXbS9rS2VLMUU2QmhoNjllWUtIaFpo?=
 =?utf-8?B?c3VEeEFqNllVUTVOYU9QdUx0U3cwVTZPN1FncEF4cWZpYnlDcWpxZS9makZZ?=
 =?utf-8?B?K1RnbS90Q0Y3T0tMOEM0RGRsUXVUaUIrSVVoRjYrR2ZUR21HQnVCTEdCcWxX?=
 =?utf-8?B?NVdETFhseElMVjhSY0lTOTNHMStDa3kxUERVakFyZ2tONHYwRHZoZ2EweVJK?=
 =?utf-8?B?S2ZLUGxCc3JEbkNSSlZHeURXQW11SG9jY2JhSFlBN25rT09JSlBTK01seGtn?=
 =?utf-8?B?RW8zbmFlN3NBWnB2NU9jeTBqcGVHV3U1cXVRT1dUQ01YbnFtaEREQmRMRFhO?=
 =?utf-8?B?bGQ2Rlpna1BxVnFvYlAzbS9YZGdjUGM1ajlMUnR2MXFuR1VhMXFpRmM0OTFJ?=
 =?utf-8?B?ZE5YMHdGVkoyODQ5WHErdjMxS1M1Z2RHeG1JSXE0dHdGSGsvc01Qdk1yTlhv?=
 =?utf-8?B?bkFBL0U0WVcwUjhWOE9TQUlEN1M2M3BEY0RPTGN3UGtWZVVvS1QwQ2RLNE9M?=
 =?utf-8?B?N2tyUnBtcVVUNzMxd2dETWFYTVRHV1BTOU5UMzVsanJ6cEMrbmxCMS8wTDUv?=
 =?utf-8?B?NW5CWHJzK2wxM0xmcDREZDVzZHdqcmEzd2x4aTVMbW5vWlBXMWxmYXlCVDds?=
 =?utf-8?B?bHVLOHdvb2VCMXV3THdGd0docDBtRDArdDB2RGF3RS9mdTNaY0sxS3JZd01x?=
 =?utf-8?B?OXdkV1FXMlc4YjNxMUt5L0NXY2p3SXpGUTVFTXNMMURyMDNYYW1NdzZlTS9l?=
 =?utf-8?B?ZDhKT09qSkl0d0xmbm5xZkxXVFRka0srcUlkU0EwUUEzd0lEUWYvTnFmR1NN?=
 =?utf-8?B?MlBDbGpLZjNpWlNLTTJsK0F6SEI2SzJiZHpxcURJWjMwQWFUR2FHaXlPbGsx?=
 =?utf-8?B?dkVXcCtUUjN6NGRzUWVMNTR2dnRNdVQrWnFTdHgwK0JBWk1BRzFUeUhoeUdV?=
 =?utf-8?B?RFJ6WGFKMWhma09EOURqWk51WTAzcmRocSswTmJBdW1kbUVyVVBUdGNLdHZT?=
 =?utf-8?B?cStwZlh0dS9qMWNadCtJZlU0UzV5ZEo3bnJiWUo1djR5VlhENWV2ZXA4Ulhp?=
 =?utf-8?B?Zyt6ZzNSZnRMZTR4OVBtZ0ZhTitOMFF2dDNaTGtZNVlWWkZ2Uyt5VjRvYUkv?=
 =?utf-8?B?RGJGK2MvT2ZwTSsvZnVtajNlc055TTRISWlCcWNxVTJoQW9YKzgzMmZOZE1y?=
 =?utf-8?B?ejhtZE9NTUd3K2ZoTTgvVHBaNjhDM0FzWllsK3VyT1duNGZRam96enhVa3pS?=
 =?utf-8?B?cko4ZlIzNUEvcnlnSGNvdXUvdVArMmdmd09JaW9Dc0pUbWNZQnY5VThPTFlR?=
 =?utf-8?B?QXE0TzJiWG5HNU5GbHlmWTgrV1kyeGU0UGRiWGMyd1hvYnJtR0EyZUlJQ00r?=
 =?utf-8?B?bi9rYkxDS3c1RGxveGJ5TW1RNExxTjE5Zzc4YzZ6TlphTC9QcnNuOXNqZmxj?=
 =?utf-8?B?b0tHM1FDK28yZGY0ZlNZalhFeFNtaDJNdlh4N2ljWmpIUTNNQkxCWnNaVG0v?=
 =?utf-8?B?WnR1RUNUbEg2MEptTlpoQ2Q2SlJYQklUVVlYWHVDYjdWSGtxOUR4d0F2VG9S?=
 =?utf-8?B?MVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aec0b5c4-36aa-4940-ddf4-08dd5c073c6e
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 17:00:30.7824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r9/e06j+PMI/Vpf2LbRU7yDYBSTaOTuxy9AS/FOiduUToSaB/SbktVArMJmj+KrhSZgzBiwqDUZArbjA+ShtkfNwHyjdjDj28fSqX/x5zpM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5762
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

Hi Ville

On Wed Mar 5, 2025 at 3:26 PM UTC, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Wed, Mar 05, 2025 at 02:49:46PM +0000, Sebastian Brzezinka wrote:
>> This reverts commit 0ddae025ab6cefa9aba757da3cd1d27908d70b0e.
>>=20
>> According to bspec 14181, CACHE_MODE_0 is a register that's under usersp=
ace
>> control, and DISABLE_REPACKING_FOR_COMPRESSION workaround should be alre=
ady
>> in all recent Mesa releases. So, there is no need to include it in kerne=
l.
>
> igt doesn't have it.
>
>>=20
>> Also, this workaround=C2=B7sporadically fails to load:
>> ```
>> ERROR GT0: engine workaround lost on application! (reg[7000]=3D0x0,
>> relevant bits were 0x0 vs expected 0x8000)
>> ```
>
> If it somehow fails to load from the kernel why would it
> work from userspace?
>
> Hmm, apparently CACHE_MODE_0 needs the mcr steering stuff.
> Does that fix the verification fail?

Thanks for sugestion. Right now I think that I try to move this wa to
icl_ctx_workarounds_init as both Mat and Chriss notice that register
is a part of the context.=20

--=20
Best regards,
Sebastian

