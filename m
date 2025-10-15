Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCAEBDF9C8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 18:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2965C10E864;
	Wed, 15 Oct 2025 16:19:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cBMiKRvk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C43110E864;
 Wed, 15 Oct 2025 16:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760545145; x=1792081145;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=tEhZHPsqwUTRB3GEFSHIuUtkQptq7/FT2Crcrs/e7D8=;
 b=cBMiKRvkcYsgKdPv7t8RsWp6IJHVr40AERwB2NS3awrnS0gRj0QtO8O5
 zFRmUlNa/oHFG2fQuejolAPS52109Wf/tzNVI5A9rF+N1fkP9D9yS3UJb
 T7T8F7XVEa9GQkC9OUzB6JzZTPNpZjxqq7+kFXyZZ5rkDQ6719E5+ocYF
 XupEopHql3O9l4p3YCoX6Fzcg7EPRm5YXzfRzKh6tsG1d6CJkXfb9TXAS
 1gK58FDhdRF8Y2ZdGKca2eUVCN3lzJbl8vGQRwvO9Jx/MyA1NM9jhN8ct
 wTzIz+6PTJ/OJD+beBAFOVoVcNWHb4ZEiPMojfaQkdL6AYbybPvHePShS g==;
X-CSE-ConnectionGUID: q0TIHSaIQ/mhF7MEZbUGIQ==
X-CSE-MsgGUID: oMDrNFQ5QlaSEGrYaBOU2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="73837098"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="73837098"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:18:52 -0700
X-CSE-ConnectionGUID: iupkKQ8fRgu4Fo70bklZxQ==
X-CSE-MsgGUID: BazGvAwFSsqjJeA9KisDog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181344170"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:18:52 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:18:51 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 09:18:51 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.3) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:18:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qXaGyxfImBq+cOpMbphOLqiP8ytwi1yNuASXSYXObLGyGmZrX+RYC/N2YcsChK4Uj09lCVaH1lqnI4A39cdbB86nuDt1/vAvjB7NgM2CotS5gv2/BkL9QNO5NqWph5Su0VCvIQIR5fI+QtW71J4xAY3ub9A8dWdxMXfx8akJEGyU7RcO6ri6P3xUNQmJEPTK8Ne+VmV/nJo0csgSY76/yGF/LQvYmKyhIZjrDzMplL2qP2KFXUqspBxbD9pqmtBIPkNL6pElE7oGa7HIBkrDKyD8yigigsrbPPgrCN2jSZMy3jZRio0ExPXY80O6TZ8ui7XbfAJnWBvjL9uAqtcGnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MtdihwGJHbF9DbN5Ws0hnRiOx7IV2kceiRFbL36JR8w=;
 b=bG2oaTXd/mmrna/yPifL31p5uGI/eFZrdyONS1Z2a6Ep01f/xd7u8yASvcHFCESH4xvMMZ5ioMUwtIXMmh8UjLvOvdxLD0r3zRECXmIxSOJbvoInBhlt39vVqjYQKCP7zf3v/tfmJYmOqYq3Nf63AwJqVCH9T179mSAaKx11pw2TFI86dLUFatQglfKGRE40EEWkriPNii6QlMSF7FYe9KTwynzzsczPRsTwj4lDHxb3ykP/6soZu6EP5jlwyRq0Y2woDzmTqsrY1mIZkv7DMwGFwoGCigUgc642uXHbQDRt3wrymha/tWRhV8MLLqUEMYnjOcjm23+dkVFXZmGd3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB8112.namprd11.prod.outlook.com (2603:10b6:806:2ea::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 16:18:48 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 16:18:47 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <9437c341d8a7ce4104ca3b65275f34ea728259db@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-19-d2d1e26520aa@intel.com>
 <9437c341d8a7ce4104ca3b65275f34ea728259db@intel.com>
Subject: Re: [PATCH 19/32] drm/i915/xe3p_lpd: PSR SU minimum lines is 4
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Wed, 15 Oct 2025 13:18:43 -0300
Message-ID: <176054512326.3168.5038239580591384130@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR03CA0018.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::31) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB8112:EE_
X-MS-Office365-Filtering-Correlation-Id: c3e0a33e-02df-4a3b-48eb-08de0c0684c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dmRYUm5RTjZGMWU1UkplNkRMWkZvaFh4ZkJUQkp1Um5WZVdKTnJlM1hHSTZi?=
 =?utf-8?B?aXpPdDdUWml1aG9qbFZDK3p4SjZkNzdKdDFMZFczOVFLbEx3QkQ3dEM3Vk9B?=
 =?utf-8?B?eWVvaFI4Q0h0MDdwRXhoMGZneGlZYmpiR0JhckR2eG5mbUxrUlZoK3lDaTJx?=
 =?utf-8?B?MnI5ZzhlT2xNeGlrYkdsbFNvQlQ5U0ViRURDMml5ejloR3J4RFVHOEZIdFhp?=
 =?utf-8?B?a2NmK0JISjUvZnZWR1VvR00yRmwrNkFySEdFRHF2K0MyUUdZNVNhQWZNQ3lq?=
 =?utf-8?B?NlVjRUhwWnJMdVdKZ2t4bVk0c3pWSXFleHZqZDQyM085YnN5MWNtSERaVktt?=
 =?utf-8?B?OVU5R1NXWXZ3dmNsZGhpWGh6MVNQRklQRCtONVVNL2xFTFhZakxMOXFPVWNH?=
 =?utf-8?B?aXZsZ2pjK1hGOVZmTER0V3d3ell0YWVZaG1rODlDcFhXdzhRVUw1Tm1nZXNJ?=
 =?utf-8?B?TlNtS3d0eHQ5Um04djFsbW9VdEdNSE43Ym5jMjhCVmlyZUdxdzJmT0xnN0l1?=
 =?utf-8?B?WkFQNFNsZjRPb1dnUU0zc1VlY3FSdWltODM2cE44SFNIL3E5VFNGSmRiYkZJ?=
 =?utf-8?B?RzVXampmMmVXdHV4Q2NpaG1XSTNZTkNzcVZwOW1GL0JzaSswMkVmcWdhUmEv?=
 =?utf-8?B?TTRtL2crNE1LamxhSWYvcGRrbStNTHNYeXY3RlMyd2JRM1dHQjZmYzIvYjBO?=
 =?utf-8?B?OTBTbmJhbGxPalQ4L3hTQzIzZDFFaVNoWk05K0pZcy9vMThldlNhWTFMSlBX?=
 =?utf-8?B?a0JjUDRPTG93TDZtOE5XOTB0UTl4L0I3eU1HQUxMblllSjd6a3NuTXM2ZEM2?=
 =?utf-8?B?OEIzcVVWWFVtQ2VPQ2VBa2kxRnlIdG9zM3BtVVQzWDZyRUU4OEl2azNxSmFy?=
 =?utf-8?B?OHdrS0tZUFRENnpMUi9Xb002aWJ6VkR4aDRZd0JTSFJZRjlpYnd2bWdBS2xo?=
 =?utf-8?B?Sk1zbGVJd1RrclNaYnk1aFh3aStSV01MNHZEMHNKZm10YVBPR2xhQXhnZFp3?=
 =?utf-8?B?cyt6blRyTzIzWFJqZ3A1RFMzTHF0RHY5eVdYVWZtVzBGUzRNMnZVeWJSZHdR?=
 =?utf-8?B?Mm1xMHVnVzF3eHJiT1JiS1IycnZOeStHQ0xmRVhJYW9QZDFBd2RzQWNGN2ds?=
 =?utf-8?B?dXNTQm81bnRpQ29BaDBrWE91ejFweHlVUVNzWXNaYkthdzFmRjkvUzF4ZUtF?=
 =?utf-8?B?UCtpRWNsT0FmcUVzcjNBdVVUWEZSanFzQk1pa05RNzBZK2o3V1ZzRGEzVVRh?=
 =?utf-8?B?NDJ4TDJ0LzBwRk9sTDQ2aFFkeTdhZlFxN09ISjJwL0Z6VWlBSWVOWDRTUDRU?=
 =?utf-8?B?OURpTkk1WmxWTFpmRm9MU1ZyVnhiQWVTOVpkTGxMb01TdjZHbnlFRTg5NmJz?=
 =?utf-8?B?TnAvRlBJZ3N1cTJPMVYrNENXT2xUS3ljT0xiOE52anZIdXVEQVp3QUhpZS9G?=
 =?utf-8?B?dDJtblA5cHlwdUw3MWNwTzM2R3Y2eDV6ZGpyUjlhZHVlMk5QYTE5eGtGRGJQ?=
 =?utf-8?B?aGdNQnpIYVUxeE1WWk4rMENqdndiUHBValRsWkU5a24zZDlZVEpWdCtDbkdq?=
 =?utf-8?B?dkZWT0Zjelp2M05VZlQwV0k4d2dlbjZxWFQwS0hzUE12a0wrVkdVZWFPOFZv?=
 =?utf-8?B?UFk1RHlHbnVCTEo0bGwxKzI5MWlLWWJlZlJmSzBienNvSmdlRDR2bGpYN0FQ?=
 =?utf-8?B?aUpJZ0Z6UXRxa2RIRWM0VUxKOHRBeTlLNGcxek9QdWZzL2pzODhXL2tuOW9Y?=
 =?utf-8?B?S1Q4QVVnZGJnVDVSWDA2VUxPSFNFQjJRbG83MUlxaFRGWUk4dzVGcWlDWVA3?=
 =?utf-8?B?RnZpUUhHTThFckFEYnlXYzRLbExFaEpoRmt4YkZjQTVRNnNTWTk2TFFSd2lv?=
 =?utf-8?B?ZHo4T29XN0gxdkhDUlB0VTUzdGhyNWZXVFJjUDdGTWFUdkYrTVJzZ3JHclRH?=
 =?utf-8?Q?p2xUOGKc6AwSLwC9PUQKbEyk+wcMSuVc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHhvOHdDQWJkS3lOcEVyQXRRd0RFZytkaTI5bHhBNnVxZlJvWnZwT0JIT3JI?=
 =?utf-8?B?bnpKZEVoR1p3OENpOHFkeG9hMmlETC9oVzRpMGJ6VGpNbjNEaklGZHRHbHVq?=
 =?utf-8?B?ZUlNR1QxYy9XdlRFeEd5Y2lMeGo4WC8wVVdKU1dKTWdYbUpvbmlVcmtRMFp5?=
 =?utf-8?B?MEk4clBUYkUyYWNSUStQRFNXS2Y5T0tVck85RHhuT3l6V1JQRjFNY2RDY3dj?=
 =?utf-8?B?TG4reHBkVkFYQ0RpeEpQU3lKemRsWW9hZTdyejVIbnZOVW1xUWpJbkMrTTRP?=
 =?utf-8?B?dndZQ2N5UFFPSUFzaVNCRHVaWHU3d1FzZDVNQldvTFZWNFhuZXU3THI0MVNt?=
 =?utf-8?B?RW1VSWFlVU9iNlRkNU1OL2lRb0QveFlOeVhvOWdoL1Ura29Xc2Z3VGZmNjBV?=
 =?utf-8?B?dlFmTlF0RlFXNlZ4aVJUSytrVmRVTWdSOFYvY2tJSEVyRVhyQWZKZVRxYzd5?=
 =?utf-8?B?QThmTjdLL0hJQmxRM0NmQzRnN0tpZ1UyZDQ4N3ByNndiVmFpRzhKa2Y5RnJB?=
 =?utf-8?B?RzAyMjFSRUNGT21UTTVtMXdPYmJiaVVKdzFjb3hyU1VFSk56QnR4RVFDV3p5?=
 =?utf-8?B?eGMxRWQ4VEZyZExtTytjb25aUjVZZTl0b21yeEVIaS92b2FTdWFKOFlSWHlV?=
 =?utf-8?B?a3FIRmdpM1dqL3FxUk9qTWhUbmtVTGRqaUFocHBmelUrV2Q5Zm9Wb1k2R1g1?=
 =?utf-8?B?SkIvN2F0VWtIV24yTUJnalYwN200a3NGWkVueGdPY2pLMkFSTlRiakl4OVA0?=
 =?utf-8?B?elJDTzJUZURZMkw1Z05WTmg5VXR3OTcxK284NnU3T3ppZTV5a045bUdvWTE3?=
 =?utf-8?B?VFh1VWd4OE9PS0k4ckozZ2xHNithYldxaEdYQndmWkl5VzNuTndvRzU5dDZ5?=
 =?utf-8?B?K2E3NTZ0dWFoWWJFcUU3WkJudHBYS2J6OHBTaVlRWHVmRWYyZWNWVTN5cWdp?=
 =?utf-8?B?a04ybmtHaFZKNmk5Y2JPQXkyOGlBV3pKVUIzeCtGZ0g1d1RTbmFOYk9wMUox?=
 =?utf-8?B?N0FDbTB5Qlk4MjRScVVRL0x6Ynd1aVFhdWVuemRwcmw2SWxxZllnVUxkMkFa?=
 =?utf-8?B?UC9jaHVwVzlSWGZCYUEzbExyNzNQNEZTU2tNWS9ZYU1PVjNYbDJEVlpMelVU?=
 =?utf-8?B?OFRnaHExL0UrUU1UaURuNG5pTzk5L1NWeXk4ZWxxZlBWWWhKVUFXWkJUcE5M?=
 =?utf-8?B?d1V1K09ZR0JERzBOY21PM1RRc1dZNitONE02SlVUU3VCMGNMU3BzZTB0ajFI?=
 =?utf-8?B?MWVzbXpONlV4QThjUzFPMXpqQnNUY00rVjFYNWI3VTliRTRGaitpdWdJK3hW?=
 =?utf-8?B?MUxJa2FvY21ld09BYXdIeWtXT3hrMDBSWXlxSkZNRGxNSm8xa1ZCTlBNMVVX?=
 =?utf-8?B?RHRERWNtYzJMc09wZ1hZZ1hiUFZ5M3JWM3hFTFg2emkzWTUwL1NJZlZRa2NG?=
 =?utf-8?B?V3lGcFVPRjJRbUhWemhEN2FGZ01PSmZhaFlKTDluR2h5YU43YU5aVGpjSTZ0?=
 =?utf-8?B?cWQrTFJhTUQvZEtrZnJyNDZlWURpb3BjVEJOcmE1YjNOcXV1SnU3S003M3g5?=
 =?utf-8?B?elhpSi9WS0RvZVlrOTk1Q2pZNTlncTJGQ0NnK2tkcSsvc2JhcFY5dlJ0VzV3?=
 =?utf-8?B?N09lNWlkUy84VlN0VHFxV3BBWTBUOWtCVTZYN1hSQzlObjMxZU1kSWdSTjE0?=
 =?utf-8?B?T1dtMkhOWjJmTjRuQ2p1QTZqTEprdnA2Y3p0VnpHcGpBWVBHLzNIZ1c0MEJa?=
 =?utf-8?B?N1hYa25FNUdXS2pZV0RXRHhwUC9HMnVSSElPVWt2c1pMZHJTTFNsdTNidVNy?=
 =?utf-8?B?eXVOSUx2VEJWVXNVMk1TMmdVb0p3MWJDbUx3Ulc3c2NrUWRheWJVUVBaRVZF?=
 =?utf-8?B?MEsrL2xiQ1pPbzJCTlI1WDNneTdPUE5uMVBscFFxenBWS0RlQ0I4bzVuajdT?=
 =?utf-8?B?L1pVOWIrVlZiWnVvNVVObGhDaE1PbHIwYVpDTGtlKzZiTklxQ2pOcnVtTGlH?=
 =?utf-8?B?YnJ3dWVDQ1JMekYyendOdk41b2FYaWN6WmVQVHVVamdvMmNDR3h0WG55Sk1Y?=
 =?utf-8?B?K0pGM0V2MW5oOVJydEF3cXhKYXIxai8zMzZwNDdJOXBUV2dSQ0pBWWZINVp4?=
 =?utf-8?B?MFVrY3I4SHlVQktUdGIrVk5NNDEvVVRwWktyWHZialFrbk8rNU8wQmwwNWFW?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c3e0a33e-02df-4a3b-48eb-08de0c0684c2
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 16:18:47.4056 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wuIWrnUAE7WWjWruUj9mJ/214B3G7d9FF+6jfu3nD8TZVqrmhtdHe7W28EurFI+OPcoq+vxEJSj+RisPllh5MA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8112
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

