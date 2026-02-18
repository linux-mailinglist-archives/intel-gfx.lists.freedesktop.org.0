Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOoXGjyblWmsSgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 11:58:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE8E155B60
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 11:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39AB810E2D8;
	Wed, 18 Feb 2026 10:58:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g8NjLCez";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC4EC10E261;
 Wed, 18 Feb 2026 10:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771412280; x=1802948280;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=54JY+jXC8Dnwe6/1P2gT8kDg1dKlKSrUwJOxoRGZuGU=;
 b=g8NjLCezkh3ZOhwZr0jZWFVjur6Qj+Z4F6xBSchSPbaE9jceKYAyh6gU
 OF4wb5eSFtYZ2L3mvI+kLGhk3v0Owe3ZNGFg9brw6gPV6Vn9fMMtUJx7G
 6JPf7RGuGFpNnXuWc7KH+zWThhuS0xGPqZuJrDzRzhNjyhqrxXS8kQ5qn
 KR6R7cIQltN1O72GlqMBysk36f9KEsegCg5TCMPaU91j+qYEXyEUDBQFJ
 YfWt7Ew6BtcqqFh1gJzmcgPAyeBAHDSvc/Xg7iZgl/zUDeCyyx6+jlEOh
 2Ixu6ApK5q3qXoaORaPrT8ZaUlyxdLtXFU8uDmaAd0eB5YVhg4gCXnlr/ g==;
X-CSE-ConnectionGUID: 0YJhDO/NTfGvOgTYnOha9g==
X-CSE-MsgGUID: w9ZLfyuxRf6Z73TKr9Ujcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11704"; a="75094555"
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="75094555"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 02:58:00 -0800
X-CSE-ConnectionGUID: tnae4Df3TAy2nTJzUjFbsg==
X-CSE-MsgGUID: 5gqkg1mLQuKpP2pX/Hof+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="219155565"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 02:57:56 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 02:57:55 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 02:57:55 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.7) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 02:57:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yVCqW2eaceu6pIa38GUz2F9ZF3MyOiPIG+eeMg8W60QZ+ryRiiVUFa+H9+fD3xw7SjhSd9xU1f6aotnYe3qQCJMZMfDjodwpFF4iVVAcI+1SKVOWikfpCHuU8NMRvJ9ZMqyOkPjLFjCGRd/vD39lsRvMdVjPIZeWztZVJ4SjdBqYSRbX7HbBqzTfanObgY/ovGbIHPztwJ50JmKuN1LnJqC0rbDe9+CVrrh94B6QLzq/niH/nByc/7uMFo8CwiJS4jJT/SiPvy/Tko7FEt4a0FIruc6E2Y86PeXVlhFnXE0EEoUDDDkrJqBGbBG53J3IzMVV0WVQvr0jBtovhuh9Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0/2DWa02bviJap16VYD3VB+e9U+OgnXKePvkTSFECsY=;
 b=MLH2D7vrt0hevIBhpAovu0iUvfjJvEG6dzjmDpUv8J54VMS2HY51XT9L2JVLi/04Bk3tJ9AY7sSILuPZE90Ll5OunTP8EbsguynxL2XO3W+jHtkLm/rLDCxSynkFURUN7OHEmMlr/K87v2NbxqazAuHgXBzwMedcA3St8ZSADZMU5j7mLWsJUI5koGGbPePgvnGJnYyBQRmv7J8H2VESzlGtZ4Sd3PGIRnh/r5FJnXEAt1Ebmy2tF4ocedIWhcUxjLdF6NaVtwplse/06Kigib/oSYFYQJSRofR8C6LP5bDki1KwrBv7EAiswvbgazJqaH4nDBHpwfqPWSNe8tAICA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB4771.namprd11.prod.outlook.com (2603:10b6:303:9f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 18 Feb
 2026 10:57:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.010; Wed, 18 Feb 2026
 10:57:53 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/2] drm/i915/dp: Fix ww mutex lock failure in
 for_each_joiner_candidate() loop
