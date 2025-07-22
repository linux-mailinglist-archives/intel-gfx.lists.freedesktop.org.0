Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EC6B0D921
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 14:14:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99D6E10E66F;
	Tue, 22 Jul 2025 12:14:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M99UJuL8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 269B510E114;
 Tue, 22 Jul 2025 12:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753186489; x=1784722489;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=0ldEj5smsODl6cg3SXwSB/W4apsqVq4KvXaZaeGYSPM=;
 b=M99UJuL8iTA6wcZnaVwEQ8pNmu50eLcEHef9GAKfI0CidkPMHHoAg0am
 TCAoxkpsiY3u02suSvziIQhtORkP8bZVCIy8I7L5VASCpOC03ZnzEDNAf
 uy8btAbnZfJG5OsGukH4RhRfVbp9eidXTz/wPFlq0kwXGraf+qFsQzpWw
 AfFPPftJAlSXqzJJTMYgjANqA1F/GABHy+KQcyJk3GHm4MraKem2K1a5z
 xlEoPOSFrUgoS9KiHvG7wz46T+Z5tVPgyNvM+PfFz/+OpZx8CLfFxTLer
 5EKqAFxCHPHNfPndCTyRfAhAgoLA0pOyaAvnhQQQM8rbhrdd/oDSuDZJR w==;
X-CSE-ConnectionGUID: 5s339enQSV67JKr1ja2tSg==
X-CSE-MsgGUID: ZAPtHoErQ8iaGbCLNjWMYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="55280328"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55280328"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:14:49 -0700
X-CSE-ConnectionGUID: hvL1Va3xRtmk3GpadK/ezA==
X-CSE-MsgGUID: cyTc4n/0SC29Gvq4Suz19Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="196205859"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:14:49 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 05:14:48 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 05:14:48 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.40) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 05:14:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YadCg9chGlGFMn37pZUhTXLPZfuijm8FYWtXMyZSCX55gekI1fmQu3nPJdsPAEbFCsblwtcArxnFOjcDA7JfydQ9MusEnSH7V4pVAcw43S8p7PK7SDlH5kHYIWXqX+XauxMHCGpXvg2q51CIe2u6ECl83VDGItL7GPOEYumxRNf32fXmBtoR19U7cbnzgiX7iNXijXhg9jvNwJlJvbfogvqmPnjuHeHRdeHa8na1/1aGhN+IQOKaQcnNFrU9c1lhfsX+nOS7AFjGnPvVyFnDPpqrUwpZ6UYC8i+oul3MntH62nD2waw3NRw+RN3aoPJgQUJvBgtvwT5B/WCAkBDytg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ldEj5smsODl6cg3SXwSB/W4apsqVq4KvXaZaeGYSPM=;
 b=nSM25LJY6g09HtvVNitTJ2+1SygFRG/NilKAuQvjZv4Ya476qDwf6a7UfwDgxgtAK3XLpz72nvEOF3cWO6LN8CuaACRDRhGJe/UNQmSCUDD3tXqrRs8MlktbUVbQB4Or0EwdQmPvkxzHaGg2IbWFgPAjwwuqEIvZf8oYVeYiyn63LLH10w1pzwbBQ6tpr2uMqUlMheLCay51VbFJ/HxqIfuZ6DxHXTJhGSONB68ZdybqBJM14b4gZ/BgeoYHTMztL2tL8LfoG1C81UR2uI3qBZB4YGGt+Vqhpj+Lo/5PsWAvCv/aczdM2Ia+/WilnQpniCrQIaX/f/tYzuUnCgN5RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH3PPFD9B78DE02.namprd11.prod.outlook.com (2603:10b6:518:1::d53) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.21; Tue, 22 Jul
 2025 12:14:45 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8964.019; Tue, 22 Jul 2025
 12:14:44 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Sousa, 
 Gustavo" <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 4/4] drm/i915/display: Set C10_VDR_CTRL_MSGBUS_ACCESS
 before phy reg read
Thread-Topic: [PATCH v2 4/4] drm/i915/display: Set C10_VDR_CTRL_MSGBUS_ACCESS
 before phy reg read
Thread-Index: AQHb+vFVW3Tc2tZMfEKcE2pgBDjJwrQ+DJKAgAAB9IA=
Date: Tue, 22 Jul 2025 12:14:44 +0000
Message-ID: <3365aae06a37e2e5b6b251dcb76184fb85b530d3.camel@intel.com>
References: <20250722101317.1728499-1-jouni.hogander@intel.com>
 <20250722101317.1728499-5-jouni.hogander@intel.com>
 <175318606336.16862.4004451258537779671@intel.com>
