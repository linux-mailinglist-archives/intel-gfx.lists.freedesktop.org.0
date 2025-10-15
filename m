Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A66AFBDF9D1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 18:20:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F0310E876;
	Wed, 15 Oct 2025 16:20:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IAfIc2HW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DA7C10E873;
 Wed, 15 Oct 2025 16:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760545208; x=1792081208;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=2cjuqwGkWpMLIYSyqWPJHGAHOAdFz91z2OOnutnsAgY=;
 b=IAfIc2HWbWmDeiRPI53Clc3tXFByaCtkS5Br/GdSjDGPkCCopOuepKh/
 7x5xQ7IJWZs3m04nomIUuhzhYPL7PlX01kAIRiVOC0C0BKxtG7ZVLAjDh
 gBUKy3vNx4uXarps1D+0gndonIiytSy+MorUfJNPgiamyl+uA2LWdRgA/
 tD/kBfHj9hvs0VODKiP+Yl/ROR96AxBoX8D9cSqdBGHbi4c9DO4hzOaZo
 XKYwWL6puktlwmyZUzLoKleD9f24Oxs2C3vNkvtGghPgX8OpV/cki0gzm
 KUnIPXqz17HXOu62gTPzhWrM2JrcmhYl6GMl5KzEjcHg2OhSBbO77Cx/z w==;
X-CSE-ConnectionGUID: 7QYwQlGVRxyzLiYCZAXXxA==
X-CSE-MsgGUID: ZDcoToaaQRuAZnUW5JBWJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="73837269"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="73837269"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:08 -0700
X-CSE-ConnectionGUID: XuszjEfrTQG/vJLrO5dCFw==
X-CSE-MsgGUID: k5HyNmcuT+WKnBLrbVWOlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181344495"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:08 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:07 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 09:20:07 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yzOfAc1pzrmgbjNXjRa2rqamKD+2DxeHy91d6abgSJBZaU/PlidWcbl6CwgGL8p6WGIObOto8xuWS9scwybbWEtjnjAl7MUJ5ltRjjL8jmelZpvlLatcz3iysOGDmnMWahKXMOXCOffppDs8lkO0D7MS2ODrFQRET1ZPgTfZ72ioRZhZQkVmxs8LODsXWrLATSZlmnu9JJiNHl1WUevWN3EsgbwgO4YY8YEGFFls/D/jyeaCVzmqmcYYD5RUihP0OvQV6FM6yK1zhq4GYDcALdAtyRpN5rsoLj78ByDHbrPorF7br3MS9hHdKXhC468u8P+1XL1jxJtiOdCTvITOBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E3HqkymqS+bISvSOgIrAY9UfrbQsNjHl3PchMUSumwg=;
 b=aPp75SKe99MozJKEZQ05G2ZijWA1xAa3ThORcASXDFyyXQAatPDed4YbDEYa9D9GURziE8/hnkHWrLN1IuBVSODHhHRGTPKPYMLR+4z44zEoX/yeiT23/dZMphnUx91sCpvR2ZRfOaAElH478aNBBZN/2Dw2Aw3g8FjEGZ4Y+oEfwEVW8gXF0BFq5OXh+3KUp6pXl0CtqCPHm4k2d6Y3/RDiJb200BzOlr//2JABLVq0qlZDW0XoXoMIwGDdXjKcg/m+UBhXWbIbCX071i/WSFEkmXxMPBjupbGrbYNjN1yHpBSZfRraHsrdW4+JfcOjciIz3kZxie46FYtbceQfIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB7046.namprd11.prod.outlook.com (2603:10b6:510:216::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 16:19:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 16:19:59 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/7] drm/i915/dp: Fix panel replay in DSC mode
