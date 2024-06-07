Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B35490047C
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:19:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1629E10EC23;
	Fri,  7 Jun 2024 13:19:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aZbuyUn6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F81510EC23
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 13:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717766393; x=1749302393;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=izXLwjc/+fBKKkFV9s/8ICqVweIhBTVAWtHzUoG2oRk=;
 b=aZbuyUn6qmhii9EEkGD7+3OBz0+eB2OA/tueWFawmF8TsS7fdL7in6oc
 ql3xNJgqA4shm8b8PSE6OYf84np7VJV9xNIyux3ZiGUTY18Z0ejFIWPPV
 y575oYHhwTH5wfkuOq4qKTPjltvqLMcKe93l89NZevytf67z4ioVDxzfR
 lX2vk6TsPdHlRytzg7U35J8BRSajB47bl7htlJ7gkSSmxX5f3J/okPvU0
 X1n3vb3VM/I5YD4pQA5bnJZICRlqr7Zy58YQMYD5LgcJTbg4eRh+MjTwl
 jCP201VbI63cMiVRz1mZcFsjTnhIKF+4Dlvv7ViWeqGInXgSAjX++zJf6 A==;
X-CSE-ConnectionGUID: xLMosyR1RziQLVhixdMZrg==
X-CSE-MsgGUID: yEJdMCWYRmSjttS/cBV9Kw==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14319815"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14319815"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:19:51 -0700
X-CSE-ConnectionGUID: Em1AwU9fQ3ytpTQ6E9jqhw==
X-CSE-MsgGUID: ekhzUbnZTfKjgOD1Av/j2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="75806716"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jun 2024 06:19:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 06:19:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 06:19:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 7 Jun 2024 06:19:50 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 7 Jun 2024 06:19:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D39tCFe+Cg+ChOqszHp+SWvRlJ3mR++fYxVCY/RhLOo3/M+7VFjtY00EM7UvaqRceH/IRLY8bX/kyN2+mXekKBNj2216cqNe0za7Drf90AiGaYU4NEzd/aX78KGl7HLUu51q4Q+WPtDSso82f3QexyHds/pIVPr2lfJmx5SJnWfVI6/OOr2nNhg3MUpeLR+GRmNWZeJVdeVJZGYxT/p5Krb4mwxPcMK3ysbgZheaM/Qxii6gADZOW1UqGgW9t62zzvk2hcHwezJh8p+vybK3wEuKhtJjzETp+kQFVStD2QV9Ev68VR3in2WHxMARCDc1qpHc/KjZe+ArAzDA5dFxQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=izXLwjc/+fBKKkFV9s/8ICqVweIhBTVAWtHzUoG2oRk=;
 b=j6iqcdFWDpnwo1K/8NH56rOdzkZarWhi0+s7ZOx5NHfJHyTEGS4uuNDa9W67X2yWFnRGXW+z5khTMzWdkf2mLi+HdYYesr3+51ci2Syv3YaYqdKjQQ7cQ4zFb2aQ68PQmr5Gpvoe7jQnEiONgy6mIxqWWBHzRLGuk2kleaCvRTUAA2TR2znEqeeYohIBGOWvyjGvU5u3G4u1tjSebanLICnGDrQVrEEei/Hn9iqZTA2qY8axo0hzqIQO4KoUpvR7WuLpvwpWC9xyiJkgAp/N/U/6xokBoM6baKpkftyfbIhC1BJgHU2/PLcMOalGUC/LqM1X2PM0N0/olEmK/3VKXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB8703.namprd11.prod.outlook.com (2603:10b6:610:1cd::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.35; Fri, 7 Jun
 2024 13:19:46 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.021; Fri, 7 Jun 2024
 13:19:46 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH v6 11/26] drm/i915/psr: Move vblank length check to
 separate function
Thread-Topic: [PATCH v6 11/26] drm/i915/psr: Move vblank length check to
 separate function
