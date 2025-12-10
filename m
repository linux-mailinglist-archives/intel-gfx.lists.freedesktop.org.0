Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC72CB2759
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 09:52:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA26810E6B7;
	Wed, 10 Dec 2025 08:52:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RPeyKCIE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6500F10E6C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Dec 2025 08:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765356728; x=1796892728;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ORiYcJQAOZU/M13cjOtMzUaLuRVhasGJIXi/+LY+o4I=;
 b=RPeyKCIEFqtsH1bRPpAzTGkAm12gwnbFDIEmFQkDAIPcvsfmExhTart3
 a742v0yXW65ivlQWEoUTQBNJw+1NTbfEqR/Uxo0p+1nnpE32FJUb0ESHl
 8DS0+dNJqwpaFEYAyTpbAnItGnek9TMjQ7B261gFFd3weDZveQUvt7isg
 5/hZ1KiIe2wHMejBwjk1j5hDMaet/a1lOtchZeJAHViLFZb7LcJRk+nZT
 ApuAsAJf6O9Do57rOrKkqcac9q3bjbsbhGrLbciPAQQYJlVRBpQetCyU6
 4K7ewl4E3om4cZMFEGwj8CFASZ1DMz785dznfqAu/0kdNmgmnLfDOdvSW A==;
X-CSE-ConnectionGUID: mw5SsELiRqyHYVGcTvjZ7A==
X-CSE-MsgGUID: 0hbSxD7xQL6l+QkkcHwGag==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="67283877"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="67283877"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 00:52:08 -0800
X-CSE-ConnectionGUID: mryShc7tSbqEQUraorOVUQ==
X-CSE-MsgGUID: I0WIYNKERsimIr924v35FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="197245849"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 00:52:07 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 00:52:06 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 00:52:06 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.61)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 00:52:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OkgGrDjtGyr7ZtwOXiQEZxI5SGQ1TYvmxvddpFWOvi6cspks/pdGOwTQ7qAa33Q5Al2HqyjmsKX6lE6pWkKZN405lDrE9PDjtTraIIUCk63SYQ8TzaPFKI49vyPI4X2+rATPYQhk7JfsGEnLKO/QkJvKB5BFxERT7hchCMTyWTTTFX6R/yAfWsov2Aj7Coe7J7CRd5dH70yKaffsJ8JPsT26CdX9fVStJMTmyQAkH2DO0tce4oozRRXwn8hzoKtNy5Ra3/PsMC7nUZc/L84/EXynYENLO2KhCJyr5HkDFOkmDyBPpTu5HzIIQzGtnIoeTGJlWFSKbf8k3GL/KAR9+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GuqbrgKZXmbi4EEPvgQ9maayauUi5nBuDkt67GMzOsg=;
 b=jdviccClCnbB+OM2SQCVtjkkFfl9jWIwQ8vnHw7vrNhD4Ufmn3WilmM/+S0eIEa49g+oERlNeQVzuseB+MD1dz9eBsk2VCfDZEjjRZO0m2g375J9T0Rl7VZvRUrqgmIuXVnmxHYBKsYPYUBG+1qi5/HS5fI0zT+HNpDh9tF4iddqFj9glZZdTIvJZmxwjPKKLKSjEEU/vGa4MPCqEKn0pX1mU2RU7EomK/fA9sXScHVc86vySMna40enjKerKWrexfTaC4jb1uwVkFjTrdsa5p/9mC9oC3JK6b1s+KCZUNxPcAugF66cypJKqr8tKbuIIv/AZdhyR7kMj0xJQ7CSRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA0PR11MB4720.namprd11.prod.outlook.com (2603:10b6:806:72::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Wed, 10 Dec
 2025 08:52:03 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 08:52:03 +0000
Date: Wed, 10 Dec 2025 08:51:49 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: "Anirban, Sk" <sk.anirban@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <badal.nilawar@intel.com>, <riana.tauro@intel.com>,
 <karthik.poosa@intel.com>, <raag.jadav@intel.com>, <soham.purkait@intel.com>, 
 <mallesh.koujalagi@intel.com>
Subject: Re: [PATCH] drm/i915/selftest: Add throttle reason diagnostics to
 RPS selftests
Message-ID: <tglsnnckzfji56d3vqzvbee7ax6yjh6o5lv7lpoco2clikdmzn@txrozp7qqebp>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251209055616.1095495-2-sk.anirban@intel.com>
 <phjuejgrtlhzocdcmvglngezt4u3xhcdkptyeatx7rtx66vpwy@mfitxo4m7txn>
 <40c877e4-a017-4056-a0d4-8cf3ada0c96e@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <40c877e4-a017-4056-a0d4-8cf3ada0c96e@intel.com>
X-ClientProxiedBy: TL2P290CA0029.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::19) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA0PR11MB4720:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bc29ce2-1c17-4c7a-cfe9-08de37c963ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OG9KUjBacWxNVWpSdm45MERUOCt4UXZxZTJveC9hWTVOeTFPWnJFdTkyTnhh?=
 =?utf-8?B?dk5VUEdxUGlka2hkMU91SkY2OHdkNG9Hblh3Tm5qSzZPR25Fd2hmVFpldlFx?=
 =?utf-8?B?QlNwQlcyMWpaUWFwNmxxVWxuWGVEQ2YrZ0I1VUV5Ri9KTVAyWUs1Ri8zaWNK?=
 =?utf-8?B?QUpPQ2lORTZjTU1zK1hKZ0RWNWExZTVtdFd2RU9IcmwrZWd3VkVnRzZtZzRo?=
 =?utf-8?B?NU9qZ0VWaFgwVWN5cjRnOHZRZSs1RHhOUjFZZ1NGQW5pV0NCZjJIc3FmVzk5?=
 =?utf-8?B?bUk3VG5NcnF3UGkvSEV0bUg3ZTdXVG1qbVlHaGZXaGxFd1BaelVzWkdTSGpU?=
 =?utf-8?B?dnJDcFpoWk1saUE0UERXWnpISk1MWXplTGlhcnpCMWpqZ3hrR01JYU1kYzFh?=
 =?utf-8?B?Vm9rYUd0Z3lVeGErSm4ybnV6K0YzY1NMaFNHb211SGxIcTliTy9iYk91cTNZ?=
 =?utf-8?B?RHR3ZkJxZitOc1o2eGlpenlOMHNpMGp0VEhZbjlZVWJleTZZSkVzaVdQSEZU?=
 =?utf-8?B?RVVJeExveW9Wcm9JSVlUREVod2ZxblJmZkVUa1pBK0llZlRwUWFyanhnUFVJ?=
 =?utf-8?B?SFhmL3pTczhYYVUrQTMvelZNZFl0NXVFUlRtV2hHMVo3dXBxQkQ4cjBwQnpT?=
 =?utf-8?B?SDRmVHUzeFlMbEVHbTJKdWYvZUJFOVZBd1VCaGl4S3VHUnZqanZMQ0FuM0Nl?=
 =?utf-8?B?T0dVMFRQVDRpT2lCUDZmL1lwNFdYL3AzVDVxTGFKMGtJT2swWHZKQXJwcVls?=
 =?utf-8?B?dmZjZXNYbDVUREQ2OG9HbWcvZVB1QU1wV3NtWWpybys5cnNGdUhTMkhqcHNp?=
 =?utf-8?B?WkhvWVI1ZW9VY2hOVVN4M3ptK3Q4Nm5XZHJTK3NUOUpINkhyU2dEOEtmUjFl?=
 =?utf-8?B?dGt0b1lVMEladXhIT3lhR1gxTjFhY2FjWGM4RjgxZno4M0FKcm52YzhvNE54?=
 =?utf-8?B?UEJUOFdOUXJVZDQ0anVLVzdsbEtVbmg5NjN2cXc4ZWtVSzZjRVg3eUdZa3NQ?=
 =?utf-8?B?UWpUYkNoOWM2Z0lZbGdCVTBmRHp2dnNJbTlqV2FVZ0NXQXFoTCtheVpURktv?=
 =?utf-8?B?NnVPRnNiY2dkNW42UnBLeG1KeFcvMENmLzNEZ21ZTEFLLzFwa0JCZHRLNjZF?=
 =?utf-8?B?QTYwMU5EbjBLeWliSGlJanA0VUVZUjNQSS9DSEU2cjFhYmJmcVRzVVE5QWdG?=
 =?utf-8?B?Qnl5ZVBwU2Q0bEFjekxzQjlCdmZ5VDBHdVVrL1J0eU83VEVWWjZrbDBpY2ph?=
 =?utf-8?B?QlFUS0JzalZhY3ZveldMWldxWmFNREI3MEdrVTM3SWkzaDlUNGNFZFppblBE?=
 =?utf-8?B?bVE2RWFTeFVvaVlkNHhVYVBES1hBRGdRd1d5S2pLSXNVMVFqK29qdWhwTTRZ?=
 =?utf-8?B?LzVnNi9UUGVmeEFJcmVuNHhUV0kxaENHTzVyRTVJclBYMldXSWVtV0ZxTkJh?=
 =?utf-8?B?SjJDamRmaGJpQWlGamthRXdxYkdKdjlRRmtJejNvemRXZ0JhcUxleFh5Wmll?=
 =?utf-8?B?OEdyMWRrK1JabWpWT3YzSlZhSk1rL2NRdDA4VFhoOEpZbHVUdlZxOEFLUmhh?=
 =?utf-8?B?MWY1NG1RYUYrZVM5UmdwWlRXc2RFV2xudUpJYmI1RERFOWM0VnVVRlVsbWkv?=
 =?utf-8?B?V0t6WmNhM243b2F5SnNob2d5QUZTUVV0SmpWZjRZOFJ0OXFkUXNKdnVXT2Z0?=
 =?utf-8?B?L0NIWDhYYkFsb05EUFRGbjRTWHVld1RkRnUrWEZyWmFRYXBBeFJteXVONXB1?=
 =?utf-8?B?L1ZKUWlIelZDZ25mNTZrWDVTTFd1UXd6ZjJFNnFlZFEwL21XWmhDTzR6M1Zu?=
 =?utf-8?B?bWQwYUt3RDgvbDc2VkRsWmkxVmZRNkdTYS8yK2E5UnhDMDZOelc2VVpVUzNK?=
 =?utf-8?B?dHFWenprTEU2b0tSaWkyZzVxY2dnNlJIa2o0bVJ0VkdETCt4d29tNkRQbFY5?=
 =?utf-8?Q?vwULlmwipnVt1q/lz+r5mQpwEP+FJVnL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elA1ZU11M0ZGVTNNNmpnbGtHbFpVVDA0aDljejVRRFpxR25acnpWT3ZpN3VN?=
 =?utf-8?B?OFB6NWNraU5LSGx0N3orUjdPNkFlU0tjZ3Rub2tHVGVXNEZoNTZ0RnZ1KzJE?=
 =?utf-8?B?U3hodCtoMGovQXR4RFlTckpvQjlCYXM0bkJCeEMvTXg5UGo0U2l0TGVmTjVu?=
 =?utf-8?B?SWRia0VEVnRRZTZHZlV5ZGpJUG5xL1VIZTY3c2I0SUFOMURKYkdzbUdaKzZH?=
 =?utf-8?B?Q1Q3aVNBSjEzVjloL29mdS9HS21MQXhxdndIYnR2dy9UREp4am1JbDhZbGh3?=
 =?utf-8?B?bkFGTXNMU0RlWnBhSlJsMVlTMzYyaWM4SWpOZU04cVFVKzYwYk9hTk5yRUE3?=
 =?utf-8?B?bFE1TWxjNmZRUGorVFdXV0Q4bWhBN2tDQ2lYcjNRVnZldzVGYTJ5OGFadGJh?=
 =?utf-8?B?dXBIeVhsVHR0aWJuSWMzdE8vNTdBNTI5WTZmKzhpTXdBNGk5TzVyMHl4MnFW?=
 =?utf-8?B?ZUdneTB6NHJFMjEyZ1k3aXlyVDlNelhEZ2RuRDVtNHNwYUMzYk13b1VlUW1B?=
 =?utf-8?B?TDBaeVlzc3FjUkpKcG5zMjNSaUNSblVZemEwbVZNNGJuQ1pEcHRjdm9pTU5T?=
 =?utf-8?B?YnQvaldOZFBhNThkY0NoeUNpUDJqdVFScE9rNGlLWklZRlpIUCtJOUEvajBZ?=
 =?utf-8?B?ai91TXZzUnMybi9CVWJjcFk0K240TkxETklKVHNWSlcxTWEwb0wvbHQwQ0FG?=
 =?utf-8?B?MDlZNWE4b25ZRXFLeW9WeUZ1ZllUeFVIajI1RjJJcituaDF3Z2RERHQ0RUd1?=
 =?utf-8?B?bkxNazR4bFpobS92OEFNVWhwY3pZa1Njam5Gb05qTk5zdUVTZ1plQXdRMzFH?=
 =?utf-8?B?b0xneHBSa1hZWDIraTVNNFpvdzBYNWNta0FBWk9YdXljVmcvT1V3ZWoyS1hy?=
 =?utf-8?B?U2ttU1c0RUJaQURLZkJPZnVLd2xTakY2bng1UVl5VUx1eDFyV1FpaFppdWE5?=
 =?utf-8?B?OGMyOHE5MVhScUVyUFE1VStBVmk2ZmFKRjJ6eTdHZ3ZuazBycEZrVkhkZkJk?=
 =?utf-8?B?NFVpMXBiZ3cwOUxxSEFLOXloeXdSUDdlR1EyYlhwYVkxTVFSTjd5R3VVOFJY?=
 =?utf-8?B?bE9TdDZrRHRjTG9qaXd3dEVwelVRZndZeTRyU2xDdFV3TC91NG9aMEdlK3BI?=
 =?utf-8?B?Y1dqb3dmQ2kwMHJtMUlMTVFzaHoxNWFrNkRWT1pqenVheFJEdkQveUZMMUFG?=
 =?utf-8?B?M09PVm1JWTZFbXk3bUdSSUxTYlRzYXoyenFDelRrUXUvTHNQc1F0UklnbVJS?=
 =?utf-8?B?TERBWmNUY2pQN3ZEWFlOd2pZeERmaVEzTWpSdW9wTUNNeEt5YXBnSU9LUlYx?=
 =?utf-8?B?dUh5VE5MeWFHZGtmVXkyZzhoanJ3d1J1ZjE0eHBKdFNVSllKaU1YbmRLcVNM?=
 =?utf-8?B?Wmw5ZVlIaFA5bWlPcU0rVkYvZEFNVVJBL2hsSnBVQ0oyRmszQ2kzZklGWmtU?=
 =?utf-8?B?YXFOY29wY3FvOXdTenRqRnRFb2NOQ0JBd21Wd0dJUXdLR1JpYWU0elVuZ1F4?=
 =?utf-8?B?UTI5V3N3YWF5OE16OGdmOUdLQ2RHUFg4endKUVdwWEZwVUU4OHNQd3R2KytO?=
 =?utf-8?B?WStyWXg3TFNhM2xXc01YalZhQ0VQNGx0ZUZpK0E2ODdCdFNiTFNSNzJMbzll?=
 =?utf-8?B?d3d2dThJRStuUU9ITiswWDZ5RE5yRHF3ZTBpQnM2L3FoZVBtWFJlNFR5aEtW?=
 =?utf-8?B?ejRIc0pwNHFqSWxwYVpCSDl2NCtId3R0SmNRcXZlLzdGLzN3VkluTjh5a1Rx?=
 =?utf-8?B?Zk4ySHV3YUJ0U2szT1JZcDJ0TjJUelhXNWRVaThQbC83V0NMd2l3MnRRMTdr?=
 =?utf-8?B?RllwTWk0YXZiem1kTS91ZHNTc0QxemI5a3JrZXBBVmtid2NyR3lwOWl2aVht?=
 =?utf-8?B?eWMvNkRnaWxvUGJpSFEyK1BxSWF0cEhWaEozM25SdmZOTVVMeGQrODBOYlE1?=
 =?utf-8?B?SWJWd2hDandLUXB2bVBmcndlTkdLV1pBa2ZXK01CV1hYMzNUNFV0VlRXTzdn?=
 =?utf-8?B?RlgydWR2UXk1dnE1eCt0clZieW5SdkdCSmtBL2xhUk9ZcVR4Mlo5N1JNUXdz?=
 =?utf-8?B?QzdhRmtRRVJMbnYxVjc0c0pmUGdsZ3YyZ2ozNG5oWmRqYUY0TTR3bEJ6MGZn?=
 =?utf-8?B?MUdJTGpKeW0rSVdKK3JsY3BiVmk1NGtGWGNvVVJBbDd6L2xJcnRYODh1M2pG?=
 =?utf-8?B?TVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bc29ce2-1c17-4c7a-cfe9-08de37c963ac
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2025 08:52:03.7034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tNPxfNuDAfhFv9xcYiR2lMlCm7pmZc81xQHcnvgTIY44otDSyB34892xaUhF2WTNdIe+N8p0nGjRL7EPk+UdDX6jykueOcInu94rMMzgZGY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4720
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