Date: Wed, 15 Oct 2025 19:19:27 +0300
Message-ID: <20251015161934.262108-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0188.eurprd04.prod.outlook.com
 (2603:10a6:10:28d::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB7046:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a3649a5-8c3c-467c-d6eb-08de0c06b002
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VmNHUmIwRFk5cjlYeGVLejgxekxVSG0rekRUVnFqcXdaVUd2VDVCQ3hxWVZQ?=
 =?utf-8?B?REVaTEVKclpzTWh6TVVZYnFaUGs4emd3QVNDNW1JZW1KNHR4WXJRTGFKV2dH?=
 =?utf-8?B?R2ZMakd4RUt0aXZzOFh0ZktlRUVwL2daK2dsZ1FqOU90TnlCWlRnN3BrRi8v?=
 =?utf-8?B?Zk5lWkh0VklwODhNTDZGRnk5ZU8vZWJLY0dvVG9EUGpvYndZZXhRQnA5Q3pw?=
 =?utf-8?B?dnpqNFcwVTdCdUdpMkk0WnpNVDFSV2cybVFGT2txN1loYjB3cnJvQ1NLL2Jy?=
 =?utf-8?B?UU5DWHZ5OFBTOXV4aHNVQmNvTnZiYzBCb1pINGRyNFNLdHRWWGo3cEpMZ05L?=
 =?utf-8?B?VEFpQUJlR2o3RitxSHVZWWpvUWpqb3BBREQ3VFJ0SXkxR1FsMCtTa0lnZEJs?=
 =?utf-8?B?b01LeisvYkIvUVFDV2RTUzhvMW92YklpYS8zenptazIyTkdrUi93VFV1d2FQ?=
 =?utf-8?B?cktnOFJqZzNuaUtsb1QyR2RCUXQ4QWpHRUY1a1JoYkt2RGNRbFgyUmp0KzZk?=
 =?utf-8?B?TzlvNWJydmRUOXZObjFkd2htVndNQk4vME93U1lMU3gyZTh0WWUxLzFLdnhu?=
 =?utf-8?B?Y2hQUnhma3FEMG5peWVMb2FSRU9HVTZxczFJa0FWdEl3dnhnU1ZnU0Q1MnNa?=
 =?utf-8?B?a3NCVmMzdTNDVXQvNThmYm1XeCtSYm94b3hheVY3bGJVbldpUnloRC84QWdz?=
 =?utf-8?B?K3JETDc2MHE4UHdsWWFiUnordG1FZ3ZYRHEzbHVKNDdERXovN1ZEMHZkY1o4?=
 =?utf-8?B?L2NrSVZwd21YTzRlZmtsVEc1d2lvN05GOGZEeVBkanhlVWlyOWU3UTd4SWlS?=
 =?utf-8?B?TkdoUTh4RWtzb0V5WXl5c0lkRVVqenlJLzVrTGs3b00vb3RNbFRUemR5T2Jh?=
 =?utf-8?B?SmMvbXh0blZaMUE4ZC80bVM1V05KdUhCOGY4alpTeUVRVjVJRXhUZGZMNW9U?=
 =?utf-8?B?QnovdDUrK242RlRmMS91L0orVVYrcktIcDdNMWZ5RktTMTJHWXozSUlkdnNZ?=
 =?utf-8?B?MHdEUGwrNXVEM290ZEliU21jdlVVaHd2NEVuVzFCWlJ4YWVIM09GSUpkZGtt?=
 =?utf-8?B?UmxPMEpOM2FlWkZZVHp2NGYvSExXbUlyWmQ4akJvdnVTL0tBN3l3ckpOdTNi?=
 =?utf-8?B?a0RzOUd4WHU2V09kWFlQNlF1UVo4dlVJaHFMTUJhWU1iZm1iVCtkSS9NdVhU?=
 =?utf-8?B?NkdhblpmZS80MzFPN0NZMXZGaHNHWHhLSFhGZk8yMGgzZjdrL0hkZkZkeE94?=
 =?utf-8?B?K2pOUWluSUhBUVJ0dU5NWEh1MVdOMmhmM3U1L1VYaW5DZVdBdnRpQklid0ky?=
 =?utf-8?B?SUg3ek5uNzZmakFHVWdCc0tCdFBQaEpZR1Q4Z0lSVndPaFNBdU4vMGhZYVhv?=
 =?utf-8?B?TEU0RC82SStnUGwxdFFYRjFaTjJLMHpSSkxwNGF0Y0hTUlVINGhxR0RRTmt5?=
 =?utf-8?B?ZmEyK01KZVEyVXRWeXBrVlJQdDlXOW4yNUtBMmtsL0RyaTc2UnFGWVpjVUZo?=
 =?utf-8?B?NFpnMW1xanlibDA0THkzV1hnNGJkSStVVjlid2dqR0pFeTFMTnVEWUUwSkM2?=
 =?utf-8?B?TlgzZW9Ec0hRWFJCQWI3OXdCTFI1anltOWhJcy9BejE1cE43ZHpUNUw1L0NU?=
 =?utf-8?B?R2tjTkV1MjA0eFhJQXNESG5hbU9uYkoxMUhPUHdQak1YenZTWFFIMDZRZDV1?=
 =?utf-8?B?ZWI3WWl4Y2FpM05wVzZKUjJzb1ZEMXI4SGJvRzJMZmZCcm40U2p5VEhjazIy?=
 =?utf-8?B?YkNCZ1FpRVZyQ3ZHandaQ2FwdGxHTVJCN0crMWthbWszUDk1VVlpZXdsN01J?=
 =?utf-8?B?ditIZFlpRWpCRmVzaGxrakorNmFwNkNFaGpuY3FlSEtlSnowbVRsTWFpTjhS?=
 =?utf-8?B?MFBCVno4T0t4QWZOYTZWWVdSdnFtUThaNXRVYWk1S01HODl2dFcvbzYwSmRk?=
 =?utf-8?Q?6aMO3UaoU5H1pMYmYzc2WYPPV4GX8ZNz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1JSNXBDK3B4aVJqeVRCZUpaOXlsbDVCOElJOFRHNk9oL054MExVZ1BiM3p0?=
 =?utf-8?B?aVVGd1FUMW0xbkpMSjZySDk3YS9GRmpLUG1WUDBZdEx3bi9reGtxc0hUTzRP?=
 =?utf-8?B?VzkrS1ZhYk1RZkI2a0JLQUN4QkFONnBlcVJIektaNkxpSHdqNUVKK1dUODlu?=
 =?utf-8?B?ck5xdGpwaWVyQk56bTByd1dDMXd6czhIcUY5SVhGZGlJM1NPNllHckRTQ3Rl?=
 =?utf-8?B?ZzVBOE8xT0h2cFJWNW05bklGSkoveTVnblhjenVuYkpxNTUwWEpKeHFEako5?=
 =?utf-8?B?RmNZbzhTQ0tzQjdIWU1SODRIeGFnYXY1dlVhSUFkdklsaUlENWd1RGM0Mk9L?=
 =?utf-8?B?eFR4WkJ5SWRWa1E5S2wzelROZmV3T2lSdzJXdDJONlRENWlrWHJGWFpKWUxv?=
 =?utf-8?B?SXEzbktJc2hTRGhkWG1lVWtjZFRhalJXSnhmVTA1M3BLRkp1eTlLQkZlZDEz?=
 =?utf-8?B?SjZyRGl6S3NnVnBpcHJ2YlVTK0NQaGxxditFT2RmNXhGZmNkUG15cHU2NUpX?=
 =?utf-8?B?b2FIMDhWVUNOMDd4TnFuWnFzWWl0dnA1VE9FaTUvbVpUM0lNTnhsTDZQNkhG?=
 =?utf-8?B?ZERRU3Nld1ZLaXZqSGdiaWxRZlZRejM2OGlLQTJBUkZNS1hGWkNpd0tyZWFZ?=
 =?utf-8?B?b0J0ZDRXS2ErdUdUcDY4MUUxMFprWWR0K3V6amNqU05FVGtWQ0R5c081OFBH?=
 =?utf-8?B?QUh1cUQzVGpFd3dFOENYU3lrM3JiaGdENHNYZTY0UXZGWERVb2FuOC82dEdP?=
 =?utf-8?B?TnYvR2FMaXhKOXNxU09YNTlMNGxlZVFXUlM0TGQvNUpSZzdqU0poeFNOQm81?=
 =?utf-8?B?c2dueng2aW9kOE1zT1BVV0JyQmJjUDFyQTRseEQwQ0w4RzRsY2pQbkNMQldL?=
 =?utf-8?B?OWh3bU14bTRpNy9IMHZFRGFZRFVMMEFoZ1Q3WGRoUHlvOW8xOFdnRkZZeHI5?=
 =?utf-8?B?dGdxV0pLTjAvU3U2VGJYZlZPdDY1bUtkdjZFN0Z0ZWhaOEVGUDJ2WmhKL0pQ?=
 =?utf-8?B?SmxjUmMrOUZVVmdRalAvM0dBZVNVMEloVlZQZ2VPaVpncGN6TVRJZElEQU9F?=
 =?utf-8?B?R0EramhXTktDTkZuSm9WaXZaV3BPTytlSjU3bkpaQUNVUTFIRVdiRzdIYmJ3?=
 =?utf-8?B?UjFwdlpNbXBoQVg0TGxRbU1SaTFlMzZiRWhyY3VQNElmU3NuRDRrbUdnMVUw?=
 =?utf-8?B?aFBoeUd2SExuNTA1YUtwcjhtM1VOSHM3UGVqdjF0aXpSRzg4bHFqeHBUNzd6?=
 =?utf-8?B?R0VUMjgzWFZocWMzdk01ZndTY1F3alcrY202eFJJMlQ1blF0T21wSkppWFVM?=
 =?utf-8?B?TlVtMW90eDUvNkF2QndxakVqRHN1QUlLbi9KazNaaWZLU1RnRjZudHdiN2lx?=
 =?utf-8?B?UW5GNVhDdUJuZ2hJaGlkYzVTbWoydUowN0pkTnNBdFVqVE00VGwzV0M3VmY0?=
 =?utf-8?B?eXBiTzR1K1FKR1ZnSXpyZU1wbjdvckFsTVdMUE9odnFMWlZSOGtySEk4U3Z6?=
 =?utf-8?B?TTM2bzZlMXArRVovaVJrL0lTMnZLMEZMVlVkMzluSmVDdTB6SXBodXhKeHdI?=
 =?utf-8?B?K1RsWDk3T2R5R25POHhZcFowUWJNS293Mk1YZkc3Qmp5em1qWmtnYXA0MzBT?=
 =?utf-8?B?ak1yZE5hRGpyS2s3RURxYnVTckVUTFdGNHAxR3B3ZE1LQTV4emFCUnVOS3Rr?=
 =?utf-8?B?NnhjTUgvaCtGM0tSRHZURVlVMWI3MStkU25rWllsQUpyM1NmNUQ0YkM2Q0hi?=
 =?utf-8?B?N3hyc2J4S1oyM2ZBb2JoOElQQSt4YTNYc2RXZzYvT3JhU052eXlIdTJoQnNO?=
 =?utf-8?B?N1NoMnMvK0l5SGRxcGlIRXQza3RNZDlqWHpQT01sT0V5ZXVyRUJsOXo0dVdt?=
 =?utf-8?B?WnErbHJiZXRQRFNUblpOYVhpY0ZtRUNvQmNrNklvd2Z3SW5xVEpkdmM2dnFa?=
 =?utf-8?B?UXFGSFo4VWZjZXRLbFJiYjBVZEFaRlV3ajNtUmZZRi9hMWxxSnBoVWF3dVgz?=
 =?utf-8?B?QW1LUDkvWkFuaWhBM2t5TXhjNEhVYXNWcnQvY05mQlRqMG1OWWdZRHhOamxG?=
 =?utf-8?B?d1E0SXFoRjJ3bjQzRmsvemIwTWZDc0FnMVozY1dZQzM2cDBSRkkrbWJtOHYy?=
 =?utf-8?B?aGdWV3NKUFYvR0FVcUQ2MUVIRkprTDA5elFqT003cDVZL0x5OHhFQTF4ZnJm?=
 =?utf-8?Q?A7J6UfQnbWsFi2KjhowpPqLSd4mII6f51BBbvS3anXQD?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a3649a5-8c3c-467c-d6eb-08de0c06b002
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 16:19:59.6955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R23l2QZV9qKGZ5DvD/9Sz0oH2ic7utexbdJO7ZlqrTMfS2US/JBMxKZHLwo7X4Ba/rlxLvlauA39S9VnMOAF9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7046
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

This is v2 of [1], addressing Jouni's review comments and fixing the
logic to derermine if DSC is enabled on a UHBR DP-MST link. The latter
can't depend on whether FEC is enabled or not on the link, since FEC is
always (i.e. regardless of DSC) enabled on a UHBR link; so this version
adds an explicit way of tracking whether DSC is enabled for any CRTC on
the link and uses this during a CRTC's state computation to decide if
Panel Replay can be enabled or not for any CRTC on the link.

Cc: Jouni Högander <jouni.hogander@intel.com>

[1] https://lore.kernel.org/all/20251008094108.88242-1-imre.deak@intel.com

Imre Deak (7):
  drm/i915/dsc: Add helper to enable the DSC configuration for a CRTC
  drm/i915/dp: Ensure the FEC state stays disabled for UHBR links
  drm/i915/dp: Export helper to determine if FEC on non-UHBR links is
    required
  drm/i915/dp_mst: Reuse the DP-SST helper function to compute FEC
    config
  drm/i915/dp_mst: Track DSC enabled status on the MST link
  drm/i915/dp_mst: Recompute all MST link CRTCs if DSC gets enabled on
    the link
  drm/i915/dp: Fix panel replay when DSC is enabled

 drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../drm/i915/display/intel_display_types.h    | 11 +++
 drivers/gpu/drm/i915/display/intel_dp.c       | 34 ++++---
 drivers/gpu/drm/i915/display/intel_dp.h       |  2 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 31 ++++---
 drivers/gpu/drm/i915/display/intel_link_bw.c  | 17 ++--
 drivers/gpu/drm/i915/display/intel_link_bw.h  |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 93 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 16 ++++
 drivers/gpu/drm/i915/display/intel_vdsc.h     |  2 +
 11 files changed, 171 insertions(+), 41 deletions(-)

-- 
2.49.1

