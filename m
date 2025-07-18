Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CDEB0A0A4
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 12:28:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C68FB10E94C;
	Fri, 18 Jul 2025 10:28:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zm7lEW0G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC74B10E94B
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 10:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752834500; x=1784370500;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Eo+8EOUQiZ8jjOYrpXUxQlk+s7sWCdQIv4Oq6/RFyFM=;
 b=Zm7lEW0GhpRdRr7hA63hhYP+TeofSiI+BmQTYA83UNFWUiEfghaHoGGj
 cPYZbLVcfBR6zHu86jo2wQMX4pellHeVYm+4UJix0P3fpBS2XuAWgOO0E
 RvW3kQyJ/NtjM4ZoLp9KssqUz2o4ke1euIbl6sSfYApmfj3NVuY2D5vrb
 piOaiSioyZ4dwdbHWlNleOqaIBpJeSI9q8lz3QSHz8Brk1ciOI4CvELGq
 L1TOAWg5pDGLj/Gb06Np3m53bvkwiVTQ5l54Sjf9T0c5DTsuXjDvXd4ar
 u+B9sh3FN0lChdUCuFoUFnb8JuhX5NB8coMbz6Uv0q6OJJCzwDJ8jcnte g==;
X-CSE-ConnectionGUID: Jq8qwzR6TUy31bDiP6pcxQ==
X-CSE-MsgGUID: O7EMguQAS8WvhBmc4DHMKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="66191967"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="66191967"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 03:28:20 -0700
X-CSE-ConnectionGUID: kKJ5z4evSRuJZfiQ/Ky68A==
X-CSE-MsgGUID: H9z3bQ22Tou3xApqcM++oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="195155471"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 03:28:20 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 03:28:19 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 03:28:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.56)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 03:28:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q/83iB82qvCASa/LJUu3KiOHXhAejsOd+bz8UGzx5diTj7t9KtgzPsX0TORkVV0wmSK8yzOzHGJaUFYIuHimSFSg7afFNvLyqHPeicsXLF/AuVL609PqaT7G0qnX6TKT9XZM60t1l6nrNqAGX9wCr9xkNRBhcKMoBJ5Y0z176TzrPcI+ebqSdUxaIW5IYLr8Kl9w+7aRzoyHTq6v9p/rIgTClBMBgNJeMA+Qu7UoCfhIIpGWYZQ2oEd0yQvAEflwp7F5of+Hh7EYKYex4fOqAgdGrF9hMzH2i+MmfCO35P2+kgPTbjiVFWcRGZKQip9IFqmAiiAcwp/dptiXKKyuJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=38zTPpycVovoaKo2upzxBgRUo+b3rFnXwbvoDCYlsLE=;
 b=DiLS4GfXZTjDAI6v5Ve6KRW26965uuvxbFF/qy5j8keArn8iDYt2F++DhD1HOm95BDKqQifppy8707K4OlK2EpPF6ttaaKKtCLpVIcIoFAH9uTANiC58l2IbrNA1gtJPmluF0OcdSDWs3SmCDMn0PXE9/KP4QinwPjRPDeS8foB6Nb8rH72eK+gH60H/90vOCeYjuHGKOz1ziULilha7IdPZ4ita9K+usk0pBCAyRXIYihOVyogPQ9XRAmC+BqWh8ZxSvOXbJAt/c45yJ3ky6OsPm3HRq0oxQKfc8au4++iHdJYyQSPgL5n6GGpnDdi2vN4u6I4NkRtfONYtKnnJHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB7538.namprd11.prod.outlook.com (2603:10b6:806:32b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Fri, 18 Jul
 2025 10:28:17 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Fri, 18 Jul 2025
 10:28:17 +0000
Date: Fri, 18 Jul 2025 10:28:11 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>, <sebastian.brzezinka@intel.com>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH v3 2/4] drm/i915: Replaced hardcoded value 4095 with
 PAGE_SIZE - 1