Thread-Index: AQHatzLfWf8fm6o1xkS5TQuwQg1fU7G61bAAgAAL94CAAUZpgIAAJESA
Date: Fri, 7 Jun 2024 13:19:46 +0000
Message-ID: <f9c5296de3cc67e20b95f96a05a6737cbd5b6bee.camel@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-12-jouni.hogander@intel.com>
 <PH7PR11MB59814F6E88C3E874C2BC89EDF9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <dca159f3bc64a46aa16c47d2a058effd341b9560.camel@intel.com>
 <PH7PR11MB598151A142A3A56CC06D03D1F9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB598151A142A3A56CC06D03D1F9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB8703:EE_
x-ms-office365-filtering-correlation-id: c77497b1-27ca-4553-72c6-08dc86f48059
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?Y1llWFlUZUpCK0pIMGZac25HdmFZRk5oVTBKSzB6QVVKQ0FCcDVCb3RSVE1F?=
 =?utf-8?B?Mko0c29nWWRqaThPQ25uOFdLeVFwYWNRQjR5U1hvWGFsR1RjODBiQjJjOEpE?=
 =?utf-8?B?Wi92MklxRWhMcFF5bVZ3dnVoUU4vYU9aWm1Eb3ZjM2tVSHdGOVJlQTFUSzJ4?=
 =?utf-8?B?eVR6NjVwN3B2WHJlY0NNZ1dpODltZmZsM1J2RVRHYXBuVVFOYjllb1d3d0lR?=
 =?utf-8?B?VXdGWk1PK3pYQ1JtaU1QcDhCWEFIUWdPMjBPZTVhTU1KVmFUdVBtNnRpc3pE?=
 =?utf-8?B?TERxQlBXd05hL2N0N1NzTktDRFJuWThTYUVleUlaZXk5dVAycUk0UXVwRGsr?=
 =?utf-8?B?bGRXd2piY0NSZzVxSVhySzhDYWFVaWs0NllIWERnVTk0YzZkeEpXeUlXSkpT?=
 =?utf-8?B?YTdzWFVuYXNIcklXMFF0bzhhSFhucWVjT0VZdHVkT2RsSDY2dHdWN1FjZTBL?=
 =?utf-8?B?M2lXSzV4TFJoVUw4cFg2b3dCbVNBdFZlcVVKSHl3QnRYbGw1K2ZiRmVqYjB6?=
 =?utf-8?B?WTE3NUs5dEo2M3g1a1FETkJxRGprMitadG1jV0NuRXhLMFNnZUN2NlpQMUY3?=
 =?utf-8?B?Z1A0N1VUTVZnRmYzSUorTEV2a2lXWHhYK1l3ODErTGxnUFZCMitlU0daUEQr?=
 =?utf-8?B?bXd1UjhwdjZyblFQc2RmVDljU0VjZ215Tm9WTytjT1Z3UlRpQzlZK1N0UXV6?=
 =?utf-8?B?aTFuR3NMRDhadFp3RkZxM2hNaHQxRlR1NmNHNVdTaFFYanMrOXB1emhNM0dz?=
 =?utf-8?B?aUI0dC9KRytkT3JUbkxsNW1sdzQyMkQ4MmtVTmM5blhnZkRoMXhRVEl6dXRO?=
 =?utf-8?B?SlNNYXhDdjk3T1FyZDZOTnRRMVZRMTZhMFNGdjJKZ3p4dmNKUFNtQkdlaWlt?=
 =?utf-8?B?d3lKVUJJa01SUXVVZmRKV1NzdDB1cXQ3U05TcGRMa2k1ZGJFdmJRaTN3bU0z?=
 =?utf-8?B?ODcxeHlRS0FQTWxMaUVzQzhTclRudy90U0hNTUVsSkJ1ajVlNE9aRmg2ZHhE?=
 =?utf-8?B?ZHRKZkZpcXZvaHBuVHZCOWRqcWk3NFgwNUwzZ1YxVXVYRG5XRnRRdFZoYXpT?=
 =?utf-8?B?aUpBMEJITGdEVVd2L3JzU2lhMzFyZHdYc0JaN0Q3Z0luTmt3ZGFsOGdEclRw?=
 =?utf-8?B?dER1NDZFMnFUdldGUmJCbHY5ZVB1SkM0L0NvSXhsOCt5Y0RuZHdEME1uMlA0?=
 =?utf-8?B?dzdKc3NDMEpsOXZmeHBUejVqaE4wVUZOK1ZBdkd5TCt1WnJNeDM2TkorNWpr?=
 =?utf-8?B?R3p4R2JNdHI0THYxbUZFUFJGai9yRThnTHF1QTZBaWg5Y2lDekM2NGM2WTd3?=
 =?utf-8?B?QVA1WEpveTJmVE1kWE82WkFRM3p5WFViT29PK2IvL2NiWlVuZ1dYeWpTTmZV?=
 =?utf-8?B?eXc1Z29UM1JSMkREN2l0Yll0dG5weTJkMVdBMG5oK3ZmNXl3TU04ek9BV0kw?=
 =?utf-8?B?eGl2c3U0T2ZrQXFORHNFbVk3K2ZrSjFNZDhVMDA5RjlFNmhzclJROUdET1pG?=
 =?utf-8?B?dzBCb1RkWklhSG1UYnpaSkdhdEZNa1JxcklHei96TGs3a2dOVFR0djFNemx2?=
 =?utf-8?B?QUY3SXNZR1RyUEtwdWNEMTMvdFE5cDVGTkorU2tBT0RGZWF6a0Rsd2dtWlNW?=
 =?utf-8?B?cHV4SWNncUdwM09ZOHFWUXc1TG45YnQzdU5KQTZxVW82Qnlnd0hxMzRrMjlF?=
 =?utf-8?B?eTFRd1pkSTZZZmFKRFJFSnVpOU5RUGNuUW1MN212Rkc5Mm1sZi9CMHFBdmpk?=
 =?utf-8?B?QlV2SnpTUTFFNFQwcndVeWdCcmROend4bVFodERCcTRCS3NWMGxuMzlYdE1M?=
 =?utf-8?Q?8wL7KcTFExA+1mXmy17NZfP8NzO8XcpOQQgIo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Mkh1VExaZGNaR2t0bi8yRjMyODU0QW0zdU8yVTlkczVHZmh2cVRtdUE4ZFEx?=
 =?utf-8?B?L3ZtTEdMaFI1anNyOHY4bGF3R3Rza0IvTk81UjBveU9hSDhET01QL25UcFZO?=
 =?utf-8?B?L0h0NysxRzBTM245cjBlTlVEM05DRmxvWFI2cmtadU01TllwZG1FSS8zSWxp?=
 =?utf-8?B?VHpMWGVFdTVKQzNsejNlcDJ5Vmt4NFREeWxJWWgvUmhKTjRlQ24rR2l1QnJR?=
 =?utf-8?B?TU85a09jaS9ZQ3BOR0ZteTJoRUp3MDE5Yis0R0duS3JEVE9ETTcvS0RQdW1x?=
 =?utf-8?B?VG9LOTRPSXlsV1paa08rZk11SXMrUmZhbDU3UlZQcEJoaTI1WThqbHRBWVRt?=
 =?utf-8?B?YzdhWEs5ZDBwdnZkbjZUNExmN0E5RENBTUZuazZOZUZTWEpYK1JiZDB1UFlr?=
 =?utf-8?B?R2RGMFlpTkdHSUk4dXU0aFI1OXVGekhsNHl6TTF1OG5mRU13YzFGUTNoUXcr?=
 =?utf-8?B?ZS84ZTd1M0tDeVdnWkR2MFBiM3MzNVJWNkt6cUZuNmo3dkVqMXZIYzhRWnVN?=
 =?utf-8?B?bmJ5LzRTc2RFbGN5cWpxTXZGd1dUMlRzVSsxR3BieTJ3clhiaHhhMHk4aEY5?=
 =?utf-8?B?cHZuN1BzeEpUSUM0Qm5IRVQwMmxBL2prbHhBNFdxdGduWnhpbGcwV01GN0p6?=
 =?utf-8?B?ZkdhQUJPMmpFNXYyS0dzcm5Md3pJbm5HcndMc3VJenpwWURsRWZvVWV4Z1A3?=
 =?utf-8?B?MU1naytWbEdqbzJNMzh0V0pUc1cvRjFLQXVsVGhjdFRlYVc0RUlhYmZtU1Zr?=
 =?utf-8?B?ME8zbnpvMFdPSlE0TzRhT2pxSGo5WXNXODd4cUQvdWErWGVzS3lVUnNzTTVV?=
 =?utf-8?B?ZjBGS2Rqc3c2ZGg2dlNhWmtrc0ZRMFpyWDNGc0JsdzRwVGs5U0lqamhuQU9G?=
 =?utf-8?B?RExzbUxzamp6aUxnYmdXKzlzRFZqU2kxalFBRWpEeU1rRitzbllVdlF1ajQy?=
 =?utf-8?B?cGsrWnFUQ1U0VGxvbmZqdTYwcDk4ZTk4emtlb3FWWlRMUmZqR2FWTG1oMG90?=
 =?utf-8?B?Q1JlcThObEFIL0tySzhubTZHRHY4bnNRaFZINFk4RkU4Y0owMi91Zm9OMVBi?=
 =?utf-8?B?V3p6aFBmZ1JyVHNwNE92cVVLa0tKNjMxSDdHTWlRQTY4TGtYTHZrcjRTTXIw?=
 =?utf-8?B?aUxMN1M0ZWNDci9KMGJpdDBLb2p5eThNQldYN0V6bVN4MEp2TCtGVWVIUWht?=
 =?utf-8?B?Smkxa2lOZnVZSGlLTVlkdUdxUkNlbHFUVTVSYXhzSU1EaUJ4Q0N1NlQrcWVO?=
 =?utf-8?B?S3dKeW51YzM4ck1Wdmc4WjdXZm1LNC9UNXZmT2VGakwzMUYvN05jbW1RSXBJ?=
 =?utf-8?B?VXBHdmQ5TnhseG15eHJmK2YzRmxOMGE0WEhtVFh4MHR2cjMwdmNja0drODRO?=
 =?utf-8?B?VGtvakd3NlVsb3V3UyttTzA2Rk5lRnBOQnRVYlN4cFMySFJEUnMwMHlLM3JL?=
 =?utf-8?B?NDJHTy9QK2FnV2dIMTdQS2RYeTF3dTBoV0RsdlBBb21JS09ZMkkwUDFTOE9O?=
 =?utf-8?B?Uk5MbTNrbE80NVNDQXJoQ3hQL1libFlPWVhlVXRyem9sMnFQaHk0Sm5rTXQ1?=
 =?utf-8?B?K2FrUG5vNzNTRW0wT3c2UGVaTDFmMWdvVzFJdHRxYkdwK0dxSHExeGNrOFZv?=
 =?utf-8?B?bEUweUpsUWRvRTZnaU5XYmk3NlR3R2tnN21EZ0xjYS9WT29PdXBHRTZoSHBn?=
 =?utf-8?B?UEZrYW92d0MvL01iSElpSk0wNUZLQ0tpVlkrS1A0ajBuODliTWlmQzdBMW9C?=
 =?utf-8?B?V3ptWVNBN1VvTlRNcit5L1RGUkYxaDk0SlRROUM4Z3F2akdnc205NWFSTEw1?=
 =?utf-8?B?YWdsRmFmUjdwbjJDcC81ZWN5NmQ5eU1QcTFKQWlqUjRSUVk1ZGdUdjd0UEdY?=
 =?utf-8?B?dzV4WXRPdUgya09YQWZ3N0dwb0lEazgwc0hMYUJkUU00K05ZNEgvNkN0amtk?=
 =?utf-8?B?SG9XeDhpdHI3SG8rOE80MXNMZnllN09nYVQvQVhFdFpEdkNUTEtkbTV0aHhT?=
 =?utf-8?B?RUZXNkdhMnB0cnJUTU40d3FLKzFHa1lqVGJMQmI3U2Q4NjlpcTlTVWtQMGhn?=
 =?utf-8?B?U2p1MGdOZkpIR0NIWVNSVHhZV0FxVWJZcGxRYURFQVY3bUVUUjZYV01MM2RN?=
 =?utf-8?B?QTkwTkd1c0g1UFRkVUJlNnhmVFU0S2I5c0VpR0orT25RcWxOS2c2b0d3c2xw?=
 =?utf-8?B?RFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3A90A9BAE26DC74C9F8416313A488A3C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c77497b1-27ca-4553-72c6-08dc86f48059
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2024 13:19:46.2947 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z+Iur4YqKonfK3CmeJmxJV6YBwD+Xsh8ZcES1MGz5fCdMICrkLsLG7+y1S4f6/wsEnnNmFQNo+raiRghS9yBMqPViAl/0fjPuotmN4Hmd0w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8703
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

