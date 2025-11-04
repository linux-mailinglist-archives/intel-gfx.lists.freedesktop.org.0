Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E45DC3115F
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 13:54:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABC4710E5D1;
	Tue,  4 Nov 2025 12:54:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JVUXbQ2M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DD8F10E5D1;
 Tue,  4 Nov 2025 12:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762260879; x=1793796879;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=WhvrvzORAgWrfwkXwgWe3yTzeM8ou92Y+Xt0CgaFrLU=;
 b=JVUXbQ2MLuJJvUbxPMa52aG3Y4jGH83CfXLQtAWexa0Qr5kXs39k02gm
 sygVbPWRrEoIWcTb7PviNJzL6sXvdamLcHg/BqwuWlQSD7++173dGIOsg
 JPkkA/9CU91eFdiKs6/nXBBVT5SuSPwQVIU03Nm7LInxfEWbP/rWrwX9a
 3TqDQvKK93vWDrKfQxq6V1Nx4wDXx0cWaCEG8MG8F5VV3iK9I0pPJU7Iw
 K3zMmCZff55gTI0EXTdbBitFlTbinm93ujv0uKKQiL1edamp/kue44miD
 dT+imLBIvWjkn502nYijMsBbtolcYitSyAi7qxXwSdjlzNHfM4KTVEvlJ Q==;
X-CSE-ConnectionGUID: laWV8hrXQBmWa6V9olM1/Q==
X-CSE-MsgGUID: rDTuFWPVQoW4sRdRRq1bFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="66967707"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="66967707"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 04:54:39 -0800
X-CSE-ConnectionGUID: rxG+mVHuSVyJ+iq0VJOzDw==
X-CSE-MsgGUID: 2d+ngRosS6qkzyROmnEIwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="191502525"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 04:54:39 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 04:54:38 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 04:54:38 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.30) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 04:54:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WPpjcT/J+JzF/bzV8S8BgiAXB/yq0TkaJUPaybnDuip9EjVOr/5L7j8bVU1/LOT4WI6S66u8dpcD9PO8+JjoQldeiGcP5maH3DGvp2YN969c7QIWmdHjfl+XBbgPTWvMpUQzQf9MgKWV7adEjYg82154sluJGkMOPgvB4845eM9CUb0rckMOUEjfKZ03yxL4kTym0jvTiP0fRzgn3+Y2eAb/PFKnD0XRKgD/tjmq1qostyFTxL2vNKOVm9dE42gMHr075bTRzrdR+Aby9AzytkiW0S8C1TgEUWwOPMSKWB8uFsmFWYtGY+4FGO4zon5DquTzIRXqGQZmQqOH8CA2eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B5fs8jsHX5mok5cy32Mv49qgcWxfCSp5dakYV+w7icM=;
 b=NGq6621ah5LuHy0eo0d8cRG0DEGvCrbovJFT/eVsDfASdonJshEfbGgiGOMS8pbh28IU8H+XtIyNbeo8qeBhKbCWfzqZJirmWomhAyhlHTDACcw3OCSL1wpwWPWUNcxLJj2a9N+IDY66X214xlT3cD8h5Vj5EXb0n9cfGnv0VCNFEDUtHd7y8OUCXsT4PivWypNocni7Eg886W9WynQcwRqN5mxoNfDOKxPiREDKoBFgQ3XnEuiM7w+VkbJx9eHc/UNXOtqxvHJuRZnz+bz5uFh7W45Eocx8hWK/5WoHTJ/BX/quwjZ+0ZNFhQ/cvC+XQMtKHAwUQiiGpQPnti2dEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Tue, 4 Nov
 2025 12:54:36 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.9275.013; Tue, 4 Nov 2025
 12:54:36 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 4 Nov 2025 12:54:30 +0000
Message-ID: <DDZXCBTESHRZ.1JVF91NALHR9O@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 "Andi Shyti" <andi.shyti@linux.intel.com>, Nitin Gote
 <nitin.r.gote@intel.com>