Message-ID: <20250718102752.684975-3-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: VI1PR09CA0153.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::37) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB7538:EE_
X-MS-Office365-Filtering-Correlation-Id: a3de745a-2fe4-4740-4809-08ddc5e5cf09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dkVtWm01U1J0VFdud0dZdFh3WVd3MTk5TC9WNnBaYTVhOVBJbnNMRzllUUdB?=
 =?utf-8?B?WEoxWmtxTHIwR1B6RjIzT3B6NldlZWFxTnFuMVJzQkcva2JtbzNSbHdXeVp0?=
 =?utf-8?B?d2lSYStueTlXUHowRlpSQ3V1SFlMMDhua3BsZ1JoUUZYZ1ZJSlVNbU9TdmhU?=
 =?utf-8?B?cVFxWGRDZWR0RExSUXRPdWdYcEwxeE9MUXpDL3JYWEpnV0V3a1RSYkxLUlY2?=
 =?utf-8?B?OE0rV2RWL0dscVJlYUtHYU0rNGVwb2ptUlVKWVczMEFJMHRuV0l0ZjFtT3Fs?=
 =?utf-8?B?c1BkaDNsZ1BsQktyRXR0NWF1NDZkZFMyQzltZnV3TXBjWTZzemNYYVpMcjBz?=
 =?utf-8?B?enNGYmFBaTFjdVAwTnBjVGVTZVpkaVEzUExkckk3SEtjSWM0bENPZXN6OU5i?=
 =?utf-8?B?WXBNOHV5UWZud2ppcUVMUUhYZmpTbERvY2YyOGNPU1R0M29BTHFQdTJMVDhj?=
 =?utf-8?B?ZEZGUmxsTTVZeVdrdUNXME4wei93QXhGUjhRS1RENmR2b3QyUjRudXpLWjZO?=
 =?utf-8?B?a2dlb3pHdFl1YnlQL3RNRkRqczk3RjZQVzgvRVE4bU5hNUhXQ2hZem5tOGVS?=
 =?utf-8?B?TkY2RzFwRkNUWUMvNXhOS3JWZjVHV2tRdTh3NXBxSmVKQnJlbUtQazBUTkw1?=
 =?utf-8?B?TGkySWNwaWE4cVZQMlBHYXErS2NlNVpoYmIvSVdYTlNMOWlzRWp5SHF5SXA1?=
 =?utf-8?B?b0hMc0VwYUhzbUZWczZjR0syZ1hmNThpTGd4T2dsUC9pWVBjWjdXYXFGRHFF?=
 =?utf-8?B?aWcrZk5MSFhwM1dtQWtSYm8rcGhXSW9RSEFjN0xpZWJMc2ZNdVlvUXVvbkY2?=
 =?utf-8?B?eU4ydUIzQXg1b1JCM242T0VjRkVDWUpWa3FhQVh1ZFJValRBRmgza3FjK0Vp?=
 =?utf-8?B?SlNZbkxVRkxTT2ozZVM0UWN4Ymh6NW9RTlNHbzZzUXB1YjR6cVFEL0YrTlh1?=
 =?utf-8?B?eGZuZUhQOEFPVEs4TDRmazlJS3hINmVTdDE2eW8rY0hPK2pBdHBKWE1hZ0dr?=
 =?utf-8?B?bHZEK1VDSERNbFVhdFRDRysrTVpRUmVoK2MwaityWlZpdjZVVUFNRGZ6NHhZ?=
 =?utf-8?B?YVdQZDVzeWgvUkRpaFFjN1hwV251QnRaK05EL2pFNi8wU243RTc5NDNZTDhv?=
 =?utf-8?B?a0w0NWQwN0lTeEkwL1ExNG9VNC9CY3NvelZIVW13bERNa2xIc3lTejNXSWRE?=
 =?utf-8?B?dTJGbExSeEdJY3k0TSs1LzZYaTBMZ0wwcHc1cTFocXNkS0x1dG5ENXpnMzZi?=
 =?utf-8?B?YmNrWlYrcFYzT0ZBV1lZdU53Q2lCYlE2b00vYzVqUDdYQTJORlE5ZVl4UFhM?=
 =?utf-8?B?b0x6L1BxanhZaTVld3k5K3RGRE5JeFEzVkxDdU4yRzFHcnFMbkJOK1VzbnNW?=
 =?utf-8?B?Yndkb0VLNEEvTGk4MERKSUpTdTlhTWk5OFJ6QXg2b0ZDNVpQdlNvd2dWNXd5?=
 =?utf-8?B?eUZSbk5aWDk5VUlRNGV6ZkZQRVl2VmUxOVBpYzNOaVBHSTE5bE9xd0tvaDY5?=
 =?utf-8?B?bWd4UFFRTm12aEJ1Zm1RUWpPMkZBM2EvaTlwVjNwU3QrU2tIMURxWEVzdnpa?=
 =?utf-8?B?S25Id3IwaVRHWGVWNGRIczg5eGIwQWhUUjlFRFJvcm1SZUNWeDFxaDFSbVo0?=
 =?utf-8?B?WGFZUmZjTkl3WG4vbExjcjZQYVczK01TcG5mODFSTnpHMEIwTTBOTlBxTW5Q?=
 =?utf-8?B?Zm1wK2hDNDVjMmRwZGxSalJIb1VySVUwczJPZkV1N0Zpam5sNC9tem1wcE1B?=
 =?utf-8?B?Z2U3ZXZJOGJpSnNsY25hYTg0eE9DdUZmTTJYcEZaRTBWbFFGeVR3WmVJY2tz?=
 =?utf-8?B?UGllQXpkanI0MXBXMDByamIzVjhXZXJ2UXBiNENNaUlWK2hKbDlLMXQ3d091?=
 =?utf-8?B?dmNqWm8xMVhZYVVMQ3VoNTBXRW5jOEtyYTRJanZpZDM5SzJsNVYxN25xcGlW?=
 =?utf-8?Q?rlA7EsLPLXY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3dTRlRseHhhdy8vSE15YXVyNUordUhhdjFuby91aE9pRDdTN0szM0NGcldn?=
 =?utf-8?B?SmEveTVnMlRlVkRUazI0SGM3OFY1VGhTSnhCVjZDc0lJNERVTEFpWDhGcklh?=
 =?utf-8?B?aG10ek1kYmVBWjFERGYxbHpMNmkvZUkzekkyM1RLZkQxN0RwSDl5eDRXUmFo?=
 =?utf-8?B?YzdNSlFoTFJIb3dVWFZ3OEpjd0FzNDhaSzVMekxFNFZLelc5VXlFbFNFVEhK?=
 =?utf-8?B?SWExWW1OVGxzamRHZXNubG1QQm16Rk9TOHJBbVNDdG1oTW92RFl1cyt5L0dp?=
 =?utf-8?B?Kyt3dWhNalE3ckUzeCs2U0JJRkZ2T2wvbVlEbm5lZnhMdkFTUlJXK0h3bWlG?=
 =?utf-8?B?bGdrSlZwS0d6YzFaMmM0QjZiUU9PU05ISUIyUXRuck5DZm9TakxCMkdwSDhJ?=
 =?utf-8?B?ZnlaeWt5NU5ZMjdVNVlFV2MzbVpFdWxHUXh0d0VKcjZNMm1XVzduM09jWE5T?=
 =?utf-8?B?OWR6dUFyOXgrS2cxVEZ3K2ZnK05kM1JlSTcyNXFTL2RvblRkRWdwY3ZhdWVW?=
 =?utf-8?B?VHEweHJjR3k2UndETTF4T1h6elNYUTVqWlEvLzVYZjltcFpTT2RZRmF1Y1hU?=
 =?utf-8?B?K0FUV2EvS3NCZENWOVhwR1hlY21XeUprWWY3aEwxSTJ2bjQ2RitaaCtEc3Vp?=
 =?utf-8?B?S3VDOU5WaVJCenRpOTdsbFBZd1pCcXVXeVZ6d1NsLzhweS9EWjZ1VGpDM0pU?=
 =?utf-8?B?ODRBMEVQTGtoMCtSK2V3cTNXS0lWVU5WQU1TRTNIZmN3dUo1L1JaMTU4ampL?=
 =?utf-8?B?TGVDU25QWVJJYmdFVDhjcVVqRXBoN0taT0wxNDZhK2daY1NkLzlCTE0ycEVZ?=
 =?utf-8?B?UEdpMW16eEF2QUxwME9uSlFQS1A2YUQ2VTR5YUhwVWJVV1E5d1l2ZklxMG12?=
 =?utf-8?B?TlRDT014L1lMRGFPcWI1b1VWR1FxMmJiV3A4UXpjZFIxMlZGN2JyL2w0NkRr?=
 =?utf-8?B?MXN1VStqZVFXa0g3QWNBNEJvV2c2YnVOUUNmeDRRa3JZc0JOUU1RRS9jYVFt?=
 =?utf-8?B?cWtDakJvQkpZa1o5VkhLeUhmOExqc25YWkkyVmNvdFRlQy9wNncrU3VMZmph?=
 =?utf-8?B?SVYyaW5pRkM3SjdUd29ZcUpVazcxblRYclZYM0RXaWhTM3NVdlJtbGcwT3dT?=
 =?utf-8?B?OFh2b3JpNzJvTzNuK3dndkc4MjMwdVBkMUNzYVdiMVFjWFBxZXRvWERBNmtE?=
 =?utf-8?B?SjJkRkQreXJmLzgzcGNmUGJWRGZ4ZXZQR2t4Z1UxeHd1ZDU0ZnBoU3pRcVBr?=
 =?utf-8?B?M2QrL01CK1NNc2E0NVJmR2crS3RGdXBBVlB5b0NvREJoT0d4NDRKcGpSY1J1?=
 =?utf-8?B?ME9rQUNHU1BaWEhDMzR1dmlNQm1tZG9idVhjT2hwVG1aYWZqMVZpSDNCV0tM?=
 =?utf-8?B?V2RSaHZ0ZVhTcndwdHZXb0lRRzJidGFHcEZ3M0hVN3l0S0pGRjlMY3FmYXdL?=
 =?utf-8?B?SmMyQm1TZVdvYmFmSEwrK0FHYVdtUnA1ejVrTGsrS0pGeHpnTm9qd1VNM3pI?=
 =?utf-8?B?QTltZDB1d2MySGVLNkxRa3ZhTHRTOGd3Q1VlYzA3QjFrODEvM3MwM1pEQjk1?=
 =?utf-8?B?YzNLYm9kaFJuYkpyUllhMGw5UWx3eXdkaW9udUZ0dWhEOWF4WHp1UU5TZzB2?=
 =?utf-8?B?VkZVNXBqRVErSjVmWmZxZmNMUkVyUGpMLzFVaXdQY2xuMzl5Y1VhNXFGSE1H?=
 =?utf-8?B?NzdaU2ppbU9SY3I0NThuVjREWFZrL1NwV0w3YjJLRTF0WDIrT2k1RExYVGc3?=
 =?utf-8?B?Q3hnZTNCSk1EdTFnaDJMSGQ2aS8yb3lXREFxUlB6T25BMjY4by9nMnBCMExl?=
 =?utf-8?B?RG1KUjN2Q29BMXVEdU9mQlVCd1BFcSt4TUQ4WkdOWFpCOE1WTWkwQkxlazQw?=
 =?utf-8?B?NC9mTktHMVpxaVhneldrcC9vRGcxSTdaa2FvY1YzeG1nQVVqbGJQenZubTVq?=
 =?utf-8?B?WWRua3RXWFlhbVRtQlV4RDhLcmRtdERwSU94bkhrOFFEb2lhd3dsR1Z0VEQr?=
 =?utf-8?B?emN1bno1WkZoV3JTNVA0aXNpa0pJYnd6VGxBcS9QSU9HRmxoejN5WTBaR2lV?=
 =?utf-8?B?bWlZNDR0VGhqVlkzUTh4cFpUa0JaOHR0dEhoMmU1Nkc3eEhOT2pVdG42L0pE?=
 =?utf-8?B?ak9zM21ncUpTRVlZZ3I4dWpNRzZuTlloSE1PRmlydFNzQldsVzUxTi93SFpH?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3de745a-2fe4-4740-4809-08ddc5e5cf09
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 10:28:17.0982 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SWYKPWinCi1hSbicXQFK7fCOj22ghWgCL2dHo8OGe/+/COKR+H5mdQNlxaBPD/+wYYYUgLddcDmudbfkutkfxzktHwG35E2+dPIAPqkPxHE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7538
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

The value 4095 is intended to represent PAGE_SIZE - 1, as stated
in the commit that introduced this change:
commit 5f22cc0b134a ("drm/i915: Fix mismatch between misplaced
		      vma check and vma insert")

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
v2 -> v3:
	- Reword commit message to clarify that the value 4095
	  is intended to represent PAGE_SIZE - 1
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 0801d4a140e3..42a525f28f3e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -397,7 +397,7 @@ eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
 		return true;
 
 	if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS) &&
-	    (start + size + 4095) >> 32)
+	    (start + size + PAGE_SIZE - 1) >> 32)
 		return true;
 
 	if (flags & __EXEC_OBJECT_NEEDS_MAP &&
-- 
2.34.1