T24gRnJpLCAyMDI0LTA2LTA3IGF0IDExOjA5ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogVGh1cnNkYXks
IEp1bmUgNiwgMjAyNCA5OjEyIFBNDQo+ID4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1h
bm5hQGludGVsLmNvbT47IGludGVsLQ0KPiA+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
PiBDYzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDog
UmU6IFtQQVRDSCB2NiAxMS8yNl0gZHJtL2k5MTUvcHNyOiBNb3ZlIHZibGFuayBsZW5ndGgNCj4g
PiBjaGVjayB0bw0KPiA+IHNlcGFyYXRlIGZ1bmN0aW9uDQo+ID4gDQo+ID4gT24gVGh1LCAyMDI0
LTA2LTA2IGF0IDE0OjU4ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToNCj4gPiA+IA0KPiA+
ID4gDQo+ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiA+IEZyb206IEhv
Z2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiBTZW50OiBX
ZWRuZXNkYXksIEp1bmUgNSwgMjAyNCAzOjU2IFBNDQo+ID4gPiA+IFRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiA+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4gPiA+ID4gPG1pa2Eua2Fob2xhQGludGVs
LmNvbT47IEhvZ2FuZGVyLCBKb3VuaQ0KPiA+ID4gPiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pg0KPiA+ID4gPiBTdWJqZWN0OiBbUEFUQ0ggdjYgMTEvMjZdIGRybS9pOTE1L3BzcjogTW92ZSB2
YmxhbmsgbGVuZ3RoDQo+ID4gPiA+IGNoZWNrIHRvDQo+ID4gPiA+IHNlcGFyYXRlIGZ1bmN0aW9u
DQo+ID4gPiA+IA0KPiA+ID4gPiBXZSBhcmUgYWJvdXQgdG8gYWRkIG1vcmUgY29tcGxleGl0eSB0
byB2YmxhbmsgbGVuZ3RoIGNoZWNrLiBJdA0KPiA+ID4gPiBtYWtlcw0KPiA+ID4gPiBzZW5zZSB0
byBtb3ZlIGl0IHRvIHNlcGFyYXRlIGZ1bmN0aW9uIGZvciBzYWtlIG9mIGNsYXJpdHkuDQo+ID4g
PiA+IA0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDE4ICsrKysrKysrKysrKysrKy0NCj4gPiA+ID4gLS0N
Cj4gPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBpbmRleCAzNTMwZTVmNDQwOTYuLjIzYzNmZWQxZjk4MyAx
MDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+ID4gPiA+IEBAIC0xMjQzLDYgKzEyNDMsMjAgQEAgc3RhdGljIGludA0KPiA+ID4gPiBp
bnRlbF9wc3JfZW50cnlfc2V0dXBfZnJhbWVzKHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9kcCAqaW50
ZWxfZHAsDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZW50cnlfc2V0dXBfZnJhbWVz
Ow0KPiA+ID4gPiDCoH0NCj4gPiA+ID4gDQo+ID4gPiA+ICtzdGF0aWMgYm9vbCB2YmxhbmtfbGVu
Z3RoX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gPiA+ICpjcnRjX3N0YXRlKSB7DQo+ID4gPiAN
Cj4gPiA+IEFzIHRoaXMgZnVuY3Rpb24gc3BlY2lmaWMgdG8gcHNyMiwgbWF5YmUgZ29vZCB0byBo
YXZlIG5hbWUgYXMNCj4gPiA+IHBzcjJfdmJsYW5rX2xlbmd0aF92YWxpZCgpLiBPdGhlcndpc2Ug
dGhlIGNoYW5nZXMgbG9va3Mgb2sgdG8gbWUuDQo+ID4gDQo+ID4gUGxlYXNlIGNoZWNrIHBhdGNo
IDE5LiBUaGF0IGlzIGFjdHVhbGx5IG1vdmluZyB0aGlzIHRvIGJlIGNvbW1vbg0KPiA+IGZvciBQ
YW5lbA0KPiA+IFJlcGxheSBhbmQgUFNSLg0KPiANCj4gSG93IGFib3V0IHN1X3ZibGFua19sZW5n
dGhfdmFsaWQoKSA/IHRoaXMgZnVuY3Rpb24gaXMgc3BlY2lmaWMgdG8NCj4gcHNyMi9wciBhbmQg
dGhlIG5hbWUgc291bmRzIGdlbmVyaWMgdG8gbWUuDQoNCk9rLCBJIHdpbGwgdHJ5IHRvIGZpZ3Vy
ZSBvdXQgc29tZXRoaW5nIGVsc2UuLi4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0K
PiBSZWdhcmRzLA0KPiBBbmltZXNoDQo+IA0KPiA+IA0KPiA+IEJSLA0KPiA+IA0KPiA+IEpvdW5p
IEjDtmdhbmRlcg0KPiA+IA0KPiA+ID4gDQo+ID4gPiBSZWdhcmRzLA0KPiA+ID4gQW5pbWVzaA0K
PiA+ID4gPiArwqDCoMKgwqDCoMKgwqBpbnQgdmJsYW5rID0gY3J0Y19zdGF0ZS0NCj4gPiA+ID4g
Pmh3LmFkanVzdGVkX21vZGUuY3J0Y192YmxhbmtfZW5kIC0NCj4gPiA+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y192Ymxh
bmtfc3RhcnQ7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGludCB3YWtlX2xpbmVzID0gcHNyMl9i
bG9ja19jb3VudF9saW5lcyhpbnRlbF9kcCk7DQo+ID4gPiA+ICsNCj4gPiA+ID4gK8KgwqDCoMKg
wqDCoMKgLyogVmJsYW5rID49IFBTUjJfQ1RMIEJsb2NrIENvdW50IE51bWJlciBtYXhpbXVtIGxp
bmUNCj4gPiA+ID4gY291bnQNCj4gPiA+ID4gKi8NCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYg
KHZibGFuayA8IHdha2VfbGluZXMpDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqByZXR1cm4gZmFsc2U7DQo+ID4gPiA+ICsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgcmV0
dXJuIHRydWU7DQo+ID4gPiA+ICt9DQo+ID4gPiA+ICsNCj4gPiA+ID4gwqBzdGF0aWMgYm9vbCBp
bnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gPiA+ICpjcnRjX3N0
YXRlKcKgIHsgQEAgLQ0KPiA+ID4gPiAxMzMzLDkgKzEzNDcsNyBAQCBzdGF0aWMgYm9vbCBpbnRl
bF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfZHAgKmludGVsX2RwLA0K
PiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+ID4gPiANCj4gPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoC8qIFZibGFuayA+PSBQU1IyX0NUTCBCbG9jayBDb3VudCBOdW1iZXIgbWF4aW11bSBsaW5l
DQo+ID4gPiA+IGNvdW50DQo+ID4gPiA+ICovDQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChj
cnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfdmJsYW5rX2VuZCAtDQo+ID4gPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfdmJs
YW5rX3N0YXJ0IDwNCj4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgIHBzcjJfYmxvY2tfY291
bnRfbGluZXMoaW50ZWxfZHApKSB7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmICghdmJsYW5r
X2xlbmd0aF92YWxpZChpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpIHsNCj4gPiA+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICJQU1IyIG5vdCBlbmFibGVkLCB0b28gc2hvcnQgdmJsYW5rDQo+ID4gPiA+IHRpbWVcbiIpOw0K
PiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsNCj4g
PiA+ID4gLS0NCj4gPiA+ID4gMi4zNC4xDQo+ID4gPiANCj4gDQoNCg==