Date: Wed, 18 Feb 2026 12:57:07 +0200
Message-ID: <20260218105708.845161-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF00023976.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::377) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB4771:EE_
X-MS-Office365-Filtering-Correlation-Id: ffae161e-80bf-42cd-3bcb-08de6edc90a2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?74yoJ2zGle4MaZ/2RvABKSTIY23nl/xY3diqS6QeoRcKluqL+tI0BxZeB8ov?=
 =?us-ascii?Q?CSgZu5ZFlY+HRxmhrQ82UL/hyaAoJLxOEgc1eo8BYwaacfApyH1cRu8rhluj?=
 =?us-ascii?Q?RGIXnRbFGiS/aMaDvZUkTcmwp6dvbcCuUhkfJ2fGW7DSHgcsIlPCUG28gTok?=
 =?us-ascii?Q?hTwYl2+Jj3NFomm0oFRIXqcH3ByemHfcqP195AEd26vnmVVSFiEJ2TJuHvJv?=
 =?us-ascii?Q?hVoFKHbibi94L8LLlKHf5IzLLX1Gl6MxDa49TI0gIbbYJlWgLg+s1MiIDfiP?=
 =?us-ascii?Q?CTJq0gNauQLWRzdDAOfRNp3kww4tc7ixMd46KDPJ29XEtUMJB/g9S258L2fI?=
 =?us-ascii?Q?0EFIjQ944GtgA43BbdYhn5OuguYny7oQ0sv8mS7UUwta4i2DoZWoaGsfJysk?=
 =?us-ascii?Q?uYsT8TNg5i1ebQvcoZKoTZMA4JCILgMoVYOJ5fmWGmKNnCb20YmhoueXZZ1j?=
 =?us-ascii?Q?kLRLdPVPrf8wHoG/NaDzSY3P6CVYB7Z7QLBh58JORg9HBT1XT5/5Z8/kPeWz?=
 =?us-ascii?Q?qtdv43mWMuuoDGRFO5Aypf9oc1EtKnBPzSW6kxjxjbKkpXkKpbcpCFMGpd2D?=
 =?us-ascii?Q?yxioeXu9vWE0OiXwM4sSd2tt0zWcBf7qIctQmY2XeieBThTpUfgwjxQqGESd?=
 =?us-ascii?Q?uMmikOluGjkQcCb0Yl35cq3JRdbo+gb8IdypPnGE9X1ezKfaNfEHeo6vabJq?=
 =?us-ascii?Q?YlcqhZktc0b73J2y/MVGD+sERfcBQ6n8WQCTm++CcvhyGTzDok3UDChcOhU3?=
 =?us-ascii?Q?1//E1SkNXnKcbpYkbJ+igDKdAz8mjiyXhf5/pGYUk/vp+wshdNxwrfunpC1M?=
 =?us-ascii?Q?PzHR5x4qAVxP+u138AUDqeJ3qeX7gBREihEgvvdAFTPOHo9qjgTW7XLn6u3o?=
 =?us-ascii?Q?AmnliP7AcbyIPDbWqeYqCrgPiEfm/5roFMlfXQk1Omzf6+bWZaxx5tCl8NXb?=
 =?us-ascii?Q?np7ldp28PT7RACzbvn+c0bXYwiFi9ree9dMX+n6WHrD19gYXdvEf5mV5IS9p?=
 =?us-ascii?Q?7AcUa50F61mt3dF26qU6FGc0lEHNoK4abfPlDZUn4i86fc2kKgRa2dGu4jby?=
 =?us-ascii?Q?FXifbTedhKhbkk1Y9jHCkI06XjA99b5MfdWwyXSw8z2tdwb2zqq7PAjlwu8b?=
 =?us-ascii?Q?34vuPoqtXK/ko7SU0ixW8bNnWG6drsze3ppdfjGbwjWM+EAzEuKKmuHONWcI?=
 =?us-ascii?Q?hNL6j/AXsLs2sXd8BwzkR2D7z0QwlaCYf533OJF8cQlE347OM7hbV4ybcLG1?=
 =?us-ascii?Q?Qt+RmP3+zQD+O9al6K0MXGFruqH05Oet0mpHvHLH9lAz1jHuXXz1kFSYOG/i?=
 =?us-ascii?Q?tEEzo2SbtRIhT0w60+3aUbKjMsvK67KMc0nVLduxepLtKoe8ir9z2AKpdlLt?=
 =?us-ascii?Q?QVzKfv7mU0oE3yGJScanKyoRTmbNWxPJZATWmEQdw/pVUUOO3HxSoc/mvYwN?=
 =?us-ascii?Q?rGavBHj2ZM1SJlIYLv17fxdFcMAoE01YhnNHyVev/vZj3XVM/2Y50gPJ5cTg?=
 =?us-ascii?Q?GbPn+LNkz4gcyPo+kWY5Rv2wVLiMD8ICfdDyfHILs11XBzP96FRVB6kYQ2Ex?=
 =?us-ascii?Q?Tm7i2VCtnpJKsb/wMoY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?j133Y/ivh7xR6Ox3YVY3C+unxpnts3MGdnH1PSufvlYhjFFnlCrVBIeZRRGR?=
 =?us-ascii?Q?R2YzpkltwHS3XkzjizjipYbND36wPHSvxw0zOsssDvGvEWnj53CzyT5I5pTC?=
 =?us-ascii?Q?JJWvW1rGvpsVCGu9nrxdlhf7xlR+94VTOl81DhKagXoI/d5MNlWfpgZVgNKt?=
 =?us-ascii?Q?/OnK0kassgxkdqTk9/VIO7ccbgP4SHZRA4FKhehEoaZoYmnjZLojPhmR6Xmu?=
 =?us-ascii?Q?OQQ1uU0pJ6X1uCVOWTamvV0rTt/18aQrV0wlOA3VuiDz60PLryOpRBzLL1Kr?=
 =?us-ascii?Q?8kzE0LvcocvctqHAyViXO71hPfJW+i8ksAGNWAO/XCFPcXdFxxnKzPlqQOCk?=
 =?us-ascii?Q?8Zrml+BKt80832Rji1rW5BTlFB4hWUt3rcezmvnMXFIDYWesmUbleqjfrC49?=
 =?us-ascii?Q?HuFnA8RWTYL7hvrY+zmI45x19afBnHZxSfj4LwEqGbr3nO3T2ymA/xIUeQit?=
 =?us-ascii?Q?DlWG7rU84enMaBINoujLhlNjWSyu7iotnjO+VsOZt5qiIOwgSt+cBgaFcGLi?=
 =?us-ascii?Q?8rVTzQWmTwz2GFVyzJveTSh/4AVnmzt91FBcF9DCZyX5qi4FUVOsnS5IAh28?=
 =?us-ascii?Q?jOCdxEVecaMmtVs2KY3FnFtegWD9mp4GKnBRzex76BPAmJy0VlPePz2pXk+p?=
 =?us-ascii?Q?EZWk36glYa1TJZlfbFka12MFYw05n22ViLI0m2tS5BEmdaIJO1qzMi6ulLc1?=
 =?us-ascii?Q?LGgRRN6HKveNSYjF6XgDI6MrPN8ngv7sfoKQKNK2nFfMakAqf6fYnuBNoe0s?=
 =?us-ascii?Q?W0An1ITpU3Q5Ml+JyTQJITQvTFjsJnGDahl2M7re2fr22Luy/JblsgFGKIUO?=
 =?us-ascii?Q?oQS1HafwGDKHUugLw1OJU7yy16zB4k7PqgGJOqmmTvMdp/hqM99gYoMiOpPg?=
 =?us-ascii?Q?ilTDSf9eXkbRNcWJu3NuYvrEJFX0ullndyhykPTD/qKhHKUzTzAV6oXpFKoQ?=
 =?us-ascii?Q?XSsdHDg45H1ARwaSwADPnwQKQMbNO7arVaJfZ+pasXIkzXGuhsoOBkZq8+0M?=
 =?us-ascii?Q?6bmyOHo+6q3ZWwiwWgIStmHWDX+/ukwBgA/f0IEXf3Zb43vKe7OTltB9QFk8?=
 =?us-ascii?Q?21QwQ5+Ogmy4aqdZPCpCq4EI6Xe81Ip5wh3FXhAqT4uOden8eb+GviPA83/K?=
 =?us-ascii?Q?Wofac2aHKQpPShiei2idI3a3LbWCbNZvLJg9NVTCjymuj9N7fkosPYauE2xb?=
 =?us-ascii?Q?zSqYxak7KJmCyxDu0MQ0x19S3psc+4xlAiwwS93uW3XLyItL5jHwNJWXEPJd?=
 =?us-ascii?Q?m2oqcLiejEBfZ01Ohi0qUNacfyvIX50ENsMcSYJ2I6AdR+ggr+wzK9/mTz1I?=
 =?us-ascii?Q?zBwNN4l5Sf7Cy6B+sihwP2iwsNLL0dizYaz0Qu9+m/Ecy5K7BkiuS827FS+j?=
 =?us-ascii?Q?lMd3XBn9PVomMWXkFJLKzTu0zkFyyt/jQxyVqAk5molCO+5JXv1FYJcAC6w9?=
 =?us-ascii?Q?Vj2p0VPpitmD0xMLXlN7kNMbJ9KPP0EXrHQq2OYPvw8HrIg4HRJOMYFyUOIj?=
 =?us-ascii?Q?BpJF1vnDCHSLvEwheuHEVxyjGecyvCyqIjW3wObu2YRlnh91BmVL01zOqoYP?=
 =?us-ascii?Q?fNH2+aU2pkJST5x1FFpzsrnUDknv1m+gaKvJg7Om/EwN8Jj/0FPeZU1Jwgra?=
 =?us-ascii?Q?JbAsmTO9ynKyYbi2WzIKdSnwWX6ZEBExGygzCmuG7SRm8UKTH3V5dir2DUBB?=
 =?us-ascii?Q?3LLOOq/OvBJnIUWUA+vyesxDqWFZvDmlBAWDrEoiWoTDDnu4EriCyMl+HXZ1?=
 =?us-ascii?Q?VCRTykUSKA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ffae161e-80bf-42cd-3bcb-08de6edc90a2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2026 10:57:53.4441 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9GsxsXohL80mjJqUypCeNe+ViY8gBvywQBmMiQ9wL1eONl9urhXQdy2icKnjVoBHX14xL/OiM9BloP/4e+oxfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4771
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AEE8E155B60
X-Rspamd-Action: no action

Handle modeset WW mutex lock failures due to contention properly.
Return -EDEADLK to the caller instead of attempting to lock the same
mutex again in a subsequent joiner candidate iteration, where the WW
mutex is already in a contended state.

This fixes the following warning:

WARNING: drivers/gpu/drm/drm_modeset_lock.c:298 at modeset_lock+0x1c0/0x210

triggered by ctx->contended.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Fixes: 1f1e3e5c65f6d ("drm/i915/dp: Rework pipe joiner logic in compute_config")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 454e6144ee4e2..025e906b63a97 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2969,7 +2969,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 
 		ret = intel_dp_compute_link_for_joined_pipes(encoder, crtc_state, conn_state,
 							     respect_downstream_limits);
-		if (ret == 0)
+		if (ret == 0 || ret == -EDEADLK)
 			break;
 	}
 
-- 
2.49.1