Subject: Re: [PATCH i-g-t] tests/dmabuf: Avoid soft lockups on slow platforms
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 <igt-dev@lists.freedesktop.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <20251104112116.432508-2-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20251104112116.432508-2-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: BE1P281CA0226.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:8c::17) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|DM4PR11MB6117:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e39229b-8eae-4823-768f-08de1ba14eba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q3pra0p2YmRWTzd3SllxeTE3NzR5cGVIQlRBcDYzY2NuS1d1OVFieEJwamt1?=
 =?utf-8?B?ZEdtTHpaMGRBbUsyNmNPLzNZcGdFRFk5aGdqeEh1clkzQVo0a0ROZFZqZU03?=
 =?utf-8?B?OHcvdWR5MThXZVpDalU3QWk4MDZUL2pxbHJhWmUydHhESnBnWDM4ZUFOUlYx?=
 =?utf-8?B?NDN3cUtmd1pONldGM1dUWXVOYUpBSlhTclA2YUI0L21jV2tzNGM4WGwxWDVp?=
 =?utf-8?B?bldvOGhVRjQrNGhCbDZGSDJ5TGZ2Umx6blVWS1liZ05JYVNweGRqZGJ6aVpD?=
 =?utf-8?B?ajViZjVzcTVQTGpacTBNc0xMRzB3c0ZPTTlOVzlLeVA4VXB1NnVENEVUVkwx?=
 =?utf-8?B?VHVMWXFGZWVmeXRRcjE4Y01QRW5uUGdGU2dEN25qUlVhd2Rxbit5QUhMRGdy?=
 =?utf-8?B?ZG14aW54dUlUNXd3cFE3dllDaGRKeGEvUmhmYzBpYVpqdUtUbTQyZmllZ1Vq?=
 =?utf-8?B?eTQzTUEyOU9OUFJ4ZFNkM0tZT2puZ3lLT3l6eXBqWUkzVmNBVVBvNlY4RW9k?=
 =?utf-8?B?bGpoR2ZkZ0ZBMG03TlAvSmw1NXYrVExRTDAvNXZSTDd3THFJbWpIVjdBbkR5?=
 =?utf-8?B?dnBMSFFwakxhM0tmWGgyWCszWWVpVVROckR3VVJPejF1cjhULzhuQnpBSDFG?=
 =?utf-8?B?ajRzbEUzNDAyVklmUmRlYXNRUFF6SnNuYmJHT2dVNTJPRm9FN3NMOWlJVGRh?=
 =?utf-8?B?eHVFbG1XQkpyT1JUaXFkejBUU1VSd3lCSzd1OEpiczdsdTAxQ1Z0dEtJSXR5?=
 =?utf-8?B?YTZhVHhvZ3FyVUt3ZXlGcXp4MEdreHoxeWZLT2dPQVB1MHA0TEtGeDA2aytn?=
 =?utf-8?B?aTdZcEIrSEwzWU9uODQ1UGNPS3VTT3JpVW9Wem9Xbkg2Q29pWE5LTlpaSWlh?=
 =?utf-8?B?V3NENGZxaDNybTJoSkh4NGRNM1YyeVgvRGJ6WXNXakJqRERxQzlLbTlKRVBx?=
 =?utf-8?B?U3p3VkdlN2tpTHMybUNEWVhWUnJNdnRzc2hQalFaV0k1Qi9lTTA2bFMvZ0pz?=
 =?utf-8?B?S2p5QjI1QTVTbU9VNTVETGppekx5dzFFNHRWZ1A5VUxiKzBXbHVKQURWYVJs?=
 =?utf-8?B?cU8wb3p4WjBuV0V4N2htRUQycGhaSmpmRzhUaHU4YW1XRWJVNkQ2VTh5dGQz?=
 =?utf-8?B?M3U5cDVod3ovSDJ0V3ltVjU2a1h5VEJDcHVEbHBIY1Y2M2FCYkxTMnRwQ3Qy?=
 =?utf-8?B?VU44dWVjeTNXNW45OVRLdEMwVks2a3M2WFJJN3U5WklrK293RlFWakpQWTFF?=
 =?utf-8?B?R3dZMFQ5VjJXaUhHcHV4ZjlLOVV5VVZ4NVVGQ09BY0d1cGVCWFZmcnp6MXVC?=
 =?utf-8?B?c0g3ZHZOMU5lZmg2OXgyTnJ1UWkwVzJNMDNCZ1BzNjEvWk5BZ3Q4VmxMS25C?=
 =?utf-8?B?NGVwRzNEV3U1T01RQkFNVm43RzA5cmFQd2d0R0JjcWJsaUs4N1IxbmFaVXBM?=
 =?utf-8?B?VElSZVdsSU5jd1RNbGRnZmQrdTFocjVyNHZLaENtQ2U5ZGNjL0Qxd1h3N2g1?=
 =?utf-8?B?L2lYeGhwV2NzbFBOc0tydFV1Zkh5SUhwV0xNNGxyY1FPUWdwM01HZ3c1ejRq?=
 =?utf-8?B?WHpMekhGZ1VDdUZSU0tEL3pocUZ5cDR6UGRTWGVCdzhVWGQyWXJQSTVIQ1Rh?=
 =?utf-8?B?RjRtWENPK3FoR1AxcDdONUFVaVVUZjZCTkVkY2J4MWNiVUluSjF2RlFuVXBr?=
 =?utf-8?B?YWVNdWI3ODRZd0FaOFFRc2VlYXNJYzFVR1RnUDhyVEw0K1MvdDlVQWdQS0FH?=
 =?utf-8?B?QzhHTk84TXlXcmlpeE44ekRHVEcxVTMxWDNOWDhwMGMzMlZ0alh2cUxJUWZR?=
 =?utf-8?B?TmR1dGphMmJsbXlPMXNhT1B6Vml2SXozWlNjNnVFQzJZV1Rsb3RHbnVNc2Nl?=
 =?utf-8?B?Rkc2SllJUUc2ZGdzaUdFTjc2ZmNBZ0lMVUZmb0RrVzZ1Ujc1NERpY25adUhX?=
 =?utf-8?Q?PcS/r2K38R4tKVtvNX61USKIy2QU4gg2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3ZxbTVlSnNQZVJTQTJsRGZjZnRMN3dRN1VNNGxTSFdLdkxYNWVRSDB3elNZ?=
 =?utf-8?B?UmNHVU5rVVZPWmRzQWhMMkxzSzNQS254VmxYV0NVZ2JyRW9aQ2tJa1BabW1E?=
 =?utf-8?B?ODVXcS8rYWxHMkVLbEpkeU41RTZzVS82ME1VdzZHTFJzOTN3WVlWYldnbHBo?=
 =?utf-8?B?RThjYWVPMmF6ZzRnYURSUzFaM3pSNS9Rc2NLUzQzM1JxT3RpU3Z4RWZPNTMw?=
 =?utf-8?B?QTRjZnRta0VNRENnMVFqRldQOWp1UzIzMm9CUnVHL2RaQldPWnlJZ2IzRUw0?=
 =?utf-8?B?bHdrc0pGL3ZPZDVKYW8yYU1rUllLNkVPdVBQNDE5RXNIb0FBVFFPb09taWN0?=
 =?utf-8?B?dlI4d21ySEpqU3VHVlNxUzRBenhMaVZKYVg2K0hWYmxHRnZaTnNLdGNHSTFX?=
 =?utf-8?B?T2hub1E1NU51eGtUNjZBL0trVzFpTk1ScU9OdXlURkRnSjFXYTdnaFBiT1ZS?=
 =?utf-8?B?Sm92YXdDYmVCRGVlT0MyV0IxaTcvL0tyc3RqTkFBYUlUZU1iWVBzSWV2di9m?=
 =?utf-8?B?OFk5OTU3TTF5bDBXb0JtK1F4ZTRsSGhlK2dqNjJOZmU4K2EybWR6anZlTlN5?=
 =?utf-8?B?MXB3dUZ6L1BCTmQ3MlliNm5OYjZxL3htQy9VUm1PQUdNMmZSV0pYVFJsQ0Mz?=
 =?utf-8?B?bU1Ga0tFUEtxb2Fmdk42aVV4REhiSVpRK3doM1Iva0Zvd29ZMXBYK2F5a01a?=
 =?utf-8?B?R0twWWZPY0ExVEEzZ2hUL3ltV2dqYlBSS2V5aUh1Ukx4RTJ1R1VLVkdRcTNa?=
 =?utf-8?B?M2YxNUlnV2lxMHU1dTFtdy9KejBhUWFKQkdpMmllQXpwS25MaDZtODZKYkIx?=
 =?utf-8?B?WFNnUWdRQXdBTndlTFpUN0dRaVczTlRCL2hOd0grU05Ydk9WY2lnWklZUHpk?=
 =?utf-8?B?am5MaEViZDh6YStPZDY4d3JOcUh0dzB5V0VIbWJOTnFEek90M0JidS9uT1pt?=
 =?utf-8?B?cUVzZWxYWlBTSy9IN09EY2lnd2k1Ri9hOWp1NWs0TWlGRzNLTUJrYTZxZWxK?=
 =?utf-8?B?cDltdmtpTVFMWEZlMHJTQTZySlNDcUNKZmlaZ2hLNk9VMUIxUCs1UkkzNkRy?=
 =?utf-8?B?OEp0dk5ubDJRcFFNZ2pENXBrU0JpMUt3Q0hFM1RDaTVTM05HTDdIS3d4Unl6?=
 =?utf-8?B?WTBiRnViQVBuZjI2b0orSVZlREE1WUJLMU9TdTFpMklKa2Vuelg0TTlZVm5J?=
 =?utf-8?B?Vkg3eUtmdmw5SkxJMnV4TzF1dng0SWdGRUdPUkxRSmM1c3puOWJzbzFYemhv?=
 =?utf-8?B?UWloNWxiUHhmZjlYb01HSXp3c1N2SDM0OFpZR3NSdFM3c1kzMmtXdGhVaFpV?=
 =?utf-8?B?MEsxRmtFek41eEZvd3Z2SlA5STdpc0g5UVhTRXZDZ2FFNFNzSG9sQ0JlOEEv?=
 =?utf-8?B?bkxUYVRxNi8zS3E1RUFhbDVVSmpUeVJFaDU0dzZVcXpDSllRMmxVSU5TWnhM?=
 =?utf-8?B?VnNab0lLZ05GQkUrK1cxbUo3enI1Mlh6bjlsalVRdnVDUy9KYmdPcGgyZHNl?=
 =?utf-8?B?M0JDSUxIZWxySzVlMGtvWWZlWnRYd3FpZXdVZDNXREwzU05ZRDU4TXBnU2tC?=
 =?utf-8?B?MlEzRWwvK2t5MkFZN3lRMzFOWFF3QXZJcDQxL2txb2lWT2o2Z2FjZU9tSG1C?=
 =?utf-8?B?YmVIWnlXWnRydm9DQ1FmRXVLQkxVVHNiVjVCcWVJQXdiNkNFaGdBOStqSmtU?=
 =?utf-8?B?cHdrWHV0WmYxSkllZ1BIN01DemdtOHAxYVRWTWlHQU1JWCtZRVNlWnY1NWFM?=
 =?utf-8?B?amFPbUNZMlpvQis1NnpaVE9hU1crcnJOa0Q0REJOK2I1QVk3ZlpXUmVOc1Vh?=
 =?utf-8?B?SHhRL2JSaDNzMytaWUxPUFIzUC9RVXkvbDFvL1BEN0dSY0k2MkxPVVF0L04r?=
 =?utf-8?B?L3lHL2FPdGFHOFlGdXN0MU81VWtuOTdIdzNsVGhWR0s1RVFBdjFLSzZWV2hS?=
 =?utf-8?B?d0NpVEN2WUFPbjV5L1dwMjhxVHRRMEVLbzlkMU1lMmpINWk1UXVoVzlqWDJW?=
 =?utf-8?B?WFR6S0I5NkFiZ0h3d1RSQ0JnVkkxNzZSbHdUcnRpS25PRGZJWVdpU0VnbzYr?=
 =?utf-8?B?N2szdldxSmxvTTgxekZMMGVHVEM2THZCL05CNFgxNlNrZzEzTVQ1MW9SaHQz?=
 =?utf-8?B?S1hqTTNWdUh4T1R4WWFXNWU3QmJWMVY5c1ZUZ20zNy8rWnh3YXVJMTVZS1FM?=
 =?utf-8?Q?kvR8PIhGFYW5w6GGjgD3NDo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e39229b-8eae-4823-768f-08de1ba14eba
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 12:54:36.1884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pstO+E0CV+s2Yu0NylWX6YEnaYKoxsFc7XNrguAX7QiNA6j284eQI937SIbhICpHSClbludDw08wfpduYJM2VKoC4RLkgYHpVewUGLx7kcw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6117
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

