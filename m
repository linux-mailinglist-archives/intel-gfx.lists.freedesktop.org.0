Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9422BDF9E3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 18:20:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EBD310E88C;
	Wed, 15 Oct 2025 16:20:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O3o3IPd+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F69E10E87D;
 Wed, 15 Oct 2025 16:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760545213; x=1792081213;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=fCSfZ6AA8YjDZ372YJKh4yWgLuBUc/xpJwch1FUU0r0=;
 b=O3o3IPd+yNn1B9YuBId1eSrUZaVLNjQqSrh8U4OOoyE2xmu3AT3VoPvH
 kNmrLhN7DuouOprIXxDHoY+p9lMDrT10fu+XZk5v0SEDD9v3fl3IDuKzx
 WhTqTWRqig/W16uOdf7Zt+HPwniR8JTBUseFp6fHgTWwrVX5cc1p5WyUe
 djzJ28Hn4RGmiZ4h6fJmrNpOyKr18tpodsIpi86jBKr59jzRVKzJYXO6b
 IdrjTogESmFUSCKuCetqPJLZCh9dVFTxaSlcfmA6WXegZ0KSxPobRDSHx
 v/LAN+iSif/dIOgrZ1/+JjdTdts+viYZu/uj853D/eYwu0vSoyIsIIQ9D g==;
X-CSE-ConnectionGUID: jXmztI8dTkaCSomY8dkOVQ==
X-CSE-MsgGUID: BrvnOP+5TmujY3mugNN7HA==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="73837284"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="73837284"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:13 -0700
X-CSE-ConnectionGUID: tOdARZi2TwKxvkTt8/469A==
X-CSE-MsgGUID: i9skPW20RIWb1YET3o7YuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181344542"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:12 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:11 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 09:20:11 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wIzn1Y9zEV2+olDrmfX7XHtHuytr14NYd7MWOL1/bF7MYt3byS9E6Kfo8pbgiqKFIIzJsTg3XbxqJrJMf6Q+mKxLPwYgLgoM6TxBfZLMvYgF+PP0U2L2U/VXS7Gq2eRuiBXqg9waE1iinOsyviU425mMYhKwIanjb1Nt8L8ALRTZ4pWj8luwDG/NyzbmFFvUOcqil6fCyJoxWvCs0fHBCs4G8+JJfcmLAK4gbYvwUVj/013tv/5/pcm2+8SK5yOIIcW81+/q66z2eem4ZHB3KjZWNkcRvmTlFhviVIOeh16qjjoapvDTDMPOCrazAhxzV+O281bw22FtrS812dCsXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ny4SaAoLnEjU7XMEBZI1gKDXTOoCPanS9mlq5XdXiV8=;
 b=YoJ7xQBpOek7wtNpVmPu5joR8dUxWZKy9QhTvMNkP0CQ0ScQm5SoCB+hmzd4xZIoesXkmaezakQSxCWP1XIi+HW74ckFzxw659Xt92AKe8q1QToMIbLgla4EKMjvmnZHb1njdz3ehVzVP06wykBRSK1nrEYoXs4oBX+9yQA1G73sW6etvJ+VkvkmUlUJsr2N0kD1SJSi+xPXbfRpsIsnV3T0BGGup5xv+850ZtWcJyx+wP6nxMDGg8f4nYDpt68x4vZfUgc1esfjN0P2haMvM8vTnm/7WsaA1u8tncPkgNQPoWLcPf8/+KCDtdVjO0vX/bbDTSjj0Y2Q7EfANTN1mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB7046.namprd11.prod.outlook.com (2603:10b6:510:216::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 16:20:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 16:20:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 7/7] drm/i915/dp: Fix panel replay when DSC is enabled
