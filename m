Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2C097E9DD
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 12:24:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAFB510E3CF;
	Mon, 23 Sep 2024 10:24:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AZnR1syW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E24E10E3CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 10:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727087058; x=1758623058;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YwYB3gnZdDynNZ8IcStEno4K2sGuMPJhfSWmE4e7S5w=;
 b=AZnR1syWHbKjs1HgNHWyzyyuuq4bEehQh/AYWaGUBLs5xbUgUrOWHSrR
 httyW7uK5Nv9Sd3ucQV7b03oD04bQsvSgk10FYuJ6m14nylEnS7pwRzMf
 Qzwr9IH1/0sQklDz55cE1TOeh4Lbhqt5PgGhnVUra5dA13vYEjlrQTYGX
 AGYEa4WHp2DN/uJF2K5YoCxhrvkhnh4sw3zuqyaRGmuw3gP+6NgFTXNpE
 na4kK69GQoaU70N/ORU5FmgwxORdMmDkEHBOCmY8OmVCdH6HlGzX3bE1z
 dRel5OpeQY94KKeaU+ME7vSC2TAGMOWfF+/VM3WwOlbhzDM2Ne9rXB0n7 w==;
X-CSE-ConnectionGUID: NsfFbIQGQqyJRrui/v+YvA==
X-CSE-MsgGUID: ZAm5kxK5SByRS9f9rNzdjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="48552816"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="48552816"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 03:24:07 -0700
X-CSE-ConnectionGUID: 0PqrVrt7SFeCCXMMMen7OQ==
X-CSE-MsgGUID: z63IJACORm+TzAEebMbD4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71469819"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 03:24:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 03:23:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 03:23:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 03:23:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zw4fBNaPWgYlsyC40Vj4ptx/E+Tru1g51sOKz7LWpioklIfO2x3vwdt1HxnYmB1k2ZhxpGZyhofOg1mshkL62AxxQk+gBG8ztUp4F9G2aIsJoO1f/JkFD10RDp3q1eq+yMyJZ9VhXad2ymW+VGySK2H0G5B+K5+vINKU57kR+8XrSJc0z/bIS/vYkvfjQucgNhVlDdTZ8OEB4g2FGT9yD5wD7TnHaVif29dqJZ7gd6bvaf6fwRZA/TDE6mywSZk/tZryym9nwr4nfUtoonujlPSOexZOXuTTTQXGxx6bE8jR2zgALWS7fqIPjpK4yH5yB+wPY2tp/4ypE8b494Pywg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YwYB3gnZdDynNZ8IcStEno4K2sGuMPJhfSWmE4e7S5w=;
 b=KgCHchTdTKehUO2vQWjYtr+T3T8SLcfI1WzfBQwuiq1xFOh/UeoWFuSaaSSTXwuDuQaWQAJbeLgDmq/hDuTjw9IZdDfZtEw2EEkOT2TX4tApHcegn7RTaunJhNCHyUgdDuZy9zx3qTn3u22v2bL2T57eAl3379KEpxvbBG8tnB+6CM/6eww4TNUNN5S5k3RzTsgRboHYUjxqSAM0hF25oryZz/Llf2B6X9LJv+VDAe3YHItohZRyFmb0nDRfwwzB4dkqoZjak3mAHuZffFA2EkNtXewiUi543D7L+zTAN0LRdmStgb7B/NDNwXT7DSixlz4WRY9rIJhNHEDVsDnycw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB8281.namprd11.prod.outlook.com (2603:10b6:806:26b::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 10:23:57 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 10:23:57 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/psr: Implement WA to help reach PC10
Thread-Topic: [PATCH] drm/i915/psr: Implement WA to help reach PC10
Thread-Index: AQHbCz3Cr4Lhi1I1R0Ck2l/gVY6+hbJgjtAAgAQihgCAAHpAQA==
Date: Mon, 23 Sep 2024 10:23:57 +0000
Message-ID: <DM4PR11MB6360923DC6A743F56DDA0656F46F2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240909063218.447934-1-suraj.kandpal@intel.com>
 <20240920091203.1043308-2-suraj.kandpal@intel.com>
 <adae5b5d1afde8d8aed7ec0662a7682cc8ec6aae.camel@intel.com>
 <SN7PR11MB6750E6645C7EDEE4D8EE8907E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750E6645C7EDEE4D8EE8907E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB8281:EE_
x-ms-office365-filtering-correlation-id: 4493279b-4568-4970-b135-08dcdbb9d54e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?OS9iL2UxcW5WNjU5akJxbDU4SzB0MW5zNG9HTktMSmRTNSt6eFZlbHBaM2lz?=
 =?utf-8?B?QUl4Um9QNHJYVzVGU3FaTzQ2ZTNaWDM4NjVJc2w3a2djOFBSbTNmajlGT3Az?=
 =?utf-8?B?ZmRzUjVFajVtVmN1VG51QitFUXdyUjF4Y3VHL0QxbWtkWmN3WXZUdWcycFBG?=
 =?utf-8?B?RjRpbUJEZ0EvTDNaM0F1VVcwMHJIc3dIWnNuSGpDNUZsQ1dib1ZYci9hYmRh?=
 =?utf-8?B?SEo3Z3hiWS9TWlpMSGxoc2UrQXNjdVBMTHpZRXluYkZTTU51RVhtM2s4TUFu?=
 =?utf-8?B?V0h6V0JEVU8xMENlelBGN1J3RmYwRUk2OGo4ZEhNcVdaRFdoeUN6b2V5WVd4?=
 =?utf-8?B?NXc2QjBTQ05Bc2MzM0VlZmNFWUhxanhEYlJEdzBnNUkrYm03bUE5RlY5Y21r?=
 =?utf-8?B?SGgyOEE2UmUvLzM0emxROE9vMGpGcmd3T0VaVzJkZkR3S2dNLy9sMFFSTEtT?=
 =?utf-8?B?b2dtYWU4L3RCdXVNcWtsYzFtWkNBbHF5QmRpLzA1NGpqRGdNanJJd2dGOUor?=
 =?utf-8?B?eEtMTkxzVEtvVExWTHNVSmc3dVloOVJEL0poemVVNGkvd09ITHdkYmpOOG1M?=
 =?utf-8?B?eVdwOG5XSERqTEROOGo2ZCtJbEFxWjJpU0kzOUNneVY0d0E1c0lnWnZBQlBQ?=
 =?utf-8?B?QVNjV1h3SnhMZUUwTG4zZ0xxa3JDSDRpN21Dc2VxOFJ6STdIbGpHY0dxdFd2?=
 =?utf-8?B?RmFyOVVhN0hnMERTVEIzOVVSUHNYZE5rb29ySkNjMlhXeXd6MVZVTk1tdGV5?=
 =?utf-8?B?RW1sT21nemJHNTBNUXV2cmU2Y2N6VXJ4a2dlODBjQ2lZZXpINFE4THJ6TXBy?=
 =?utf-8?B?OWxibmt4OHhPeS9PdEdQQXdDSlFqa1p2MG51SDFnQzJiNmJHWEJOeVhLQnRp?=
 =?utf-8?B?c1FMMnlLa0xhSURYSU92bFAzUGdhdHdPaWZNcXhLYVBxQjd3TjMxOGN4ZTZQ?=
 =?utf-8?B?QTl1b1JyY2NEN2dWT0M3VnBBRE9neWltYWpGQm0vczJXUjFnZTRGeG5FQ3N5?=
 =?utf-8?B?dFk4Z1ZOcWg2YkhISGpubGVHQk9ZNjNpN2o3K1IrdW1uVjcrUG01WHdsOUFK?=
 =?utf-8?B?SzFhMlduUlI0WkNzRGc4ZkVmOXMvM1VCWk16Y1FjWHFhYnJubWtXb21qVXgz?=
 =?utf-8?B?elZTaUxyYTZ4T3htN2dCZFc4Ym1TdWxMUmVlYnFQcG9TZWpmV0NxZ0R6TmpU?=
 =?utf-8?B?eFdrYUl6WHlNaEdVaXF1bnRtSUYzS1FTK2xNaFAzUHRLQzE5aDJQU1YrZWVn?=
 =?utf-8?B?NGI3VG1IY2t2SlUxY2tUL2R5RE1IQUsrVHhER1FJN1kzVklEcDJPMndMSmxL?=
 =?utf-8?B?Z3dDYmNrY0ZaSk51ZTVMaDd6Vkhpbmw2Wmd1V21sRzlJVndKZ3B1U3I2TllE?=
 =?utf-8?B?N0Q4TmpLOXhLOXF3SHY4RU1Fbkp6eGxGNFhNbmJxelV1SlozYTdIdjRpSnpy?=
 =?utf-8?B?aDNGYThMWExUNHpBUFB2Sm5Mc3FtM1YrSGU3NFF5K21nNW56dmhoSktjT3V4?=
 =?utf-8?B?RTJhY3JWWGhuNVFHekdodmlLMVNtVGZxNE9YN2hqbUkvTmdIYyt6OEVZZ0hC?=
 =?utf-8?B?OEZvQmJjSUhKMU1zdE5KWC9udVVtYzJzUkwyOWZPOEx6V0Nja0dMeFd1N09h?=
 =?utf-8?B?RXdxcUs4d1dDTGgxakFhYW1GbHkvYXVCbmNkV2tLRS8yQ1pFSGVWNkpGdXU4?=
 =?utf-8?B?MXFSMGR0YVhEMXgrZ2pZcHlHTHBNTTVmN2h4R1pSU0Q5Slh3bCtUeFVDcnlj?=
 =?utf-8?B?ZFUwMnhlUElPRFF6cFVodGdvTTd5N2NIVk1paGpEQnJrN2diblVXQW5sMFhn?=
 =?utf-8?B?U2xndS9Oc2FoSDByb3hoNUNZdGEzY0FPbzEvL3FNU3NZeWdKMmNvM29QTDI4?=
 =?utf-8?B?VkZGRlBaMHlnM01qdWZBQUtzd1N6aGJJNlk5a1R2cENLZ2c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aWZOcHdkckpOYlZMSUU0dUU2SDQvd1RublNjOXU5Y0dlUHJvOTlGd3llQXp3?=
 =?utf-8?B?VVdzdjVTc1Jra2s1L1JzZmd3czVlSTlZT3JKNzFFKzE2Tkp1YkpXWEFvajAv?=
 =?utf-8?B?ZzBYQTdmNHhybTg0aFliNnd6UEQvSzJJNzdxQnhZUnFDaUpJeWFSZVpZcmZk?=
 =?utf-8?B?amgzdEl1K2ZqTUMxRG1FZzhRYU90VlprdTg2bXo1YjJ0N0h1R04zaHNaMkRk?=
 =?utf-8?B?dHpkVnkrcVcvektaSjRaN2pZelJzZTBwdVE0VHZEc1NEc1dpL2szbUlkUkxE?=
 =?utf-8?B?d09qeHlNV2QycHRGSTB0UUtBUURCTEFSUXRCWkxHYnVZQ0tTK0hwclEvVUY5?=
 =?utf-8?B?ZExNeGJCbjRRTEptdXFvSzNlUmFIK09QWHk1WElKSjRZd255WmlEcWNsTW9X?=
 =?utf-8?B?aFk2eU5QcEF0cVM4MCtjb1dNc3F3RFM3UDhMRXhnUmVpeFJTd2FVamRXaTZ2?=
 =?utf-8?B?VE9qZEZYUHZhV1FLQ1Y1SnNNYjVaZ1IycGxObzRFUS9MSUZrUHovQVJ4UDBN?=
 =?utf-8?B?Y3NkN1NsaDVSNjBQTVF6N3JlUll0ZXVzTXluSGc1R25GQzZKS3dHN1B1NXl1?=
 =?utf-8?B?MEhQWGFDU3pOM1dBQ1JCNFZhbDV6a2dPQ09NUnJEZ1UvLytLbnB0NVlxNmFm?=
 =?utf-8?B?YW1Xb0g1OUtUb2orTWFHWlJINVJRL3FKKzczK01zNElTelc3S0wvQndrSjVV?=
 =?utf-8?B?eTBPWk83cTh4S0NsMmxBUlF3ZEtwT1NrU0xmT0h5Q04zNVNsKzNscUtzb1J2?=
 =?utf-8?B?ZTZvR01YbGRLTnJwK1J3VEdha25IMnJCbUhWNXZlS0Rhc1ZROEVObmZsV0Zk?=
 =?utf-8?B?YTJKTGZCMElGZklzcTlETEZZM2FRYmNISkdtakFJYXdjVVk0bnRFL080dHl5?=
 =?utf-8?B?dHcyNWNZRk12WmVNZEFIL0c4STlmWXJPeEtWcGR3N3BnNFZYSVdqQU0zMTFE?=
 =?utf-8?B?UXNnMWx5UnMwaVJLeXQ3ajVVTCt4b2oyeURVaWh3bkZERE1UcmtaSW9FRWpp?=
 =?utf-8?B?cDNIYmV6c1E2S2VzYTFnOVc5Z0lKUHViUXVHQ0phcEpYU1hmQzJIVGRJV1lP?=
 =?utf-8?B?TlR0cHhKK0k5RjRVOUgzeUJneVNxbFl1VzZEcyt4WXM3cHJoNm93MWVtWjc3?=
 =?utf-8?B?UkppWHVJQ3VzcEcyUlE5WXAyR3lwZm5yT3J0a3A3TG90cHlQOXU0Qi9UdzZN?=
 =?utf-8?B?TVkzRVRqTHhtRHUzdCtpelVYYXlFOXpnLzRtcGhqTlNuUUpJVHF6enAxaC95?=
 =?utf-8?B?ME4ydXNhTS9ic0hSc3ZIOGQ0V2ZSQVIyVzVFRnFWdm9LN0dkNXBST0ZHSDhk?=
 =?utf-8?B?VitUMWZTM1ZMZEdMRWxCZG9SbGU4MVd3bGJQeWVnbkVqcFZuV05KMmMyTkNx?=
 =?utf-8?B?NGxvczZLbmZQYTNxakw4RjdMOHZ6RUxGSGtCWTNpdTcvNCtpRjc1ZWkzZkxx?=
 =?utf-8?B?V2dEZElQREdwZjFGSE1hY081aVJWMjdjbzFxNjhjNDd2YTN2aWk0QVRDNUhL?=
 =?utf-8?B?Zmc4UjZtS3JCRGVuTVRlZGhjNXhLamJXZHlEMlMyT1ptNTFiUE90ZzYxMm1K?=
 =?utf-8?B?NGs0Q252bGwvdVVtSU15NzFJc3lEenhrbkEySy96MjR2eFA5QmtHRVJ2UnQ2?=
 =?utf-8?B?UGhIYUhzZzJTZC9STTY3Znd3dm9sbnU4V0tFeXl0TEJmd0pZZlo5Yjdsck42?=
 =?utf-8?B?WU14ZE9oM0ZsMUZIRWNyN1dkMGVraEdUNkJYOFFnSEtvS3BRVkZlVXBJQ0Iw?=
 =?utf-8?B?b0tzTUpQaUcvc1Fwa01mN1M0dXRJTWRib29YOEFnVlNpS0VnT1A1bnlwRitp?=
 =?utf-8?B?cnVWNWJRK0FrbmJXNm1uQzBKOXk1dlBjRFBDcU9TU2NPSFVQdWxGNnJTOGpU?=
 =?utf-8?B?ak5mZkVaQ2Y2OEpVN3N5QkhCY0RiazljVFhNSVdYaHp4NWorcm4ydjk0ekdU?=
 =?utf-8?B?cUxLbDVTamJ3cGlCTTc3cGF2VHRxSnJ3ZGNXMnlUMm9iWW9ad0dRRE92Y2cx?=
 =?utf-8?B?QmpyOGZtZzQ2Y1hRcHJmMlVqTWZTc0JPSjZRT0hqUzZaWkZ3cVlDMmNiczY0?=
 =?utf-8?B?R0RFK2xuMnh3QVVHRk5uRzJVR20yR0thZU96WEtPZDBxaWtzUXFCM05wL1dq?=
 =?utf-8?Q?A89/CjdLSM4dvmnAXqx1VxfCY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4493279b-4568-4970-b135-08dcdbb9d54e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2024 10:23:57.3383 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +CiEw+87U2uuaV2iemT8p/6ZAOGJDLnBQSYW6ZRJCB2uOT5nDRDn6aKwgfTvkdO/d2bu0GmXIpFMcmYTBhcGAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8281
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

DQoNCj4gPiBPbiBGcmksIDIwMjQtMDktMjAgYXQgMTQ6NDIgKzA1MzAsIFN1cmFqIEthbmRwYWwg
d3JvdGU6DQo+ID4gPiBUbyByZWFjaCBQQzEwIHdoZW4gUEtHX0NfTEFURU5DWSBpcyBjb25maWd1
cmUgd2UgbXVzdCBkbyB0aGUNCj4gPiBmb2xsb3dpbmcNCj4gPiA+IHRoaW5ncw0KPiA+ID4gMSkg
RW50ZXIgUFNSMSBvbmx5IHdoZW4gZGVsYXllZF92YmxhbmsgPCA2IGxpbmVzIGFuZCBEQzUgY2Fu
IGJlDQo+ID4gPiBlbnRlcmVkDQo+ID4gPiAyKSBBbGxvdyBQU1IyIGRlZXAgc2xlZXAgd2hlbiBE
QzUgY2FuIGJlIGVudGVyZWQNCj4gPiA+IDMpIERDNSBjYW4gYmUgZW50ZXJlZCB3aGVuIGFsbCB0
cmFuc29jb2RlciBoYXZlIGVpdGhlciBQU1IxLCBQU1IyIG9yDQo+ID4gPiBlRFAgMS41IFBSIEFM
UE0gZW5hYmxlZCBhbmQgVkJJIGlzIGRpc2FibGVkIGFuZCBmbGlwcyBhbmQgcHVzaGVzIGFyZQ0K
PiA+ID4gbm90IGhhcHBlbmluZy4NCj4gPg0KPiA+IE9uZSBjb21tZW50IGJlbG93IHJlbGF0ZWQg
dG8gUGFudGhlckxha2UuIE90aGVyd2lzZSBwYXRjaCBsb29rcyBvayB0bw0KPiA+IG1lLg0KPiA+
ID4gLS12Mg0KPiA+ID4gLVN3aXRjaCBjb25kaXRpb24gYW5kIGRvIGFuIGVhcmx5IHJldHVybiBb
SmFuaV0gLURvIHNvbWUgY2hlY2tzIGluDQo+ID4gPiBjb21wdXRlX2NvbmZpZyBbSmFuaV0gLURv
IG5vdCB1c2UgcmVnaXN0ZXIgcmVhZHMgYXMgYSBtZXRob2Qgb2YNCj4gPiA+IGNoZWNraW5nIHN0
YXRlcyBmb3IgRFBLR0Mgb3IgZGVsYXllZCB2YmxhbmsgW0phbmldIC1Vc2UgYW5vdGhlciB3YXkN
Cj4gPiA+IHRvIHNlZSBpcyB2YmxhbmsgaW50ZXJydXB0cyBhcmUgZGlzYWJsZWQgb3Igbm90IFtK
YW5pXQ0KPiA+ID4NCj4gPiA+IC0tdjMNCj4gPiA+IC1Vc2UgaGFzX3BzciB0byBjaGVjayBpZiBw
c3IgY2FuIGJlIGVuYWJsZWQgb3Igbm90IGZvciBkYzVfZW50cnkNCj4gPiA+IGNvbmQgW1VtYV0g
LU1vdmUgdGhlIGRjNSBlbnRyeSBjb21wdXRhdGlvbiB0byBwc3JfY29tcHV0ZV9jb25maWcNCj4g
PiA+IFtKb3VuaV0gLU5vIG5lZWQgdG8gY2hhbmdlIHNlcXVlbmNlIG9mIGVuYWJsZWQgYW5kIGFj
dGl2YXRlLCBzbyBkb250DQo+ID4gPiBtYWtlIGhzd19wc3IxX2FjdGl2YXRlIHJldHVybiBhbnl0
aGluZyBbSm91bmldIC1Vc2UgaGFzX3BzciB0byBzdG9wDQo+ID4gPiBwc3IxIGFjdGl2YXRpb24g
W0pvdW5pXSAtVXNlIGxpbmVhZ2Ugbm8uIGluIFdBIC1BZGQgdGhlIGRpc3BsYXkgdmVyDQo+ID4g
PiByZXN0cmljdGlvbnMgZm9yIFdBDQo+ID4gPg0KPiA+ID4gLS12NA0KPiA+ID4gLXVzZSBtb3Jl
IGFwcHJvcHJpYXRlIG5hbWUgZm9yIGNoZWNrX3ZibGFua19saW1pdCgpIFtKb3VuaV0gLUNvdmVy
DQo+ID4gPiB0aGUgY2FzZSBmb3IgaWRsZSBmcmFtZXMgd2hlbiBkcGtnYyBpcyBub3QgY29uZmln
dXJlZCBbSm91bmldIC1DaGVjaw0KPiA+ID4gcHNyIG9ubHkgZm9yIGVkcCBbSm91bmldDQo+ID4g
Pg0KPiA+ID4gLS12NQ0KPiA+ID4gLW1vdmUgcHNyMSBoYW5kbGluZyB0byBwbGFuZSB1cGRhdGUg
W0pvdW5pXSAtYWRkIHRvZG8gZm9yIGNhc2VzIHdoZW4NCj4gPiA+IHZibGFuayBpcyBlbmFibGVk
IHdoZW4gcHNyIGVuYWJsZWQgW0pvdW5pXSAtdXNlIGludGVsX2Rpc3BsYXkNCj4gPiA+IGluc3Rl
YWQgb2YgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4NCj4gPiA+IC0tdjYNCj4gPiA+IC1jaGVjayB0
YXJnZXRfZGNfc3RhdGUgW0pvdW5pXQ0KPiA+ID4gLWZpeCBjb25kaXRpb24gaW4gcHJlL3Bvc3Qg
cGxhbmUgdXBkYXRlIFtKb3VuaV0NCj4gPiA+DQo+ID4gPiAtLXY3DQo+ID4gPiAtZml4IGhhc19w
c3IgY29uZGl0aW9uIFtVbWFdDQo+ID4gPiAtZml4IHR5cG8gaW4gY29tbWl0IHN1YmplY3QgW1Vt
YV0NCj4gPiA+IC1wdXQgcHNyMV93YSBjaGVjayBpbiBpdHMgb3duIGhlbHBlciBbVW1hXSAtZml4
IHRoZSBkY19lbnRyeSBjaGVjaw0KPiA+ID4gW0pvdW5pXSAtdXNlIEhBU19QU1IoKSB0byBjb3Zl
ciB0d28gZWRwIG9uZSB3aXRoIHBzciBhbmQgb25lIG5vbnBzcg0KPiA+ID4gW0pvdW5pXQ0KPiA+
ID4NCj4gPiA+IFdBOiAyMjAxOTQ0NDc5Nw0KPiA+ID4gU2lnbmVkLW9mZi1ieTogU3VyYWogS2Fu
ZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoMKgIDMgKw0KPiA+
ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8
IDExOQ0KPiA+ID4gKysrKysrKysrKysrKysrKystDQo+ID4gPiDCoDIgZmlsZXMgY2hhbmdlZCwg
MTIxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4g
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgN
Cj4gPiA+IGluZGV4IDNlNjk0YzEyMDRkYi4uMmQ3OTBhYmVlNzZlIDEwMDY0NA0KPiA+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4g
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oDQo+ID4gPiBAQCAtMTU3Nyw2ICsxNTc3LDkgQEAgc3RydWN0IGludGVsX3BzciB7DQo+ID4g
PiDCoCNkZWZpbmUgSTkxNV9QU1JfREVCVUdfUEFORUxfUkVQTEFZX0RJU0FCTEXCoMKgwqDCoDB4
NDANCj4gPiA+DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgdTMyIGRlYnVnOw0KPiA+ID4gK8KgwqDC
oMKgwqDCoMKgYm9vbCBpc19kcGtnY19jb25maWd1cmVkOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKg
Ym9vbCBpc19kYzVfZW50cnlfcG9zc2libGU7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBib29sIGlz
X3dhX2RlbGF5ZWRfdmJsYW5rX2xpbWl0Ow0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgc2lu
a19zdXBwb3J0Ow0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgc291cmNlX3N1cHBvcnQ7DQo+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBlbmFibGVkOw0KPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gaW5kZXggNWIzNTVkMGEzNTY1
Li5iODgyZmYyNWZiOTIgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gPiBAQCAtMjYsNiArMjYsNyBAQA0KPiA+ID4gwqAjaW5jbHVk
ZSA8ZHJtL2RybV9hdG9taWNfaGVscGVyLmg+DQo+ID4gPiDCoCNpbmNsdWRlIDxkcm0vZHJtX2Rh
bWFnZV9oZWxwZXIuaD4NCj4gPiA+IMKgI2luY2x1ZGUgPGRybS9kcm1fZGVidWdmcy5oPg0KPiA+
ID4gKyNpbmNsdWRlIDxkcm0vZHJtX3ZibGFuay5oPg0KPiA+ID4NCj4gPiA+IMKgI2luY2x1ZGUg
Imk5MTVfZHJ2LmgiDQo+ID4gPiDCoCNpbmNsdWRlICJpOTE1X3JlZy5oIg0KPiA+ID4gQEAgLTg5
NSw2ICs4OTYsODkgQEAgc3RhdGljIHU4IHBzcl9jb21wdXRlX2lkbGVfZnJhbWVzKHN0cnVjdA0K
PiA+IGludGVsX2RwDQo+ID4gPiAqaW50ZWxfZHApDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0
dXJuIGlkbGVfZnJhbWVzOw0KPiA+ID4gwqB9DQo+ID4gPg0KPiA+ID4gK3N0YXRpYyBib29sDQo+
ID4gPiAraW50ZWxfcHNyX2NoZWNrX3dhX2RlbGF5ZWRfdmJsYW5rKGNvbnN0IHN0cnVjdCBkcm1f
ZGlzcGxheV9tb2RlDQo+ID4gPiAqYWRqdXN0ZWRfbW9kZSkNCj4gPiA+ICt7DQo+ID4gPiArwqDC
oMKgwqDCoMKgwqByZXR1cm4gKGFkanVzdGVkX21vZGUtPmNydGNfdmJsYW5rX3N0YXJ0IC0gYWRq
dXN0ZWRfbW9kZS0NCj4gPiA+ID5jcnRjX3ZkaXNwbGF5KSA+PSA2Ow0KPiA+ID4gK30NCj4gPiA+
ICsNCj4gPiA+ICsvKg0KPiA+ID4gKyAqIFBLR19DX0xBVEVOQ1kgaXMgY29uZmlndXJlZCBvbmx5
IHdoZW4gRElTUExBWV9WRVIgPj0gMjAgYW5kDQo+ID4gPiArICogVlJSIGlzIG5vdCBlbmFibGVk
DQo+ID4gPiArICovDQo+ID4gPiArc3RhdGljIGJvb2wgaW50ZWxfcHNyX2lzX2Rwa2djX2NvbmZp
Z3VyZWQoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gPiA+ICpkaXNwbGF5LA0KPiA+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gPiA+ICpzdGF0
ZSkNCj4gPiA+ICt7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50
ZWxfY3J0YzsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgaW50IGk7DQo+ID4gPiArDQo+ID4gPiAr
wqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCkNCj4gPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQo+ID4gPiArDQo+ID4gPiAr
wqDCoMKgwqDCoMKgwqBmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgaW50
ZWxfY3J0YywNCj4gPiA+IGNydGNfc3RhdGUsIGkpIHsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpZiAoIWludGVsX2NydGMtPmFjdGl2ZSkNCj4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29udGludWU7DQo+ID4gPiArDQo+
ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGNydGNfc3RhdGUtPnZyci5l
bmFibGUpDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHJldHVybiBmYWxzZTsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoH0NCj4gPiA+ICsNCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOw0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+ICtz
dGF0aWMgYm9vbCB3YV8yMjAxOTQ0NDc5N19wc3IxX2NoZWNrKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ID4gPiAqY3J0Y19zdGF0ZSwNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Ry
dWN0IGludGVsX3BzciAqcHNyKSB7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gPiArdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsN
Cj4gPiA+ICsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVybiBESVNQTEFZX1ZFUihkaXNwbGF5
KSA9PSAyMCAmJg0KPiA+ID4gK3Bzci0+aXNfZHBrZ2NfY29uZmlndXJlZA0KPiA+ID4gJiYNCj4g
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAocHNyLT5pc193YV9kZWxheWVkX3Zi
bGFua19saW1pdCB8fCAhcHNyLQ0KPiA+ID4gPmlzX2RjNV9lbnRyeV9wb3NzaWJsZSkgJiYNCj4g
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAhY3J0Y19zdGF0ZS0+aGFzX3NlbF91
cGRhdGUgJiYgIWNydGNfc3RhdGUtDQo+ID4gPiA+aGFzX3BhbmVsX3JlcGxheTsNCj4gPiA+ICt9
DQo+ID4gPiArDQo+ID4gPiArLyoNCj4gPiA+ICsgKiBEQzUgZW50cnkgaXMgb25seSBwb3NzaWJs
ZSBpZiB2YmxhbmsgaW50ZXJydXB0IGlzIGRpc2FibGVkDQo+ID4gPiArICogYW5kIGVpdGhlciBw
c3IxLCBwc3IyLCBlZHAgMS41IHByIGFscG0gaXMgZW5hYmxlZCBvbiBhbGwNCj4gPiA+ICsgKiBl
bmFibGVkIGVuY29kZXJzLg0KPiA+ID4gKyAqLw0KPiA+ID4gK3N0YXRpYyBib29sDQo+ID4gPiAr
aW50ZWxfcHNyX2lzX2RjNV9lbnRyeV9wb3NzaWJsZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSwNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKSB7DQo+
ID4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YzsNCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOw0KPiA+
ID4gK8KgwqDCoMKgwqDCoMKgaW50IGk7DQo+ID4gPiArDQo+ID4gPiArwqDCoMKgwqDCoMKgwqBp
ZiAoKGRpc3BsYXktPnBvd2VyLmRvbWFpbnMudGFyZ2V0X2RjX3N0YXRlICYNCj4gPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIERDX1NUQVRFX0VOX1VQVE9fREM1X0RDNl9NQVNLKSA9PSAwKQ0K
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsNCj4gPiA+
ICsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGZvcl9lYWNoX25ld19pbnRlbF9jcnRjX2luX3N0YXRl
KHN0YXRlLCBpbnRlbF9jcnRjLA0KPiA+ID4gY3J0Y19zdGF0ZSwgaSkgew0KPiA+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1fY3J0YyAqY3J0YyA9ICZpbnRlbF9j
cnRjLT5iYXNlOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBk
cm1fdmJsYW5rX2NydGMgKnZibGFuazsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gPiA+ICsNCj4gPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIWludGVsX2NydGMtPmFjdGl2ZSkNCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29udGludWU7
DQo+ID4gPiArDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmJsYW5rID0g
ZHJtX2NydGNfdmJsYW5rX2NydGMoY3J0Yyk7DQo+ID4gPiArDQo+ID4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaWYgKHZibGFuay0+ZW5hYmxlZCkNCj4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOw0KPiA+ID4g
Kw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmICghY3J0Y19zdGF0ZS0+
aGFzX3BzcikNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuIGZhbHNlOw0KPiA+ID4gKw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGZvcl9lYWNoX2VuY29kZXJfb25fY3J0YyhkaXNwbGF5LT5kcm0sIGNydGMsDQo+
ID4gPiArZW5jb2RlcikNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgaWYgKGVuY29kZXItPnR5cGUgIT0gSU5URUxfT1VUUFVUX0VEUCB8fA0KPiA+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
IUNBTl9QU1IoZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpKSkNCj4gPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBm
YWxzZTsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoH0NCj4gPiA+ICsNCj4gPiA+ICvCoMKgwqDCoMKg
wqDCoHJldHVybiB0cnVlOw0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+IMKgc3RhdGljIHZvaWQg
aHN3X2FjdGl2YXRlX3BzcjEoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiA+IMKgew0K
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9f
aW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ID4gPiBAQA0KPiA+ID4gLTEwMDcsNyArMTA5MSwx
NSBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMihzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+
ICppbnRlbF9kcCkNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqB1MzIgdmFsID0gRURQX1BTUjJfRU5B
QkxFOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHUzMiBwc3JfdmFsID0gMDsNCj4gPiA+DQo+ID4g
PiAtwqDCoMKgwqDCoMKgwqB2YWwgfD0NCj4gPiA+IEVEUF9QU1IyX0lETEVfRlJBTUVTKHBzcl9j
b21wdXRlX2lkbGVfZnJhbWVzKGludGVsX2RwKSk7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqAvKg0K
PiA+ID4gK8KgwqDCoMKgwqDCoMKgICogV2FfMjIwMTk0NDQ3OTcNCj4gPiA+ICvCoMKgwqDCoMKg
wqDCoCAqIFRPRE86IERpc2FibGUgaWRsZSBmcmFtZXMgd2hlbiB2YmxhbmsgZ2V0cyBlbmFibGVk
IHdoaWxlDQo+ID4gPiArwqDCoMKgwqDCoMKgwqAgKiBQU1IyIGlzIGVuYWJsZWQNCj4gPiA+ICvC
oMKgwqDCoMKgwqDCoCAqLw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGRl
dl9wcml2KSAhPSAyMCB8fA0KPiA+DQo+ID4NCj4gPiBJIHRoaW5rIHNhbWUgV29ya2Fyb3VuZCBp
cyBuZWVkZWQgYnkgUGFudGhlckxha2UgYnV0IG9ubHkgaWYgc3RlcHBpbmcNCj4gPiBpcyBBMC4g
WW91IGNvdWxkIGhhdmUgdGhpcyBoZXJlOg0KPiA+DQo+ID4gKERJU1BMQVlfVkVSKGRpc3BsYXkp
ICE9IDIwICYmICFJU19ESVNQTEFZX1ZFUl9TVEVQKGRpc3BsYXksDQo+ID4gSVBfVkVSKDMwLCAw
KSwgU1RFUF9BMCwgU1RFUF9CMCkpDQo+ID4NCj4gDQo+IEkgZG8gc2VlIHRoZSBXQSBtZW50aW9u
ZWQgaW4gYnNwZWMgNzQyMTkgYnV0IHRoZSBJIGRvbuKAmXQgc2VlIGFueSBpbmRpdmlkdWFsIEhT
RA0KPiBjbG9uZWQgZm9yIGl0Lg0KPiBNb3Jlb3ZlciBpdCBpcyBmb3Igb25lIHN0ZXBwaW5nIGFu
ZCBhIGRyaXZlciB0ZW1wIHdvcmthcm91bmQgbm90IHN1cmUgaWYgSSBuZWVkIHRvDQo+IGltcGxl
bWVudCB0aGlzIEBTaGFua2FyLCBVbWEgd2hhdCBkbyB5b3Ugc3VnZ2VzdCBzaG91bGQgSSBmbG9h
dCBhIHZlcnNpb24NCj4gaW1wbGVtZW50aW5nIHRoaXMgb3IgZG8gdGhpcyBsYXRlciBvbiByZXF1
aXJlbWVudA0KDQpZZWFoLCBpdHMgbmVlZGVkIGZvciBQVEwgYnV0IGdldHMgZml4ZWQgbGF0ZXIg
aW4gaGFyZHdhcmUuIEkgd291bGQgc3VnZ2VzdCB3ZSBjYW4gbGltaXQNCnRoaXMgdG8gTE5MIGZv
ciBub3cgYW5kIGRvbid0IGFkZCBhIHN0ZXBwaW5nIGNoZWNrIGluIHVwc3RyZWFtLg0KDQpPdmVy
YWxsIHBhdGNoIGxvb2tzIGdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVt
YS5zaGFua2FyQGludGVsLmNvbT4NCg0KUmVnYXJkcywNClVtYSBTaGFua2FyDQoNCj4gUmVnYXJk
cywNCj4gU3VyYWogS2FuZHBhbA0KPiANCj4gPiBCUiwNCj4gPg0KPiA+IEpvdW5pIEjDtmdhbmRl
cg0KPiA+DQo+ID4NCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCAhaW50ZWxfZHAtPnBzci5p
c19kcGtnY19jb25maWd1cmVkIHx8DQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxf
ZHAtPnBzci5pc19kYzVfZW50cnlfcG9zc2libGUpDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgdmFsIHw9DQo+ID4gPiBFRFBfUFNSMl9JRExFX0ZSQU1FUyhwc3JfY29tcHV0
ZV9pZGxlX2ZyYW1lcyhpbnRlbF9kcCkpOw0KPiA+ID4NCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBp
ZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAxNCAmJiAhSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYp
KQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2YWwgfD0gRURQX1NVX1RS
QUNLX0VOQUJMRTsgQEAgLTI2OTIsMTAgKzI3ODQsMjAgQEANCj4gPiA+IHZvaWQgaW50ZWxfcHNy
X3ByZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRj
X3N0YXRlID0NCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfYXRv
bWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBi
b29sIGRwa2djX2NvbmZpZ3VyZWQgPSBmYWxzZSwgZGM1X2VudHJ5X3Bvc3NpYmxlID0gZmFsc2U7
DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBib29sIHdhX2RlbGF5ZWRfdmJsYW5rX2xpbWl0ID0gZmFs
c2U7DQo+ID4gPg0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlmICghSEFTX1BTUihkaXNwbGF5KSkN
Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiA+ID4NCj4g
PiA+ICvCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAyMCkgew0KPiA+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRwa2djX2NvbmZpZ3VyZWQgPQ0KPiA+
ID4gaW50ZWxfcHNyX2lzX2Rwa2djX2NvbmZpZ3VyZWQoZGlzcGxheSwgc3RhdGUpOw0KPiA+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRjNV9lbnRyeV9wb3NzaWJsZSA9DQo+ID4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX3Bz
cl9pc19kYzVfZW50cnlfcG9zc2libGUoZGlzcGxheSwNCj4gPiA+IHN0YXRlKTsNCj4gPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB3YV9kZWxheWVkX3ZibGFua19saW1pdCA9DQo+
ID4gPiArDQo+ID4gPiAraW50ZWxfcHNyX2NoZWNrX3dhX2RlbGF5ZWRfdmJsYW5rKCZuZXdfY3J0
Y19zDQo+ID4gPiB0YXRlLT5ody5hZGp1c3RlZF9tb2RlKTsNCj4gPiA+ICvCoMKgwqDCoMKgwqDC
oH0NCj4gPiA+ICsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBmb3JfZWFjaF9pbnRlbF9lbmNvZGVy
X21hc2tfd2l0aF9wc3Ioc3RhdGUtPmJhc2UuZGV2LA0KPiA+ID4gZW5jb2RlciwNCj4gPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2xkX2NydGNfc3RhdGUtDQo+ID4gPiA+dWFw
aS5lbmNvZGVyX21hc2spIHsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9DQo+ID4gPiBlbmNfdG9faW50ZWxfZHAoZW5jb2Rl
cik7IEBAIC0yNzA0LDYgKzI4MDYsMTIgQEAgdm9pZA0KPiA+ID4gaW50ZWxfcHNyX3ByZV9wbGFu
ZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gPg0KPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtdXRleF9sb2NrKCZwc3ItPmxvY2spOw0K
PiA+ID4NCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9W
RVIoaTkxNSkgPT0gMjApIHsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcHNyLT5pc19kcGtnY19jb25maWd1cmVkID0gZHBrZ2NfY29uZmlndXJl
ZDsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cHNyLT5pc19kYzVfZW50cnlfcG9zc2libGUgPQ0KPiA+ID4gZGM1X2VudHJ5X3Bvc3NpYmxlOw0K
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwc3It
PmlzX3dhX2RlbGF5ZWRfdmJsYW5rX2xpbWl0ID0NCj4gPiA+IHdhX2RlbGF5ZWRfdmJsYW5rX2xp
bWl0Ow0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0NCj4gPiA+ICsNCj4g
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyoNCj4gPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICogUmVhc29ucyB0byBkaXNhYmxlOg0KPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiAtIFBTUiBkaXNhYmxlZCBpbiBuZXcgc3RhdGUg
QEAgLTI3MTEsNiArMjgxOSw3IEBADQo+ID4gPiB2b2lkIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBk
YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgKiAtIENoYW5naW5nIGJldHdlZW4gUFNSIHZlcnNpb25zDQo+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIC0gUmVnaW9uIEVhcmx5IFRy
YW5zcG9ydCBjaGFuZ2luZw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
KiAtIERpc3BsYXkgV0EgIzExMzY6IHNrbCwgYnh0DQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICogLSBEaXNwbGF5IFdBXzIyMDE5NDQ0Nzk3DQo+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBuZWVkc190b19kaXNhYmxlIHw9DQo+ID4gPiBpbnRlbF9jcnRjX25lZWRzX21vZGVz
ZXQobmV3X2NydGNfc3RhdGUpOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBuZWVkc190b19kaXNhYmxlIHw9ICFuZXdfY3J0Y19zdGF0ZS0+aGFzX3BzcjsgQEANCj4gPiA+
IC0yNzIwLDYgKzI4MjksOCBAQCB2b2lkIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlKHN0cnVj
dA0KPiA+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBzci0+c3VfcmVnaW9uX2V0X2VuYWJs
ZWQ7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG5lZWRzX3RvX2Rpc2Fi
bGUgfD0gRElTUExBWV9WRVIoaTkxNSkgPCAxMSAmJg0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbmV3X2NydGNfc3RhdGUtPndtX2xldmVsX2Rp
c2FibGVkOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIFRPRE86IERp
c2FibGUgUFNSMSB3aGVuIHZibGFuayBnZXRzIGVuYWJsZWQgd2hpbGUNCj4gPiA+IFBTUjEgaXMg
ZW5hYmxlZCAqLw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG5lZWRzX3Rv
X2Rpc2FibGUgfD0NCj4gPiA+IHdhXzIyMDE5NDQ0Nzk3X3BzcjFfY2hlY2sobmV3X2NydGNfc3Rh
dGUsIHBzcik7DQo+ID4gPg0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
ZiAocHNyLT5lbmFibGVkICYmIG5lZWRzX3RvX2Rpc2FibGUpDQo+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9wc3JfZGlzYWJsZV9sb2Nr
ZWQoaW50ZWxfZHApOw0KPiA+ID4gQEAgLTI3NjAsNiArMjg3MSwxMiBAQCB2b2lkIGludGVsX3Bz
cl9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGtlZXBfZGlzYWJsZWQg
fD0gRElTUExBWV9WRVIoZGlzcGxheSkgPCAxMSAmJg0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+d21fbGV2ZWxfZGlzYWJs
ZWQ7DQo+ID4gPg0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qDQo+ID4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogV2FfMjIwMTk0NDQ3OTcNCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBUT0RPOiBEaXNhYmxlIFBTUjEgd2hl
biB2YmxhbmsgZ2V0cyBlbmFibGVkIHdoaWxlDQo+ID4gPiBQU1IxIGlzIGVuYWJsZWQNCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBrZWVwX2Rpc2FibGVkIHw9DQo+ID4gPiB3YV8yMjAxOTQ0NDc5N19w
c3IxX2NoZWNrKGNydGNfc3RhdGUsIHBzcik7DQo+ID4gPiArDQo+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGlmICghcHNyLT5lbmFibGVkICYmICFrZWVwX2Rpc2FibGVkKQ0K
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50
ZWxfcHNyX2VuYWJsZV9sb2NrZWQoaW50ZWxfZHAsDQo+ID4gPiBjcnRjX3N0YXRlKTsNCj4gPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZWxzZSBpZiAocHNyLT5lbmFibGVkICYm
ICFjcnRjX3N0YXRlLQ0KPiA+ID4gPndtX2xldmVsX2Rpc2FibGVkKQ0KDQo=