Hi Janusz
On Tue Nov 4, 2025 at 11:20 AM UTC, Janusz Krzysztofik wrote:
> Certain selftests, while basically correct, may fail on certain platforms=
.
> E.g., igt@dmabuf@all-test@dma_fence_chain used to complete successfully,
> but on slow machines it triggers soft lockup warnings which taint the
> kernel.
>
> Sometimes, like in the above mentioned case, it's not possible to fix a
> root cause of the issue since it is not recognized as a bug.  To avoid
> ever returning CI bug reports in such cases, allow selftests to be called
> via user provided wrappers that take care of not triggering unavoidable
> failures, e.g. by skipping specific selftests if some conditions are not
> met, or watching their execution and acting upon certain conditions or
> events.
>
> With that in place, update the dmabuf test so it, as the first user of th=
e
> new feature, skips the dma_fence_chain selftest if a machine looks too
> slow.  Since that's a hardware agnostic selftest, running it on a limited
> subset of machines seems acceptable, especially when the soft lockups it
> can trigger aren't recognized as bugs on the kernel side.
>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_kmod.c              | 13 +++++++---
>  lib/igt_kmod.h              | 10 ++++++-
>  tests/dmabuf.c              | 52 ++++++++++++++++++++++++++++++++++++-
>  tests/intel/i915_selftest.c |  6 ++---
>  4 files changed, 73 insertions(+), 8 deletions(-)
>
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index a10626eedf..68ab4dbd57 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -1355,7 +1355,8 @@ static const char *unfilter(const char *filter, con=
st char *name)
>  void igt_kselftests(const char *module_name,
>  		    const char *options,
>  		    const char *result,
> -		    const char *filter)
> +		    const char *filter,
> +		    igt_kselftest_wrap_t wrapper)
>  {
>  	struct igt_ktest tst;
>  	IGT_LIST_HEAD(tests);
> @@ -1370,10 +1371,16 @@ void igt_kselftests(const char *module_name,
>  	igt_kselftest_get_tests(tst.kmod, filter, &tests);
>  	igt_subtest_with_dynamic(filter ?: "all-tests") {
>  		igt_list_for_each_entry_safe(tl, tn, &tests, link) {
> +			const char *dynamic_name =3D unfilter(filter, tl->name);
>  			unsigned long taints;
> =20
> -			igt_dynamic_f("%s", unfilter(filter, tl->name))
> -				igt_kselftest_execute(&tst, tl, options, result);
> +			igt_dynamic_f("%s", dynamic_name) {
> +				if (wrapper)
> +					wrapper(dynamic_name, &tst, tl);
> +				else
> +					igt_kselftest_execute(&tst, tl,
> +							      options, result);
> +			}
>  			free(tl);
> =20
>  			if (igt_kernel_tainted(&taints)) {
> diff --git a/lib/igt_kmod.h b/lib/igt_kmod.h
> index 9050708974..c9700240c9 100644
> --- a/lib/igt_kmod.h
> +++ b/lib/igt_kmod.h
> @@ -28,6 +28,13 @@
> =20
>  #include "igt_list.h"
> =20
> +struct igt_ktest;
> +struct igt_kselftest_list;
I would avoid using this declaration. I=E2=80=99d rather place the function
pointer declaration lower in the code.

Overall, it=E2=80=99s a neat idea. I tried to think of what could go wrong,
but especially for a hardware agnostic test, it seems worth trying.
=20
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
--=20
Best regards,
Sebastian