Date: Wed, 15 Oct 2025 19:19:34 +0300
Message-ID: <20251015161934.262108-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251015161934.262108-1-imre.deak@intel.com>
References: <20251015161934.262108-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0188.eurprd04.prod.outlook.com
 (2603:10a6:10:28d::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB7046:EE_
X-MS-Office365-Filtering-Correlation-Id: 1914d4f8-10d9-4606-f13c-08de0c06b4f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SnNIZktxMzJlVVIzUzVVbHc2OWhWNGkzRUorWVU4cXhnZUhkSkpmRVd4aXRB?=
 =?utf-8?B?Qms2Wkg3OXcxR2kwVGFudGlzTE4zQldXSTF2MXNWdmM5cjFKRFFLL3F1eE9p?=
 =?utf-8?B?dE5MVmdEekt5N2daanFiYTAzVUkxOXNtWVFJeHRBWGpEUWhyRlVsWXB1V2s5?=
 =?utf-8?B?cXd5NjF2QXR6a2JQV21JVUNwbWw3SmVXcEJ5QldTRHpYUWFxbzBrZXRVZjhU?=
 =?utf-8?B?Ujg4REdQc0J6eWZ2ZjdpQjA1VE04WnozQUx1OWV6T2ZLYjFFa0ZYbUQ1bDhK?=
 =?utf-8?B?TmpJbThCV0gzNFZXRmE2Z0Qwb1hlNktOTXFycy9TZnFuZTNPMjZuQVJFaXhL?=
 =?utf-8?B?VkRtMG9PK1BudFpDdU9WY2Q4LzJCZiswY0ZJMTNXYm5qQTM5d0pUN05JTysz?=
 =?utf-8?B?R1cveU1hazlOZFFKcERQYXJwd1FtZmtlZ1pWcG9CQnhUNlB4NFhFaWNwRFZE?=
 =?utf-8?B?WEZSVTBWRWFYYjd1ekNCRFNTemZkNGJjT1pMRzRkVGt3VHRpZHZJQnZDTGtZ?=
 =?utf-8?B?aEl0UEFZSFZ5Z1E3VllUZ2xsa2M2NlVxWmg5Q3kyQlBEcXhaYXMxbDVxRFpU?=
 =?utf-8?B?K2I3aVhVdGsyS3JHbW1zUDF6YTc3SDhtMnI5TjZHK1FVVXVob05OMCtSVlpT?=
 =?utf-8?B?dWhsTC84Y3NYbXdBUjBKNDBROC9jbmxrTE5BT3M0b3hZUVpzTFI4QWhNclJC?=
 =?utf-8?B?bzdQWXVGY0IzNDJtZEJ3WmJZQjRhZVF3Q3NKbzdJZE1sMkNnY1dQOUZOZ1p6?=
 =?utf-8?B?cUlXMWdQR1BUTUM1dUZNeTAvUjdQRnVidnJoR2NPNktXZnAwK0V5TFI2d2dk?=
 =?utf-8?B?ZjBQc3NZSHorQVBvZGJLSEFlc3AyR1JoUFhUNkJndFBaVUFORnhJcFljL2Fa?=
 =?utf-8?B?KzlvaWZPaDZvWHZDSCs5VDlRZ1dxSVhMK3pMZGxHbjlaaVpDZTdiTFlkS2Zv?=
 =?utf-8?B?a3NBNGxmUGVZWlpIVE1yR2NQYytDQXZBQUExYk45NjBFRzJnVkhZUTFCOUZk?=
 =?utf-8?B?ck54TGVCc1g2Ty9rczhkZUQrdHB6d3Q1MFhIUFk0R0l6YkNvOERsUjRPWDZF?=
 =?utf-8?B?Yld0V3FIRHpZU3FuMG9kTUhSM1k2VTJBTzZTVzc3SXd4YXE2aHh4SW02dkl2?=
 =?utf-8?B?N3pocHZ5eVlETXJHYW9ocktzZjJrNlRwaU9qMzUvcUk2aWNyZUM2VUgrZXhO?=
 =?utf-8?B?STh4ek92M0dSMXY4RUl5aWxheUtUdFYwUUprQkE1cHozTEhwNUh1MEY1c0RC?=
 =?utf-8?B?dGlQcFdRWHBhNFR1U1dySmp6UTZwcTk3TGdzNGUzS1ZSWHd2dGhQRU0yVklV?=
 =?utf-8?B?emxpUmtyZWZHQlM5Nm9MWGFFS1RtaVMycEZtRFhVUlFlYkNGdC9tWFNXTnhn?=
 =?utf-8?B?bkdxL2I2N0RVRjUxeGhsOXU1UzNBaytBZVBtblB6S1F3UFhlSC9DNkhJQ2x3?=
 =?utf-8?B?YXFMREhVNjNyT2NtQ1AwWjZKU2lvYkFJc2FBanJUNWJlUFpTMjNGRlVhcGRr?=
 =?utf-8?B?QjlqeVAydVM1dVAxOGdyZlprMUE5cVdIRmZ1VWZMcFdyV3pxeXliR1BNVlB5?=
 =?utf-8?B?SE9MZDY4M3ZJRHVrRG9hcjlaT01BM2hETFZaVEMzbzdpSWtONDNoaU5JZUd6?=
 =?utf-8?B?ZWVsQ1ZCZmdHSzN4aWVVbGxsSk5pR0F1TE4zOEJGdU85a2ZnS25YUFJKRS9x?=
 =?utf-8?B?QzNYQ3pBSndIOTU4YWowbkpoVk1UU3hqSVBKYSs0ZjYvankxODNRUnQ1KzJs?=
 =?utf-8?B?VjE2Sk1uaXQyREtpZFlsZnpCcml6cUx5NFJUUGNTcVZUNi9PemRRYUxZT2VW?=
 =?utf-8?B?emM1L2RXNUpCNE1UdkJ1cXNpSlVIa0JabUg0dGFmVk52aEJNMXcxM1BMcEYy?=
 =?utf-8?B?VkpMWERyM2pDUHgwTllEOS9LTlJWdFNpQitNd2NjYWdqN2c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWFSUGwrakRKZWVGNE1IbjRBMUh5R2pEeVFibHlxbjFLQTF0UWZQS1Yzci8y?=
 =?utf-8?B?emNQVjlkMjBUNDdnaEZubVFETUMrd0hBQklnNXZ6OGQxSW9Jb3BLSG9JcTRG?=
 =?utf-8?B?cmJQYkU3WWRSQitYblYwS3JpaUxHSDNObThoT3RaNG8ycExVRlcyUkw4OURQ?=
 =?utf-8?B?dSs0N2QrT2M3QlNTSGJUNVNDempjQUhZTFN2Yy82ZTBqKzg2MFFDVnU0ZVpO?=
 =?utf-8?B?dFhPMUVaTit4NDd5QlhjWllob1JvRkovb0E5M21KU0FpZ0ZlTTBuOW9KWHJG?=
 =?utf-8?B?ZUlCMytUQ08zZ2xOM2V3OVFYQXRQOXg0bTVtaEZ4ZFI0ZkdMNWc0VjRiUzNz?=
 =?utf-8?B?bkVmT0ZPQXh6ZE92MjZ2ZTdhOFJhQlYvNWZDR0dqQ3NIZ1ZqazU5QTQvNHYw?=
 =?utf-8?B?b3VkcWpmeHNZVGhabCtxbGphbE42Z1pQU2FNcDRJQUpUcllMQVBWcklXOXVO?=
 =?utf-8?B?cVRHb1hqZlpIODZhWURDSzlXc210bXRUc1BtbnBucXRaTkxyQlgxeFUraUNS?=
 =?utf-8?B?RTA2dVJaT1UyalRQUllwOUVLQzI2T2JCVndaUERDWnY4V2hwSGhVakhSNk9E?=
 =?utf-8?B?NmREbFdyQWNFNDdhY05Kem5WbFZoYktwVzFXdTVkN2RxN0lrMzV0S0VFRHB1?=
 =?utf-8?B?eHViaUh1NkljdWlFQUxxeUxHYVhxc2FibnhBc3YrYTBGNUpsdUVVSnhXK1FT?=
 =?utf-8?B?RE44cVdiOVlTR1duWTNYTVEvYjZuSWNoMU80emhPNDJyUG4yZGVCYlRhb29w?=
 =?utf-8?B?NHh3dG1mTUlqcUlma0tSbkFQdDZic0w1MkVoblptaXNNOUFhdlBtNzkxdGda?=
 =?utf-8?B?K0Y0amU4OU9qUmtkZDFYR2pmNVNxd0d1TFIvSVE1S0RIcXhGaTA4cDNNeFJn?=
 =?utf-8?B?dXg1L256V21uK2NQWmdkRE1sby9PcVRLaWV1bGdDNyt3eTRZbm9sVDhJeWZh?=
 =?utf-8?B?Y3ZEL29SdkRsOEo0d0RyNy9qbjU5Z0xRMVRoMjMzNStBZHo3YUdvL2VTUlkw?=
 =?utf-8?B?SjBjdmZIZC80eFdtYm01Q1pURzQrSE1HV2RwWXhYbElZcFlOcFNFOVhkalBD?=
 =?utf-8?B?T3I2S0M2WWZzWWdzZlUzUk1TRW5TZW50ZW00YVlTbk1FSGJFRVdnSGFpcHZs?=
 =?utf-8?B?bWpCbVgyWHVTa29wZG81UVM5VExyTWJuRkIvVHp6R2RIQmFrSEE0WDE5WHRj?=
 =?utf-8?B?ME5vVjNFRjB5eXh0ZitTVlBFMnBKUDZiTE4xNm5oTWNlNlg4eDJ0SVFEWmNh?=
 =?utf-8?B?bENOY3ZrZDBJWGZVS3Fpc0tTK3ltb2F3VExxOXA5V2hFbkdUZk5sOVU3Mmt3?=
 =?utf-8?B?OXBuRkdQZHRjR09qTk9jeGVMMDhjMXBLNzhMTXhnOTBUaUhXUzl3c2dQMlEx?=
 =?utf-8?B?L3FRYUM1ekRNQWZlSGhyWU5LQ21qSFRxYlFCZ2kvajNQbnJCNFdWZk5ZNlRz?=
 =?utf-8?B?TDJJLysyd00vV3FPMkhxOWdEWmtCOWx4UGlKczZkOW9CNkFDK2liWGIycjNL?=
 =?utf-8?B?VVkrTFQ1Q0lEZThGdytJNmJVRGgvaFZsTFdsclFtUXNWd3dpYVlTajJDNHUv?=
 =?utf-8?B?N0R6cjFONlU3aW12Y1lxeVVvQThyYWlsbzMySUV1UmwvdEM4UHNtRE1BOGdP?=
 =?utf-8?B?WGkwc2ZrUUc2UGpYOXdTRG1TZ2o0K2sveVhZUGkrT3Fjc0hpbUJZeTlBYWNh?=
 =?utf-8?B?Q0JVSmhTQmhmWkE3NVR3bVg5cDJWY1hoWkhaVTBkT1hWNVMwNWwrVjFMVURZ?=
 =?utf-8?B?SkFmSy9YK21oM2daamV1dk1CQlBMT2dWck84SGxmMDRQQ1NCSWt5UlhDS1Jt?=
 =?utf-8?B?T2NlRlI0RnhyY25wUEtwb0tUaXFBL21EQy9oTUN3Y01BZk5TWjlybklwamNi?=
 =?utf-8?B?SFlkbllvYU80REFYMVJNT3ZwMjE3VkFydzlHUmxETC9zOWd0OWx5QnVVLzZm?=
 =?utf-8?B?c3g4NnpMY1hPTjZBV2lwb0FzbFRibXpkOWFSR2svbUd5SG5FZ1E0clhZVG9u?=
 =?utf-8?B?ajFPQjVXRnpaMk1OV3JpWGpQSkFPR1dPdVhFM0JZdEhtYk9jcndxK0ZueHRi?=
 =?utf-8?B?NzdQeTVxZnJEd0pYV2VsQmFTUWt5aVpMS3RmcWJmMGdRdFBKSmgzcGxvSS96?=
 =?utf-8?B?VjlncWdnbjdaWHpFTE96NVFRWEVIdEVPV0tmY09QRXF2WmNwanRBSTR2Q0FL?=
 =?utf-8?Q?fewDg0/FO4S/Tj7437QOQy9vjJftpsoHSXFa8oZxpgb8?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1914d4f8-10d9-4606-f13c-08de0c06b4f9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 16:20:08.0036 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fIVJY8Z4ab+Q5VkpML9A/Lw6bA86LjutaCIHD8eCjK0p7GqhIm9zRJE0OVl+3b0BA9EAXVEMpxjWhCklppZC/w==
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

Prevent enabling panel replay if the sink doesn't support this due to
DSC being enabled.

Panel replay has two modes, updating full frames or only selected
regions of the frame. If the sink doesn't support Panel Replay in full
frame update mode with DSC prevent Panel Replay completely if DSC is
enabled. If the sink doesn't support Panel Replay only in the selective
update mode while DSC is enabled, it will still support Panel Replay in
the full frame update mode, so only prevent selective updates in this
case.

v2:
- Use Panel Replay instead of PR in debug prints. (Jouni)
- Rebase on change tracking the link DSC state in the crtc state.

Cc: Jouni Högander <jouni.hogander@intel.com>
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14869
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  9 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 93 ++++++++++++++++++-
 3 files changed, 99 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 58308146697ff..67386daecc16d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -955,6 +955,12 @@ struct intel_csc_matrix {
 	u16 postoff[3];
 };
 
+enum intel_panel_replay_dsc_support {
+	INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED,
+	INTEL_DP_PANEL_REPLAY_DSC_FULL_FRAME_ONLY,
+	INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE,
+};
+
 struct intel_crtc_state {
 	/*
 	 * uapi (drm) state. This is the software state shown to userspace.
@@ -1133,6 +1139,8 @@ struct intel_crtc_state {
 	bool has_panel_replay;
 	bool wm_level_disabled;
 	bool pkg_c_latency_used;
+	/* Only used for state verification. */
+	enum intel_panel_replay_dsc_support panel_replay_dsc_support;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
 	u8 active_non_psr_pipes;
@@ -1704,6 +1712,7 @@ struct intel_psr {
 	bool source_panel_replay_support;
 	bool sink_panel_replay_support;
 	bool sink_panel_replay_su_support;
+	enum intel_panel_replay_dsc_support sink_panel_replay_dsc_support;
 	bool panel_replay_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8ba931204cb52..799e69a65e712 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6053,6 +6053,8 @@ intel_dp_detect(struct drm_connector *_connector,
 		memset(connector->dp.dsc_dpcd, 0, sizeof(connector->dp.dsc_dpcd));
 		intel_dp->psr.sink_panel_replay_support = false;
 		intel_dp->psr.sink_panel_replay_su_support = false;
+		intel_dp->psr.sink_panel_replay_dsc_support =
+			INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
 
 		intel_dp_mst_disconnect(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2131473cead6d..c266807f5d36f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -29,6 +29,7 @@
 #include <drm/drm_vblank.h>
 
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_alpm.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
@@ -50,6 +51,7 @@
 #include "intel_snps_phy.h"
 #include "intel_step.h"
 #include "intel_vblank.h"
+#include "intel_vdsc.h"
 #include "intel_vrr.h"
 #include "skl_universal_plane.h"
 
@@ -580,6 +582,44 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 	intel_dp->psr.su_y_granularity = y;
 }
 
+static enum intel_panel_replay_dsc_support
+compute_pr_dsc_support(struct intel_dp *intel_dp)
+{
+	u8 pr_dsc_mode;
+	u8 val;
+
+	val = intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)];
+	pr_dsc_mode = REG_FIELD_GET8(DP_PANEL_REPLAY_DSC_DECODE_CAPABILITY_IN_PR_MASK, val);
+
+	switch (pr_dsc_mode) {
+	case DP_DSC_DECODE_CAPABILITY_IN_PR_FULL_FRAME_ONLY:
+		return INTEL_DP_PANEL_REPLAY_DSC_FULL_FRAME_ONLY;
+	case DP_DSC_DECODE_CAPABILITY_IN_PR_SUPPORTED:
+		return INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE;
+	default:
+		MISSING_CASE(pr_dsc_mode);
+		fallthrough;
+	case DP_DSC_DECODE_CAPABILITY_IN_PR_NOT_SUPPORTED:
+	case DP_DSC_DECODE_CAPABILITY_IN_PR_RESERVED:
+		return INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
+	}
+}
+
+static const char *panel_replay_dsc_support_str(enum intel_panel_replay_dsc_support dsc_support)
+{
+	switch (dsc_support) {
+	case INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED:
+		return "not supported";
+	case INTEL_DP_PANEL_REPLAY_DSC_FULL_FRAME_ONLY:
+		return "full frame only";
+	case INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE:
+		return "selective update";
+	default:
+		MISSING_CASE(dsc_support);
+		return "n/a";
+	};
+}
+
 static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -615,10 +655,13 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 	    DP_PANEL_REPLAY_SU_SUPPORT)
 		intel_dp->psr.sink_panel_replay_su_support = true;
 
+	intel_dp->psr.sink_panel_replay_dsc_support = compute_pr_dsc_support(intel_dp);
+
 	drm_dbg_kms(display->drm,
-		    "Panel replay %sis supported by panel\n",
+		    "Panel replay %sis supported by panel (in DSC mode: %s)\n",
 		    intel_dp->psr.sink_panel_replay_su_support ?
-		    "selective_update " : "");
+		    "selective_update " : "",
+		    panel_replay_dsc_support_str(intel_dp->psr.sink_panel_replay_dsc_support));
 }
 
 static void _psr_init_dpcd(struct intel_dp *intel_dp)