Hi,

On 2025-12-09 at 13:36:15 +0530, Anirban, Sk wrote:
> Hi,
> 
> On 09-12-2025 12:46 pm, Krzysztof Karas wrote:
> > Hi Sk Anirban,
> > 
> > On 2025-12-09 at 11:26:17 +0530, Sk Anirban wrote:
> > > Report GPU throttle reasons when RPS tests fail to reach expected
> > > frequencies or power levels.
> > > 
> > > Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/gt/selftest_rps.c | 17 +++++++++++++++++
> > >   1 file changed, 17 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > index 73bc91c6ea07..01c671e00e61 100644
> > > --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > @@ -1138,6 +1138,7 @@ int live_rps_power(void *arg)
> > >   	struct intel_engine_cs *engine;
> > >   	enum intel_engine_id id;
> > >   	struct igt_spinner spin;
> > > +	u32 throttle;
> > >   	int err = 0;
> > >   	/*
> > > @@ -1216,6 +1217,13 @@ int live_rps_power(void *arg)
> > >   		if (11 * min.power > 10 * max.power) {
> > >   			pr_err("%s: did not conserve power when setting lower frequency!\n",
> > >   			       engine->name);
> > > +
> > > +			throttle = intel_uncore_read(gt->uncore,
> > > +						     intel_gt_perf_limit_reasons_reg(gt));
> > > +
> > > +			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> > > +				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
> > > +
> > This feels like spamming the system messages. We are on error
> > path already and exiting with -EINVAL, so printing an
> > unconditional warning here is excessive, I think.
> > 
> > [...]
> Got it. Based on past experience, most failures occur due to throttling.
> However, I can switch it to pr_info since we already print pr_err
> beforehand.
No, that would bunch up two reasons for potential failure.
If you experienced problems in condition check:

if (11 * min.power > 10 * max.power)

due to throttling, then throttling detection could use its own
error path, something like this could work:

 		if (11 * min.power > 10 * max.power) {
-                       pr_err("%s: did not conserve power when setting lower frequency!\n",
-                              engine->name);
+			if (read_cagf(rps) != rps->max_freq) {
+                       	throttle = intel_uncore_read(gt->uncore,
+                               	                     intel_gt_perf_limit_reasons_reg(gt));
+                       	pr_err("%s: GPU throttled with reasons 0x%08x\n",
+                               	engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
+			} else {
+ 				pr_err("%s: did not conserve power when setting lower frequency!\n",
+ 			       	       engine->name);
+			}
+
 			err = -EINVAL;
 			break;
 		}

The main goal would be to differentiate and print only one
reason for failure, instead of emitting two of them and leaving
people guessing which one of the two was the real reason the
function returned with -EINVAL.

I did not test the code above, so it may require some changes.

-- 
Best Regards,
Krzysztof
