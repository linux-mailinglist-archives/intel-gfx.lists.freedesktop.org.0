Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA2EAD6FEF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E6A110E816;
	Thu, 12 Jun 2025 12:15:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mUqQo7Mq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A81ED10E817;
 Thu, 12 Jun 2025 12:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730530; x=1781266530;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=JA2AkMrPv0us2Mkv89lMD/yIiIXeYO27I9G8XyoIRlM=;
 b=mUqQo7MqTKtU6S3hki/NISay2v4Pt0erBpUDCGM4+welwYQh+wFXvWob
 1Q4Or+gwb6UySDb39VDnZ2+9G52D7F8q21dfSiS/IoBO9gis0kHg/+YK2
 mLHYZR7zPtO1RsG//kGOd2nehQOCHy8dKIuymg2mrW99G1uKTVHGvEOWl
 zygaLW9PFIFlOzKukfwb2zcthzW7RwzRQXcesRYhAOtgTQSDwO5csI5nb
 QrQsIxS9IzSP82A2WNF6zXd0reYtYrml4oZQX3qOcz6KvWn6Ejo4X6O2V
 BuNm+UIIVNsMw+7zI+i+AdS4Y5K8O5KAhSR2OeLhiDySG4R42atDOihg7 Q==;
X-CSE-ConnectionGUID: C6xCrqtJTy+RMuF1xl47Eg==
X-CSE-MsgGUID: pZRv3rEvQ6euTd0jj9ba1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="74438822"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="74438822"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:15:29 -0700
X-CSE-ConnectionGUID: Sjjgk7Y3TsK+CEo0SFLs5Q==
X-CSE-MsgGUID: XHgqbjK/Rka3t9GE1LcxZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152494377"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:15:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 05:15:28 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 05:15:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.52)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 05:15:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I0wERQ+bLUMiPxL4CKpCZRWckXzs6Lrq6ZSm93wltPmpnCdWcYaJRN497JP5Yt6C5oGaJSOYgpGihe2tL2NRNeJmB+5Q7nbYTyxBIyUoEIX9z2DU0Hl+1Ucpp3CTZ6r98dpOLEvRfL/f9px+eKJoRpg1BBSLBEfptIhCvUsjcaXS165a/zZ2RhH1v1P2EUZa13veVIb6M6hr0csaHsUWia/9U62zwdcbp2I40HkQFIZEGaBgeqrIJpGBD32kngO0MsgALYOtnOnGPuM/At3yayRI7H2lxsvYmF29ARPd5Q3WcADT0jaAaQy7mvAup+KWerRfyb+49PMVGGOwlyP0bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T0qCb5aTlabU3AFwyOafEtjh3qvnxPPRwkawC8SidBU=;
 b=f/rvpix0JIHcGuJJS4RoWyX4u9YzqNjyeIh6vMhHHSX5Xf4kqwYMyUJ1ZtO8w2LzPTS4QbOc00DJE7UVNaiPB6I8zmqgM21U7Lmc76AQntQ2Opw7x7cSIe8Jcv702B7gVEL8Thuanjjgb7vpA61BOY8+kKCj5rw2MGU/SnW+zzr8t6yV9zui6M69/Izmrrpb4ZB5TEUThqHc+5aKUaD8HB/sLdAV29ph8gOrA/gtwScJfQvc+qR4NO1IIX0K/I0nbsGVSS1gNHCtJ23iclKyz2pInk6292Juoh9Llr23ztXZ/g9rV5tKTOi9+QhnkJAo5f2ZDHvJmyXYxvwUXpa+qQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB7280.namprd11.prod.outlook.com (2603:10b6:8:108::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.23; Thu, 12 Jun
 2025 12:14:54 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8813.024; Thu, 12 Jun 2025
 12:14:54 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1f019c0f2543e24167a6f15aedabeae320dbdeb3.1749728173.git.jani.nikula@intel.com>
References: <cover.1749728173.git.jani.nikula@intel.com>
 <1f019c0f2543e24167a6f15aedabeae320dbdeb3.1749728173.git.jani.nikula@intel.com>
Subject: Re: [RESEND 3/5] drm/i915/plane: make intel_plane_atomic_check()
 static and rename
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 12 Jun 2025 09:14:49 -0300
Message-ID: <174973048949.14553.8168666585012381006@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0358.namprd04.prod.outlook.com
 (2603:10b6:303:8a::33) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB7280:EE_
X-MS-Office365-Filtering-Correlation-Id: 9928a762-6d79-4644-e2e1-08dda9aabd4a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|366016|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eHA2Ni9XVlo2dHhHMlc2ajh5K0tFRUNMZmU5WUdTdUw3SHBzZ01WR09wTExQ?=
 =?utf-8?B?VFV1VjJFL2kyTXMzWXBRTWdBdkhENUp4RzFLMjYyVjdCQWsrU0xSa2xMQ3JC?=
 =?utf-8?B?UFc4S3Zud2IwKzhJRHMyVk1MMGRaR0tLVWhHUFIxVG91blAxV2hhUDdkOWRG?=
 =?utf-8?B?VTVYTWJncTNPQ0lGY1A1T0hidHFmQXR6cWMwYzdDOU00WHMwSWhEdWtPQVov?=
 =?utf-8?B?WGE0ZWZPWDFvMUp2OXZKOFBmQWZMTWxOa0V3OWEwdmZ6SERac0Y4K3JQTFRT?=
 =?utf-8?B?TERwZmNYV0hMK3lLMkJzSklRNitiUmZaZFU4Y2lpRG5iTWxIY1pOMnJXc05q?=
 =?utf-8?B?UWlTbjJuSy9IbVpyWGRIRkd2L01NSGt5ODZhWFlXRUZJdVdzczNKd2pWK2xI?=
 =?utf-8?B?T1B2TjVZSGZzemIvZ1RwZmtKZDRkY1J0aWFYMlVzK1Z6aHRsWWY4bEwwQkRt?=
 =?utf-8?B?YnlLWDdWNEVkQ2VNSENTdm4zUXVSZHRCdlhiY2grc2hnR2FpNmJKV0NxNTQ0?=
 =?utf-8?B?L2pEMzdkVy9SY1hZNEhheWNSbE1NRkZLQzY2WHUvNDkxQjZldCszRXM3VmxC?=
 =?utf-8?B?UFZMMVI1SUsxQzUwMTBwb2JJWWRnKytjTitmSDJ0M2JuSmxFdkFoU1JuK1lH?=
 =?utf-8?B?TkVWaW85NnkwZ1lwdFZOaWhQWjBXOHVDWDc0NzNRZXd4RkN6VWszS3pFMFVR?=
 =?utf-8?B?V0NMYzMxYjBvWnRnSU0vcFRCbU05dGlSQmR1UzlWa1lvUEd4YkNsVHJNcUUw?=
 =?utf-8?B?RllsZjJ6S2t4Y0xMKzJzdFRES3d6VFpTbndVcWRQZk53NFA2UFROZ0xLUTJ5?=
 =?utf-8?B?RDRYRmVKWEdtSGpiSGVFeTBGRVF6TDVpMmc0MkZIb3hoRUowVmtPQ1FNdFho?=
 =?utf-8?B?NVFzQjRWQkhTSWgxNkVGN0kySFJ0YXk5S1QwbEtPbU81Nzhud01wYWV2TVZY?=
 =?utf-8?B?ZEdxK3NnZjVGUnNxQVhQUHg0UDFjRjZ5dWlGY0YwcU5KaHJaUzVacVhKZllv?=
 =?utf-8?B?LzhmLzJDZnpCeVlmZzFldXUrYS93UmRlZGdvNVBFclVnWWw5SXNwd1ZMSWtO?=
 =?utf-8?B?VVN5V3FUN3VNdGcwbEloVXFBd2p2NDkvb0lMR00wNW9OV1NYOUN4eWxMVjg2?=
 =?utf-8?B?QStSbzhNWkpLQ2JJeWxXUjJlM01NbDlpZXVWZC9NMGdoT0pKTU44ME5iLzN2?=
 =?utf-8?B?THNYK1ZsZlBnTjNYekpKTktWMFBMSkl5M01xODQ5Y1B0bnlFcHl4aWJsbXVk?=
 =?utf-8?B?R3ZLNG43RVBhaEtjckVBb1ZsZGlQUjJZRjBHTC91K2lyeUlOSFowS2R4Ykor?=
 =?utf-8?B?bTBOU0pnVFJ4dW9CZlFieG45NGxpcUxaOHNPVDVDc2V2YTY0ZlFGNTVnaDVX?=
 =?utf-8?B?NjBOZnZFT3lXRS90cm1VbG9aa1lXOGt4TnVpU2JvZkQvbjUwbUhSL3lkMFo4?=
 =?utf-8?B?ajdBSFhGYXB6ZWFBY3N1eWNobkx2eTRJcnlFaDNxb1VaeHh4TWxEZittRDBr?=
 =?utf-8?B?NXdMQWhVOXBheTFHRjkzTm9nWUFuTW83RkQzVGNoL3Zuc3BiNWdsZUlMOU9L?=
 =?utf-8?B?VWlJVzdlb0Q3WUtvR3laZDgrekJTcEZXWGxETmVVcVkxbVF6Tmt5OVFDSUww?=
 =?utf-8?B?R2drajZ4ZE1vbGsvUnMxUWR3MHRlVDJwemkzSUhpcGg2ZHlYbi9LRFhkU3FT?=
 =?utf-8?B?eDRPeEV0dVVnTTVYTGV0K0luN256NmZ4SWJYNWpBeENzT3dCR2tXQ1YzWFdU?=
 =?utf-8?B?WmZtNFJmbGVmNDU3R2ppUHVydEtuNi9RbnpPb0gyRmxlMGU1UklPMFM2Y2U5?=
 =?utf-8?B?MnR4RUFDdm1ZQ1hGTG1GSThZOHJqZFJUTVF5OTdmNUoxNmMwY1VwcEpMNHhP?=
 =?utf-8?B?dllqL1poSXkxVjV5WmJvKy94NlZtSFgyWkZlNVBvN3hoWk1nQXR3Z29neG1a?=
 =?utf-8?B?OU1UR2FDemhPbGVVNmI0eDd1MmJYNXdWSThKK1lGVWJOaW84N01RMFdKVk5E?=
 =?utf-8?B?bGNmR1U0a3VnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WE9BbkJwVG9haWpFV3F5N0VrWWsyNlltYlh3TzB1WCtvWmVobFhuUGNxTzVy?=
 =?utf-8?B?NVNjTEU1Tmg0b3dzK2NwRlN1VXBLK2ZxZ3JkamV5dzhmUjJSVHNPdUdINUdr?=
 =?utf-8?B?a1FJb3BCUGxkSTVnVDllSUEyL3haM1pEYnp5cUh1Ti9kZnlaZzZNVzhueEp4?=
 =?utf-8?B?b25BaS9uZ29YNlN5SnlaRmI1UElOVFZDMjA3R29TakMremR3SXpzWVpxZ21E?=
 =?utf-8?B?REZqZHoyYjMzSTdWQjdUWno3UnFKbFJFcTR5VG4vbEFra0FtL0hNYlorR05m?=
 =?utf-8?B?ZDRwRldrWDkwZkR0WEtscVZIWmpzRlNTQ0p6MTFrNVUxV1BCbmJ4aWJxRVlV?=
 =?utf-8?B?UEFFZS9uMnhkOThSTHpqSWNyd3dnWm9CUThBVEtJZW1mRDZyV1lFQUZEVlJq?=
 =?utf-8?B?YlJJdWVuZ25RWTR4VFlFcXVHOEVodUJleWJRYVhvR0RySGxITUZjWnRxb3dB?=
 =?utf-8?B?eW9iUURxYW9DUzBHbmpaYitLbFNxMkFaQmorNHNNai82djlkS1IvUitnOVlv?=
 =?utf-8?B?clN0d1paZ3RLWHRIMUUyWElML0swcG9vKzBWVnlwOFJBZkcwYkh0Yys3NXNP?=
 =?utf-8?B?K0tGZzZVeWJHU3VaODZubndqSEZLUS9YWHduN3FHbEtoNEJDdGtBd3NNaWVD?=
 =?utf-8?B?N29VWk1oV3hmWHJQTnUzTmMraVNZdndENHZuYjMrdjhxUHJ4Rmc4WmV5VDNq?=
 =?utf-8?B?Y3dscCsrOGNVeHVYdmR2WHEvSGovTG1xTSt2TXM0M0FKNDJqUGRwaldMemc4?=
 =?utf-8?B?cDhSR0hxdTNReElaZlNmM1c0dXhXRE1qbkJteURraDdJdng1UFNCeHhWYlNi?=
 =?utf-8?B?TzVUTTJEQzVmRlVYWVhDTmFmUlMrRTA1RWM0Q0YxWERUWGUrSUFxZVRLMDJE?=
 =?utf-8?B?ejNXK2lseGlnRWNYZnhIc2R5S2dPQnU5cWFRU0haNTdISXEveERGb1JFVUxP?=
 =?utf-8?B?MVpWdy85WXlsM0F3UWppR3U5M296N0tuQzFXQVFnWlJQSjhWTU5ScFRlUkE2?=
 =?utf-8?B?VkJoeEpmU2src2ZheGw1Rk5YUTNPSVQ0eGFzNkZxdkFhV2ZtRnJqR2xONzZw?=
 =?utf-8?B?QTlPU1FYRTFROWdtUkswRzhZbTVqcmxaWitMNUYyaktzUFRIL3JqczZraXhj?=
 =?utf-8?B?TTN6a1E3NzNNMnp4OEZBNEsvNWxIWmY1Rm4wUlZTanF3NnFrdVR1bUkwcStL?=
 =?utf-8?B?Qk0xbWZCKzRlTnhqeVhBREFvaUkxc1NSbklqZWVRSWFGUzNveXVtdjZjOTVN?=
 =?utf-8?B?NFpuaWtVZmxRSnAybkVIOGxRdDRrZHRYaXQrMDJ3d21NNEc5TzlGTi9sUDUw?=
 =?utf-8?B?S2h3ZTViekNoZzNQQTJhckYrMGU0THRIQ3hRWlQrV0NvcXhUNEk0ZnErMnNk?=
 =?utf-8?B?YnVpV1ljVGRsOG9xajN3U0pPTFJ5ZVdaYUVQcEYrbUpqWWNua0hTQzFueXZ3?=
 =?utf-8?B?MXlXRDdzYzFMdGhXM214R0JrUHNxUFpFTTlxSGpURU1zc0pkNi9GN2tkVm1G?=
 =?utf-8?B?OUNoOWpPZnV1MU9DRU1hdkc2SVlQU2dSeGpVRGMwaitna1A2aGtxZ2cxREZ5?=
 =?utf-8?B?RTEwN28xRmRFcE1PVTJMNG1pYjhyTzlCdlBla2JrTVEwaDUxS2k3ZDhOR0JT?=
 =?utf-8?B?M2pRWFI3eVhpY2ZYazhQYU54SEdwcW5uWWM0alpWcWVKS2tFTEhiL1RCZGI2?=
 =?utf-8?B?MlREMkw1Y2FERWxhdWJrcWlodjlCdzZzWndZekt2SXJtV3FmbmhCaFNVRkdX?=
 =?utf-8?B?OGZCelZmdjJYVi9qUlRZcC9Wa2NvcWZqWGRWbUUwNGV3U1kwUitnWXpNdWhV?=
 =?utf-8?B?MVMxSllnLzlYYkdLOEs5RHVUOEdsSlJZWlNsUFJJazVwOG9SaERJVmtENG1x?=
 =?utf-8?B?YnNsQTRnakh0aHk1T1hBRCtzOWRTQkNabjlveFY1eThlL1JTdGJlOTIzSlhy?=
 =?utf-8?B?SHhEd1N3NE9OVDd3UVBabmlpVFk1RkNnYnJGRHRoRkJQVnExS2lsWHdaUUhE?=
 =?utf-8?B?MS9zclZrMFg0YWVBelhmRzh2ZGhTaTRIVWg1RUVlQWp1elJHSDVONjVKTlJT?=
 =?utf-8?B?VnJubmgwbmozc1ptTmg0KzE1dTZHeUxPM2c1WlpyalVNZ204dWVyUlR2RFlI?=
 =?utf-8?B?Szl5N0JPQlBDZEJqZzlWNzJhVmFMRGMySWFQdHV6YWIyWDVJNVhMcW9FaFVP?=
 =?utf-8?B?NXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9928a762-6d79-4644-e2e1-08dda9aabd4a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2025 12:14:54.4125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /4IweuHt6+H2kc2wBt38C4C5q2Vuezdmw7XLIpNmLqxhm4nm4ZfFFJyCRqIHeTfjLxWreZnOT9cg0y3mhf6IqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7280
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

Quoting Jani Nikula (2025-06-12 08:37:09-03:00)
>intel_plane_atomic_check() isn't used outside of intel_plane.c. Make it
>static. While at it, rename to vacate the name for subsequent changes.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_plane.c | 6 +++---
> drivers/gpu/drm/i915/display/intel_plane.h | 2 --
> 2 files changed, 3 insertions(+), 5 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/=
i915/display/intel_plane.c
>index f68432d28d36..fbbe957d3f04 100644
>--- a/drivers/gpu/drm/i915/display/intel_plane.c
>+++ b/drivers/gpu/drm/i915/display/intel_plane.c
>@@ -734,8 +734,8 @@ intel_crtc_get_plane(struct intel_crtc *crtc, enum pla=
ne_id plane_id)
>         return NULL;
> }
>=20
>-int intel_plane_atomic_check(struct intel_atomic_state *state,
>-                             struct intel_plane *plane)
>+static int plane_atomic_check(struct intel_atomic_state *state,
>+                              struct intel_plane *plane)
> {
>         struct intel_display *display =3D to_intel_display(state);
>         struct intel_plane_state *new_plane_state =3D
>@@ -1542,7 +1542,7 @@ int intel_atomic_check_planes(struct intel_atomic_st=
ate *state)
>                 return ret;
>=20
>         for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
>-                ret =3D intel_plane_atomic_check(state, plane);
>+                ret =3D plane_atomic_check(state, plane);
>                 if (ret) {
>                         drm_dbg_atomic(display->drm,
>                                        "[PLANE:%d:%s] atomic driver check=
 failed\n",
>diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/=
i915/display/intel_plane.h
>index 10a94b9a135c..4d69a868265c 100644
>--- a/drivers/gpu/drm/i915/display/intel_plane.h
>+++ b/drivers/gpu/drm/i915/display/intel_plane.h
>@@ -69,8 +69,6 @@ int intel_plane_atomic_check_with_state(const struct int=
el_crtc_state *old_crtc_
>                                         struct intel_crtc_state *crtc_sta=
te,
>                                         const struct intel_plane_state *o=
ld_plane_state,
>                                         struct intel_plane_state *intel_s=
tate);
>-int intel_plane_atomic_check(struct intel_atomic_state *state,
>-                             struct intel_plane *plane);
> int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
>                                struct intel_plane *plane,
>                                bool *need_cdclk_calc);
>--=20
>2.39.5
>
