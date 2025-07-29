Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D1BB14C0C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 12:18:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC10910E605;
	Tue, 29 Jul 2025 10:18:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SW+C5TW7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C532C10E614
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jul 2025 10:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753784305; x=1785320305;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=1XAQfsmejZtadXS1PGHFuX8nztVKq5C6xdL5Hq4Eu3c=;
 b=SW+C5TW74ySe1MqGuUcVlhaVdF6mNPs29CZeChHr9z/bR0hIH8h3khL2
 7o4+3I7R1jV3WhHWPu7bJqEjN8Y027QvoU1Ak54vEoVw+1QYaVf8WgzDH
 5xDxVVSakgtzmloNmVFYLvPl16q0EwUwKNitGAdAx2LRWEOe7/zW1vdKt
 fFYWgrK35Q/pvcWbsiBIHi387epvkL9ErcYBYvVPrF/EnuIEC945xAbn2
 kAgk70oxHL2Tjjffws/lEeSLTn70mCh0kMNcbHFSEPv+Cz+SWZtqqdBTP
 9ExxTyxUbpVhi0dJnJ7B5mFY2uf7A116JSHl0I5a6f0ZozAC8a+hvQmsi g==;
X-CSE-ConnectionGUID: 9SG+HPY8SESUp82Cpm5XWg==
X-CSE-MsgGUID: tlOldyOaRci1HRU87OKC8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="81487189"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="81487189"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 03:18:25 -0700
X-CSE-ConnectionGUID: lFmS9vf5Q7a+05V23vwMgA==
X-CSE-MsgGUID: Ax7n2pHoTY6TOPIhbSgVAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="166836854"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 03:18:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 03:18:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 29 Jul 2025 03:18:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.64)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 03:18:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Unmq06JUR9FratD0dNImPD4dOu24khUm/Nr3d4y7RpDhHoPs6SOW7Qaf9dDkbtYsi8IZTN2LmUM68O0+Ck29Hiwh8zgT6IM/1a7rXP4L28dHRjf0wAFj0k3Uiun30pBF7uaI5Jl5lXJup26DcjDD3aMeeIeWDiOcGE2ebUKUXsPq5wvJHM7NfkCm3gCnIJhKWA2KhqjncUMxvqJ//Hh2EIKBHcMMllppx9s4BCCqeHP99x+b6Xm3pgfjPOMM1/er/V6yN+NQdJNUWM6FihMhv4UkMdUaA2MINNoLw5yYrWpxnhwfpGhW1fM1K8Cok4v1+TmVT1eOywFhyPUtkB2iCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6eXkt0pFE4f91Z0sj+mL/rsca5hIpa9ltTltRuT9VnA=;
 b=N78oki2ZyXiEOi6tkb90XOXXWgXqJKdjXM0jvu/58tCbVP0DpacKM2juL6z9oQQrgPO4RB1j3HN1gJ2hinhcTHZF5g7dBTeRM54eZOubM2Pk6giyMDJnP9Rf4id63Frw4eEvX1ygx52W4Z05SAHgkhU1h8MKSP0WOGb4I8MtkNYAUnNcP+jGvsptWcvf8Xiv40G/PppEhM2bvOEXs23GAJwtCKe19ros2HTrbIVxApM4dEoL2v0oWOL8GJx64ojQl8+gIk7AU3OAy0yyXvoH1aqeXZsrpCDdKDgVpHKwwoB6CMWrXk9O7JPMESILUUILikvWhJQvAyNUONmeS8jUew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SN7PR11MB6828.namprd11.prod.outlook.com (2603:10b6:806:2a3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Tue, 29 Jul
 2025 10:17:42 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8964.025; Tue, 29 Jul 2025
 10:17:41 +0000
Date: Tue, 29 Jul 2025 10:17:35 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Matthew Auld <matthew.auld@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: [PATCH 1/2] drm/i915/selftests: Do not overwrite error code after
 intel_context_migrate_clear() call
Message-ID: <uqnll276k7txpz2ldwxfmd6ay7px23xlx643geu2jij54vj6u5@pgmiswyhemok>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DU7P251CA0005.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:551::32) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SN7PR11MB6828:EE_
X-MS-Office365-Filtering-Correlation-Id: f8989ed7-5995-4885-8fcb-08ddce8926b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|27256017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T1pMNE9OWnhQSTZLUy9Qb2Q4clBsbUlnV0dGdWhseDQ5OW5ObExjd2p4UkdM?=
 =?utf-8?B?eEpUR2hVam9rRUFTWGpid0xlOVJkQVhxMlZwUzJOQmxWTmlsbmtnRFA2NWVT?=
 =?utf-8?B?YTJEbW1pdldnU290N3I5cnpoRkl3a0laQnB3QWpXNjQ2QVFZZnVzakZOQjkx?=
 =?utf-8?B?Y3Z4RHJFa1hkRlpJTk0wUngxTVl5U0Yzdk9abGRkQ2Y5NGFJZHJ5UHNEQVlh?=
 =?utf-8?B?dHU3cXVDak03TGczL2s5aFQxSW51aElpc09yaVgrcmRreXNzOEtJdGNBU00v?=
 =?utf-8?B?R1k4V2RxTnQyMUgxZVZHQWprYWJMZHI4NVVxekJOYTE4UzM2UmxjaUdqb2ox?=
 =?utf-8?B?a3BNclN5d3NrU212Y1Eyei85d28wVXlDTVQ5MXdQT1h3US9oYUliTEFsQXky?=
 =?utf-8?B?OG41N3FXVkdYMGVMbTkxcTY0UyszVnA3N1VkWlE2bGpGOXVaYVNlVDlMVHJQ?=
 =?utf-8?B?ZlNZUUJ5TWVQYXZGMS9CUnJQUWdscWQxZjY1QlBqdmEyWW9yeTJGRmFWMENw?=
 =?utf-8?B?YWJVTGd1MG9IaHR1R0dIcjVsK2h6VFNCaDIrSytFWEJjdC95c2ZPMXFJd09x?=
 =?utf-8?B?ZVltOEIvUW1aMjkyZEJKcUNOZjF5dGVtL0o0TjY5N0lNUzVJT3VOV0R0Yjda?=
 =?utf-8?B?cHBCa3NQN2JRZTBYbnJpeHNoOTB6Y1VMSkJLekY3YXhUWCtNUlI3QU05Q0hH?=
 =?utf-8?B?c3ljdnRKZDJnc3MrYkNpSHc1MWMyWnJWRTlUSTlvRnBmSFZoNVBaeTZpUjF5?=
 =?utf-8?B?M3BOWkR2YlYwNGZYbXNBa2dHdmhDMzhxY29FVW92eWRSQ3pvK3ZMdlgxNGNt?=
 =?utf-8?B?aXhRb25GTm04NnB4Tm80K2N2RVA4dWlNbm93enQ3dVMvUHJta1JrSDg4K28x?=
 =?utf-8?B?WmFNVmg4MjRrV3V3ek1oNlU2TktUd3RLbzJlRGI4dU1UTmIxNUhHaHhQbWRi?=
 =?utf-8?B?aEtrdnFqT3lYaHlnc1cvbkFSKzBNLysvZExUQjJ4OFFiUHFua3NPaEhkWWNi?=
 =?utf-8?B?eEZPYVBDVy81K0h1ZTdxU2w1OGFMMlR0c2lmdTVTTmFpcW1aa2x1bW1PaUpM?=
 =?utf-8?B?SStuUzkwajMxNjNIL2VHZlZRM3BacTZseVlyRFlUTDkyRlNsMUw1ZzhLK2M0?=
 =?utf-8?B?OEFHeDFnWUdyNDh5bEREOXY4MUgyQVhIeUd2cE4yK29tTThhZzNueW9UakE4?=
 =?utf-8?B?RWdvbDhCYm5SMnE3SzRiYS9DQjF5WHc5d2pLaXF6cVFtcU03YkduNEZUY3gr?=
 =?utf-8?B?ZXQzcGd5Y1NPL2NmS3Q2UDVLVVhRV3pQcVlQZkFJRktoTTJEbGZrR2xlYmpa?=
 =?utf-8?B?NHJvTC83OUhPS3hLNmtDRStOTjJpZEtKeWwyTUh0aVdGT083a2JFYUtUcnV2?=
 =?utf-8?B?bDYvK29FaitBUWhYd2xPby9jbGhvQVdwL29IZXFlTDAzclAxMzNPUWI0cjZY?=
 =?utf-8?B?dlFvay92eldyM3lxQmxEVWtTa1FJbFVad2xVSDYzUjhIUTYvWmlkdlNqb3k1?=
 =?utf-8?B?T1pBNkg4VjBCcml1ck52YmVXSUhHZWZHV3NvMVJkOWE1cUxra2F1QlFUUEhP?=
 =?utf-8?B?M3dDejlQR1VvSFZFUlk1L25hOG5iN2hNQVREN043bENEb0kwK004cmpnQVR5?=
 =?utf-8?B?aE5NdWxlUUR0aEdqU1BwVENrWDdqUWRySnZNWnFpdG1zN3lFM05IWVUvbXI1?=
 =?utf-8?B?WndnNkk2clcvaXd3N3ZnZTNJWWZRZTVYVWl0TFlNbWUveTlOZThSR1QrQ0ND?=
 =?utf-8?B?K1hFWnVnZVdDSC9GVVQ3YjU3MTIzY3ovYXlFVHc3YkJuelJmOFdIUGg3bVlt?=
 =?utf-8?B?SC9RRkZNNlhqWWFnS2htUURUMkVUVktUOFlBU3pDR2VLWGNxNFllcThPY0lj?=
 =?utf-8?B?K3JBeU5HazZZM3JKQisxMnZPeFNDOXEwRGtEcElhMEJaUGpSZkdNUlUxQVNx?=
 =?utf-8?B?MWowN1RHSldzNktpa3lTSkxwRUNoeEoyV2hRd0loU3dyWndWMUlwS1NkVzZC?=
 =?utf-8?B?Tmd5UjNoWUZBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnNjK0Jpc2dYM0FFK0VmSEc4Z0FkcEpzRGs4eTB0TDdkaVVOTHMwOWFydjNr?=
 =?utf-8?B?Vk9FOGVaTUlQblRKR2l0eUNjOVVoUnlYcVBaZzkvRnQzRmVabmxHMzZFdys1?=
 =?utf-8?B?MjJRSll6dDNDbUh4YVM5VW1aY1BQY0UwblJ1OXNkNzgxNWt2ZDRtckNvZXVW?=
 =?utf-8?B?K0k4RDZMcEpnR1pZMHFyMjIyU0dYbUFBMDkrdnFrVlpEWjJBQ0x6ZVBqbW9E?=
 =?utf-8?B?VkMreGd3Tk1acDN4L3dkT1RsazVjK2l3RC9FbWkxWkwxK3VPTEFrbXJWcWdl?=
 =?utf-8?B?Slh3VHRUVXh0aGJTRFU1eUo0aFJQTE5LTm5qNnh6S29LTjN3a3NReU9jQTB4?=
 =?utf-8?B?Mjk4amVFaWJTb2c5U1NiNUMwTis3R1crZUFXRnVndkJKb3ZNTzVwU0F4UzF4?=
 =?utf-8?B?UWo2REtxWnVmT2dQSFlKclBHdzBidm5kRy9yOXZHdllTcjYvYzdzalZ5ODZM?=
 =?utf-8?B?bEVhbjBPVlNxZ2ptazlLTWF5dVN3U0Nuc2pqTGxBZmdRSi9OYlFkTllsVWVn?=
 =?utf-8?B?RGtsQkpHVCt5Z3NQVndDalUvbEtyTDBBd1l4Wk84R0Z4VzlCYmpXanZPRThT?=
 =?utf-8?B?ekhKU0twQkRKWTFLWlhlcHpOT0VleDZtVUFLRHkxcnRHYlFzaVBFSHV0dy94?=
 =?utf-8?B?d1Zyd0VGUitwai9oWk9WVndIcXNJNmVvVllSNE9zWkl6WmtsdnJvM1Nmckpr?=
 =?utf-8?B?V0hXWnBhQUFqbmRHSGpzZ0tCekpINWhLZHUya3MwNDBUMWtFVHc1S1lUVEJo?=
 =?utf-8?B?YjVxT3ZsQzJWeFBNcERrMkV6SXliZG5YeldtSHI1L2Z2eXk1U2ZHbmV6ZDBK?=
 =?utf-8?B?UlUxcitBazMvMVdxV0NIeW9XR1hsQ3pZOGtJWThyMlhzbVMxejg0c2JQOXZI?=
 =?utf-8?B?TTYrQ2t3VmRLL0NNWUZtb3lkOWpQZ0Zxb1ZxY2JXR1NwcHBFMmo0TkpBRlRY?=
 =?utf-8?B?eUI2bGszS2xlbitPYnpweVJwVXYvaVVRVVZJbnBwamFweFBYWWhWV252THhK?=
 =?utf-8?B?cEh5V2diOFgzWnJlRG4zeGdjVkFHS3RXTUdCUWVGS2dQdUxFT1VoZXA5Z2ZN?=
 =?utf-8?B?U3ZQdHdxc1NGYmU4em1HUEJLMElVQXAvMHZ5ZTVDMU1RRDBMUTZxK1lYeWl5?=
 =?utf-8?B?L1FyOEVjVTVEbnpkd2x3RWxtanhheXU2TGl0Lzh4OU9uYzVFMUZPTzRmV2F4?=
 =?utf-8?B?anRKaFhzU1NjY1NERVE2OGdZSHhCdHpIT1IxdW5tM2R2TnptdmFLWVU4Zit4?=
 =?utf-8?B?QTRNTUhUbDJtRzlLbE5vQmJaa3Y3aXpqY3gxZHN1cVpNMk1VKzBXZzNxQjRD?=
 =?utf-8?B?ZURmY284TzNpWXA2SGovc0JCQW1wSytuci9kV2Vrd3NjSlNMWjBXc3FOMlYz?=
 =?utf-8?B?TjVsbEtmdHBkeEFQb093akNvWTRCaXlabjlTcXNQMWtZTTVmZVlDMnd2REdB?=
 =?utf-8?B?c2RTQUwxN2tickpORklqb080VTU4eTZYM1ZhWFNDVnRRMTd0R2RJNWI1cXkv?=
 =?utf-8?B?U1ZHVzhzTklyc1EwblFVREdtOEhwOEZTRlBnU2xydm5JamhycHErcThKbVFG?=
 =?utf-8?B?Y0s1OHkvMmRsTWUwTHJ0STJyWmxqK1pDRHRhd0NGZGZ4SmhLZFNEa0hadmhV?=
 =?utf-8?B?bUdKdWJRQldOeERENVRkb2NQcUtNL2E4ZW5vRkFqdDh6WHJJbEplTkRrMDZq?=
 =?utf-8?B?NnRTMGFMTDBNZ3kreFp2VFdPVVFPRnZnN3Q0cFQvdXRITXpUMGYzMktvbHNN?=
 =?utf-8?B?SUZ4Q3VoQVE3RUtBeTV3OFNYcS9XN3JMd1R0aXRSYkI5L2s5WUFIR2lidWQ0?=
 =?utf-8?B?NDJOQytaVHZ5aS8vNy9VTUduZFcyeHExTEdDN0cwTzExTU5zNlIwVmY2QS9G?=
 =?utf-8?B?emxZY0l3clRLWVhVTW1kdUtTdGxFN0lVODhNcGppSEhKN3M2L3hSemdFWXdH?=
 =?utf-8?B?NlZLL3RoTzVyYnBFSkFXTElqanAxV0hEWDUxQWw2V2FGc3BCZWMzQ01Ubkxm?=
 =?utf-8?B?N1VOeXkvOHhBUXRCYmYyZ2FBS3RPU1NlSXUxTDRDM25QcGFvejBsZlFEQ3Nv?=
 =?utf-8?B?ZlVUTzlPRi9aQ3RCWXI5ZWdXZno0aklYZU00SnNNMDArL0Q4Rm8rTkdHRklL?=
 =?utf-8?B?ejg2TlZ3eUdsK1c1QWVnaXl3OVlCMUtlM2psckNIWXcrVFdRa0lDYThXam5h?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f8989ed7-5995-4885-8fcb-08ddce8926b2
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2025 10:17:41.8718 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jfdyHhLGJ71tbInzSguffJn9HD8Ou5Aawxzcn4Kb2Nf3138FQnRt8jVBPCsqP2irt7GzMthaK6lBchLMM0yjCF8cs42zljN8s5sFgUw6T5I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6828
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

Currently this function's error code is stored in err variable,
which, if a i915_request is present, will be immediately
overwritten by return from dma_resv_reserve_fences(). Call DMA
functions only if intel_context_migrate_clear() succeeded.

Suggested-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9c3f17e51885..c94b71a963b2 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1228,7 +1228,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 					  i915_gem_object_is_lmem(obj),
 					  expand32(POISON_INUSE), &rq);
 	i915_gem_object_unpin_pages(obj);
-	if (rq) {
+	if (rq && !err) {
 		err = dma_resv_reserve_fences(obj->base.resv, 1);
 		if (!err)
 			dma_resv_add_fence(obj->base.resv, &rq->fence,
-- 
2.43.0