Quoting Jani Nikula (2025-10-15 12:00:51-03:00)
>On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> From: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>>
>> Ensure the minimum selective update line count is 4 in case of display
>> version 35 and onwards.
>>
>> Bspec: 69887
>> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_psr.c | 25 +++++++++++++++++++++++++
>>  1 file changed, 25 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/=
i915/display/intel_psr.c
>> index 2131473cead6..c663ca91f490 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -2701,6 +2701,29 @@ intel_psr_apply_su_area_workarounds(struct intel_=
crtc_state *crtc_state)
>>                  intel_psr_apply_pr_link_on_su_wa(crtc_state);
>>  }
>> =20
>> +static void intel_psr_su_area_min_lines(struct intel_crtc_state *crtc_s=
tate)
>> +{
>> +        struct intel_display *display =3D to_intel_display(crtc_state);
>> +        struct drm_rect damaged_area;
>> +
>> +        /*
>> +         * Bspec mentions 4 being minimum lines in SU for display versi=
on
>> +         * 35 and onwards.
>> +         */
>> +        if (DISPLAY_VER(display) < 35 || drm_rect_height(&crtc_state->p=
sr2_su_area) >=3D 4)
>> +                return;
>> +
>> +        damaged_area.x1 =3D crtc_state->psr2_su_area.x1;
>> +        damaged_area.y1 =3D crtc_state->psr2_su_area.y1;
>> +        damaged_area.x2 =3D crtc_state->psr2_su_area.x2;
>> +        damaged_area.y2 =3D crtc_state->psr2_su_area.y2;
>> +
>> +        damaged_area.y2 +=3D  4 - drm_rect_height(&damaged_area);
>> +        drm_rect_intersect(&damaged_area, &crtc_state->pipe_src);
>> +        damaged_area.y1 -=3D  4 - drm_rect_height(&damaged_area);
>
>Stray extra spaces in there.

Huh... Interesting that I did not catch this in checkpatch output.

Thanks for noticing.

--
Gustavo Sousa

>
>> +        clip_area_update(&crtc_state->psr2_su_area, &damaged_area, &crt=
c_state->pipe_src);
>> +}
>> +
>>  int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>>                                  struct intel_crtc *crtc)
>>  {
>> @@ -2809,6 +2832,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomi=
c_state *state,
>>          if (full_update)
>>                  goto skip_sel_fetch_set_loop;
>> =20
>> +        intel_psr_su_area_min_lines(crtc_state);
>> +
>>          intel_psr_apply_su_area_workarounds(crtc_state);
>> =20
>>          ret =3D drm_atomic_add_affected_planes(&state->base, &crtc->bas=
e);
>
>--=20
>Jani Nikula, Intel