In-Reply-To: <175318606336.16862.4004451258537779671@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH3PPFD9B78DE02:EE_
x-ms-office365-filtering-correlation-id: 0d747604-7fc2-4b99-5d45-08ddc9195844
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ajJtR3FadjM5N3N3NUNhQjliMllFNGwrTGlib25iOVhPS3BiNVZ5elJvQXpE?=
 =?utf-8?B?UnVMMyt5a3pNcklYV2YyVldhRzR6a3lzZ3UvMlRtRVliNUdMZktwRlJtS0do?=
 =?utf-8?B?R1hmVmk1U0hUNm90VG12Y2JxVVRKTXJUMWxhRUdOWGczYXMwdUpzUG9BR1RW?=
 =?utf-8?B?d0NQWnV6QXJqL1ZId2pPUlpWWmpTRUZUZlIvNWQ2THphOU9HOGR2UEVtTTlq?=
 =?utf-8?B?eXlhZm4xZU5Uc2tzQ1FxdlRYSk04N2hZNi9VZGxFdVJvWU56SmcyQVpsNnFy?=
 =?utf-8?B?ekdXNWYzVVl3YkErTnhGZlpnSmRGUlA3TzBiL3IrOWFZQVU0dWcrV1MyQlk2?=
 =?utf-8?B?M2hxZFVYcDZaNWpKODZGOUQ2M2hSd0krTlNhTG9DQzNKKzBGcmhMNFRYaElS?=
 =?utf-8?B?a2krZDZzaU82eWo4M1BhRnZ5Rk5RWWlNSlpXZHhHaDlvU256ZzhOVHZYSW85?=
 =?utf-8?B?Z3FOR0I0VXRXcE5nR1pzcUQwOVVUcHd3bTlLTEdmdFhNSmRVV2w0dEJtdjNE?=
 =?utf-8?B?T0o1Mm5nRHpEZGFEb0xjUHFzZXhLTmtkNFFMQzB0Qk04eDNLVENmL1d5QXUv?=
 =?utf-8?B?Vi8rYk1abzBxdGowZ3VBLzJ6MTNLWDJtWFovU21jT3hWWnJRNmJjeVFtOHhW?=
 =?utf-8?B?SUpESTlmT1FpOTN5eWZ6Y0FCaEV4UXFzOTFRL2ZlWjV6VTJ5ZmtOWnNOMUt5?=
 =?utf-8?B?RkF6S0J3aTg3dXlmVVFKdjkrTjJkcksxbmsvNUdkdkp4MzNOL2FveG5rZDIx?=
 =?utf-8?B?SHdISkJTeDNMMkpmL1ExbEllT0htT2pKNytZMC91THptek4vSjJIYXFEY0Iz?=
 =?utf-8?B?eXg3QURZNE9vVjRjR1Vhc0MyMHd5SmI3TTNqMyt0S0huL1RJR2piZE9maklq?=
 =?utf-8?B?Q24zL3hiTFFJOFNDd0VlWWFjYTJCK1gwdzRhV3FFSFh3QzhHTS9Ed3QyYk5G?=
 =?utf-8?B?Zm5tS2xreUFFV0k3SmFsVFozemZiT0sxWEN0RVJWaUxqZWdoTDkzanJGeEVh?=
 =?utf-8?B?ZGxzMFM2eDFpT1RLV0M1cjZWbDg5dDJ6dlpUd1grTTVNMlpTcjQyU3FRWExE?=
 =?utf-8?B?RjlRdTlJLzR4aGJzTm42NkZpNkt1ZXltV2pNczZibzRwM1NSVW5YdXI5cDJF?=
 =?utf-8?B?VDd1MmIrSjMwV2M4OEJiaTBhQlJ6S3NCTHpxN0F5dDAvZCtaemx5b284dUVu?=
 =?utf-8?B?QkFkcDdqWUJZcW96OTRtdnRoa0pzWFpBOUdMZStNTnRkU24wK1loK2Z0Tjk4?=
 =?utf-8?B?S1V0bkxHdmJ6cEpkRkFvdlZHQVNnQmxqcW9EN29FNU9DVUJFM3VCMTBIME1C?=
 =?utf-8?B?UzBNa0VyU3F3TytmWjdkcjBGSHJmdkF1QUdvaE52T2F0V1pCRzZQUmlnQ0RY?=
 =?utf-8?B?Y1RZSnV2TExLZ2Fyem5Fam1SME15b2tBODhTazRTd25RZ1J2UEhVY3pDRkFL?=
 =?utf-8?B?dmxPcGNweWE2SEhJVTYyNE4xRFFOK0p5VG9QblBIUUlScmxkN1BIdm01N0lP?=
 =?utf-8?B?MlJrQmFORXE3K0JnaUNFNjJ2NSt3R3hvZXFFUzExQ2F2WHVDV3dxV2ZSZkUz?=
 =?utf-8?B?WWRvaWdHSnQ2UjFLamxXbUFOS211YTJKdmhQSHlLalQ4TkZqVGppaE5oUWh3?=
 =?utf-8?B?Tm1JbzYxUERNTkJWNE96cjNVeG5MMlVhQ3lpSHgyVXh3MGkyVVRHNmlQTEZ0?=
 =?utf-8?B?WjZZbVNCeXFTL1FUeFhBOWlsUm1KZFIrVml4Y2xrdFhlekJsYndRNkw4eDhl?=
 =?utf-8?B?aFBxcGpvY0ppZVVkU201bWRGd3MxVHRXNzBHMCtoM0ZqNm9nNTAxWVdEalFR?=
 =?utf-8?B?V0g2V3JHMDlqYi9DOUJxb1BtNVRWS29JY0F0SUxrL1ZMWWZpd3dMN0llUWEx?=
 =?utf-8?B?WjU3SmdBazV0eC9WRExSa2FmTTRiSUJ1dlRqZ3hSckhzTHRRYjJPZmhrNjB2?=
 =?utf-8?B?Q2hVQ3hrejBIVXJJekNVOTZ5ZXRqNDgvTk1WQVNpZXFPUk5pRmwyUVZDMmdy?=
 =?utf-8?B?cGdLNEZNekR3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eStYVG83dSsvcVYzU0E5VzhndVlmTzFoaE1GNFFyQlZDbll4b21vVHc1ZXRW?=
 =?utf-8?B?Z3BucCsyVUw2QXIxRTZpVWFSUFZlY0JMcHdTYWhodWVBSUU0OWdhaG1odTFW?=
 =?utf-8?B?dEpabVFJR1pKRHd6OVVLU1FGbWI3cjd2VW9lSXVXbkdqNFBPY0FmRnFSb2JI?=
 =?utf-8?B?bHN5bmIya044NFdQQ2hZSitLK0lkRmpZV1UzQ2RuTVI0RlFTbUJBNW5oV3lS?=
 =?utf-8?B?TFdvM25jSkQ1cHZFdkdsZmlLYWpURTc5anRxT2hvT0U3Vkh3ZnpCeU5FdmtS?=
 =?utf-8?B?QVpOTm5ZOWtXd1g4OHFIemJsayt3SURjMkY5Ny9vZjliNU5Lcitwb3RMMmg0?=
 =?utf-8?B?YlpmUnBSMUplSlFyUWdUSWJPeHNDa3l4QklWcU5qY0ZHbGEzbXV2U3dKck0y?=
 =?utf-8?B?ampBKzIwNm9mdG1BMndjY21Yd01jcGdFd0t5Sm1Tc2l3cE1GVHRHT2JQQUVY?=
 =?utf-8?B?NFpESFd6cEI3L3JMYXdqamFybVp6dXEzbi85bi9wM2p1TDlkbXNhYTlwaW15?=
 =?utf-8?B?RTlQSWFPa2NmSUpweFYxdGRMektkOVljclg2Z2RIbUNNV2tYNWJzNXRKaUV5?=
 =?utf-8?B?NExjQUsrTEI0NkpOSUpxOTNiNklnU05VbEFCRlFiZnE1UVRKSmxjMWUrQ3JB?=
 =?utf-8?B?WFVJV2x1bGhLY2lTc2NmK1htNlFRa2tNbVBqbUU2WDh4aWtvdENvQW1FQkxk?=
 =?utf-8?B?YkU2TEY2OUN3MUtKSkJZUFdJbm9icEkxa01wRkM0VlBhQ0JwNVlWd2dqSmhH?=
 =?utf-8?B?SFQyQjd0a1NQVTlTbXgxUmdWTHJGbTdTSkpqUUhSaHlWVG9sWVRHcnpqSVlQ?=
 =?utf-8?B?L0taSWd6QXdsZVc2QUYrVW10Mk1DbEUzeVk1cVVXSUNIZzVBSmhDbmhpdS9N?=
 =?utf-8?B?L1VyS1RCT25EYWtaZllvRmRDbXMza09tdTFZSkhCZVpBNkFMaVdzRUxIajRC?=
 =?utf-8?B?dWw5bnpNOVhBNThCdjJOcmlnR0lpb2JjdUlkYitGVWI5UlhZYytKeXNyM1da?=
 =?utf-8?B?T1N1bVhMcElsZEVWTDF2cW5UY3doRXZreDFXR05qVEtaUzRUMzNPODFYSFFU?=
 =?utf-8?B?cE9WZGdLYWF0bU4yOERVT2gwSzNVRnBoa2ZiSC9ERkEwMEc4N2hWYUJ5L0dX?=
 =?utf-8?B?b2p3U0tES0NEZVFwdUVaZjF1WTZYUWUvdjZJME03QWVzVC9PVDJERVJLRjJO?=
 =?utf-8?B?RDlCRlFWK1hLUk9NRGJIMjA1VkZUQ1dUVHJmVnJXTzZRSzBscnpndlFwUGV2?=
 =?utf-8?B?UFdjMHNsV0hlQVlYNXlRbDU2YTlzM005QmhwNDJ0eHlBSllTbWM0WG9tUzJx?=
 =?utf-8?B?aWp6UmxjQ2t5czBvZlRWUDNjZHI0UVM5VVJHNGFtMG5GaDNEaE1DdGJ5NTQz?=
 =?utf-8?B?MFUrcUhzc080U0xPeFdqWTNPSi9wdXZpNzRwWjRxRy81YU10TmlldWthd1BG?=
 =?utf-8?B?NXBXdXJnVzhKTzJqT0VDb2s2T2JLVGh2SDlPenFFZ2RPVnJIR3pwVi9UcWgv?=
 =?utf-8?B?Wlhob3htQkxLM0lPeUQ5OC9GNStmMlRydG1wQUtzUTdyMzNSSjd5b1lnUHk4?=
 =?utf-8?B?N2taQ2VnUjJ1eWgyL01VcnVWTTltYjF6Mk9UMm1TNXhDWit0T0hBOUt2TFpB?=
 =?utf-8?B?VjVOWnh3V0U5Vlh6V1E0bWFja3lwTFNXVEp3UWZ6Z0Uxb1NYVTlheVhIS0pL?=
 =?utf-8?B?VDRXR0owRVg3WHVjdldtbHRScjVHaFh1UEk3QjhHOXd6ZkJMb3d0T29ncHEz?=
 =?utf-8?B?TzJvSzZzNzd3NGZJWWRxUXNNaHZGMGk3L25qOERPS1NEdlBmTnk0dUpnSGVT?=
 =?utf-8?B?SWRwd1NDQ2hDQXhhQi9Qc2RkVXRGaFZ3eTUrSEhWdTA5RXl2aVFTa3RpdXJ0?=
 =?utf-8?B?STlSUXRIVURNRytTQWl5aUt1V3RKZk1YcTJQTFgrYmNNWnNXUEN1dkFOdE5D?=
 =?utf-8?B?S1FQQ1JFakZLam1BWnVQcWVhSWhuNGg5K2ZUL2h0Q3c1QUlMRmhEUk9xVWdx?=
 =?utf-8?B?dnRLcnhSUHJ0K29uTW0rOW9XYTZ3ZDBpbDM1UEx1TzVsZ1IwOTB1OGIxQVZH?=
 =?utf-8?B?VHJVMEwwY3pqL1d6SmptSDI2RFk5bGdsM1JYblB2RTF4TzNwL1ZDczZiQWcx?=
 =?utf-8?B?czYxbWh4UE9lU0dVeFZVcCt4UVphYmN0NXhvdjJOYnRSMHV2R0IrQkdKMzdu?=
 =?utf-8?B?a0FqMUlOQnpZdzJDWWtvMHNzS04rQkUyNnBIZnA2YmIrb2pLVXVqSEs5ZjZy?=
 =?utf-8?B?K01wNXNDNng2ZVE4YlBiODlHUFN3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0E7BF92B5F15494D9BE0EDCE97128C84@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d747604-7fc2-4b99-5d45-08ddc9195844
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2025 12:14:44.8239 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AutgdP0JJEf1pJnMirG0v0x+EvOt5rjCD4A+jzUxIaiXXdAMSxovYisonkR5Js3+3yUvY+pZ95A3T3WgQn133BD9IH49YMAiTOBFlegz/EU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFD9B78DE02
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