@@ -1537,9 +1580,21 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
-	if (crtc_state->has_panel_replay && (DISPLAY_VER(display) < 14 ||
-					     !intel_dp->psr.sink_panel_replay_su_support))
-		goto unsupported;
+	if (crtc_state->has_panel_replay) {
+		if (DISPLAY_VER(display) < 14)
+			goto unsupported;
+
+		if (!intel_dp->psr.sink_panel_replay_su_support)
+			goto unsupported;
+
+		if (intel_dsc_enabled_on_link(crtc_state) &&
+		    intel_dp->psr.sink_panel_replay_dsc_support !=
+		    INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE) {
+			drm_dbg_kms(display->drm,
+				    "Selective update with Panel Replay not enabled because it's not supported with DSC\n");
+			goto unsupported;
+		}
+	}
 
 	if (crtc_state->crc_enabled) {
 		drm_dbg_kms(display->drm,
@@ -1616,6 +1671,14 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	if (intel_dsc_enabled_on_link(crtc_state) &&
+	    intel_dp->psr.sink_panel_replay_dsc_support ==
+	    INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED) {
+		drm_dbg_kms(display->drm,
+			    "Panel Replay not enabled because it's not supported with DSC\n");
+		return false;
+	}
+
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
 
@@ -1696,6 +1759,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
+	/* Only used for state verification. */
+	crtc_state->panel_replay_dsc_support = intel_dp->psr.sink_panel_replay_dsc_support;
 	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
 								    crtc_state,
 								    conn_state);
@@ -2955,6 +3020,20 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 	}
 }
 
+static void
+verify_panel_replay_dsc_state(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (!crtc_state->has_panel_replay)
+		return;
+
+	drm_WARN_ON(display->drm,
+		    intel_dsc_enabled_on_link(crtc_state) &&
+		    crtc_state->panel_replay_dsc_support ==
+		    INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED);
+}
+
 void intel_psr_post_plane_update(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
@@ -2966,6 +3045,8 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 	if (!crtc_state->has_psr)
 		return;
 
+	verify_panel_replay_dsc_state(crtc_state);
+
 	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
 					     crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -3995,6 +4076,8 @@ static void intel_psr_sink_capability(struct intel_dp *intel_dp,
 	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
 	seq_printf(m, ", Panel Replay Selective Update = %s",
 		   str_yes_no(psr->sink_panel_replay_su_support));
+	seq_printf(m, ", Panel Replay DSC support = %s",
+		   panel_replay_dsc_support_str(psr->sink_panel_replay_dsc_support));
 	if (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
 	    DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)
 		seq_printf(m, " (Early Transport)");
-- 
2.49.1