T24gVHVlLCAyMDI1LTA3LTIyIGF0IDA5OjA3IC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOgo+
IFF1b3RpbmcgSm91bmkgSMO2Z2FuZGVyICgyMDI1LTA3LTIyIDA3OjEzOjE3LTAzOjAwKQo+ID4g
QWNjb3JkaW5nIHRvIEMxMCBWRFIgUmVnaXN0ZXIgcHJvZ3JhbW1pbmcgc2VxdWVuY2Ugd2UgbmVl
ZCBzZXQKPiA+IEMxMF9WRFJfQ1RSTF9NU0dCVVNfQUNDRVNTIGJlZm9yZSBhY2Nlc3NpbmcgUEhZ
IGludGVybmFsIHJlZ2lzdGVycwo+ID4gZnJvbQo+ID4gTXNnQnVzLgo+ID4gCj4gPiBGaXhlczog
OWRjNjE5NjgwZGU0ICgiZHJtL2k5MTUvZGlzcGxheTogQWRkIGZ1bmN0aW9uIHRvIGNvbmZpZ3Vy
ZQo+ID4gTEZQUyBzZW5kaW5nIikKPiA+IFN1Z2dlc3RlZC1ieTogR3VzdGF2byBTb3VzYSA8Z3Vz
dGF2by5zb3VzYUBpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgfCA1ICsrKysrCj4gPiAxIGZpbGUgY2hhbmdlZCwg
NSBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2N4MF9waHkuYwo+ID4gaW5kZXggYTIwMzkzN2Q2NmRiLi44ODZlZmY4NzRjYjcg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9w
aHkuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5
LmMKPiA+IEBAIC0zMjU4LDYgKzMyNTgsMTEgQEAgdm9pZCBpbnRlbF9sbmxfbWFjX3RyYW5zbWl0
X2xmcHMoc3RydWN0Cj4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGlmICghKG93bmVkX2xhbmVfbWFzayAmIGxhbmVfbWFzaykpCj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnRpbnVl
Owo+ID4gCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChpbnRlbF9lbmNv
ZGVyX2lzX2MxMHBoeShlbmNvZGVyKSkKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2N4MF9ybXcoZW5jb2RlciwgbGFuZV9tYXNrLAo+ID4g
UEhZX0MxMF9WRFJfQ09OVFJPTCgxKSwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwLAo+ID4gQzEw
X1ZEUl9DVFJMX01TR0JVU19BQ0NFU1MsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTUJfV1JJVEVf
Q09NTUlUVEVEKTsKPiAKPiBUaGlzIGNvdWxkIGJlIG1vdmVkIHRvIGJlIGRvbmUganVzdCBvbmNl
LCBiZWZvcmUgdGhlIGxvb3AsIHJlcGxhY2luZwo+IGxhbmVfbWFzayB3aXRoIG93bmVkX2xhbmVf
bWFzaywgbm8/CgpZZXMsIHlvdSBhcmUgcmlnaHQgb24gdGhpcy4gSSB3aWxsIG1ha2UgdGhlIGNo
YW5nZSBhbmQgcmVzZW5kLiBJIHdpbGwKYWxzbyBhZGQgdGhlIEJzcGVjIHJlZmVyZW5jZS4KCkJS
LAoKSm91bmkgSMO2Z2FuZGVyCgo+IAo+IC0tCj4gR3VzdGF2byBTb3VzYQo+IAo+ID4gKwo+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2N4MF9ybXcoZW5jb2RlciwgbGFu
ZV9tYXNrLAo+ID4gUEhZX0NNTjFfQ09OVFJPTCh0eCwgMCksCj4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIENPTlRST0wwX01BQ19U
UkFOU01JVF9MRlBTLAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBDT05UUk9MMF9NQUNfVFJBTlNNSVRfTEZQUywKPiA+IE1CX1dS
SVRFX0NPTU1JVFRFRCk7Cj4gPiAtLSAKPiA+IDIuNDMuMAo+ID4gCgo=
