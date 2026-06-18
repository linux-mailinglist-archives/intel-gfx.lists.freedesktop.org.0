Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cqSSNp/WM2pmHAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 13:29:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8552869FC26
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 13:29:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="b8gF/k7k";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 832BC10F28D;
	Thu, 18 Jun 2026 11:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F38010F287;
 Thu, 18 Jun 2026 11:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781782169; x=1813318169;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kSvj7RtMhdOOleNUg8cvc/VX/ejNXsTxzc0i/Y2ZGCY=;
 b=b8gF/k7k/Z5u0EADY6GQaA3NFPSkeYKt899OhFaIEJDbVb+qdEGBSF3u
 OoL4fNX4rlDGDvxEZ0MmsKGKB6yZVObdc+L4lfFWwHPq50ZET3o73zo1l
 Sp55JnGGPM4J6dzcQUbX4493OiCj0NtO8mnTqNvoJZ0efiRN5GCLi7WJW
 14MLEpKNzYQAuRYs8ZGjlP7YwxDHDM5ND4oAPPmhLAQ3jd/VQ/X5WyxcD
 j3pM1cW8iRIFkZ8PySi9WT2Fup/NO8pS/kiuA2zVQmy9btwGMhSIuN/uW
 ucw96SezehG2l3FDvaVZUWuryvyHXfDYEVNEDqWAgERATq2XJg3zPjLTy A==;
X-CSE-ConnectionGUID: KjRGIsj4R3+HS+SzOcRloA==
X-CSE-MsgGUID: s695u18ORNW0yj5QLRtG4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="81722561"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="81722561"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 04:29:29 -0700
X-CSE-ConnectionGUID: AgP7cGL/TtWy4ePZ1c62OA==
X-CSE-MsgGUID: zroQUmKURgS55r6FoL90Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="248429443"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 04:29:29 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 04:29:28 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 04:29:28 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.66) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 04:29:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nkH06hHcwHtfF26buAusv7CPGxEDLgKvSe8KzKcXYdxrIhv+aUHIVBmfvj/xaDFCM9vt8KH0DhqPqUGO5Pf1oxbsztYu0K177u/bdzvdaU+9CjYS+OFU+TCLLbh86+G4l9dmKjXmbm3mN6JG3tFJdEzOVwUXmHWBUrfMtUxWY63RctMybcNntQ4aA1psqQjj1UkX9m8RN9VDdEP+bZz0Qwc56VF6ZrFoyE1E0B5Px9mV/9Pfon6EbBBal5jiHymAlV93N2X3Vdjrb0tZKZOoLk6btRvqfHpOOWeWK8ebscwnV+3vqCzD6qxSJE1wnTCx2U7Xn+pBzUP0eM1Bxp98aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=anPWtq8XYZioy5AtGF92O+GHkBCj4Ob01EUZKCW/LI8=;
 b=LZ/1Bt8qFUFta/mExXE4Me2dHfIXkqJNO0mUcglI6aPkb64sKgCFWM9uXCV8J5n3G50TuO36M5Yj6e6pHVq039wqqXbNLvSAFYou8VAnTiMR7m4e8sEzfL1ZS/FFr891Hu8uorIhTeNdkS6aAzVFp73mumN1nZuRrdfkMH8du74vSpULT2YhSB/Wytb89PmjH6hCKX5JyoHVpU7iSyjiaZbZVPXy4iXpQANxtr2NVsXuNZtG4XuuKRi8OanWFpP4FQ2hUdtizzYcv4tOQYFNsjjhxFmWsEjFREUqQhYMXlUC8sKcbEdQakE/OlJT72OBsSJqUDBI882UsHoGc6F8pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by DSVPR11MB938433.namprd11.prod.outlook.com (2603:10b6:8:37a::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Thu, 18 Jun
 2026 11:29:26 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0113.015; Thu, 18 Jun 2026
 11:29:26 +0000
Message-ID: <1308c176-3800-4b8d-a25a-055e71aa3319@intel.com>
Date: Thu, 18 Jun 2026 16:59:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/dp: Rename YCbCr420 bpp delta mask to native
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260527110849.3943338-1-nemesa.garg@intel.com>
 <20260527110849.3943338-3-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260527110849.3943338-3-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0135.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d5::12) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|DSVPR11MB938433:EE_
X-MS-Office365-Filtering-Correlation-Id: 7215596f-460b-4769-40a3-08decd2cda88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|18002099003|22082099003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: 2dA/E6aqvv4o8a9EKhpAvXfpq3NdbzHBRoXB1K5AiQEiKV55gOUUryoqb44sSlNl+l/tWZWygOCyVthst0IbFg+PgOhdd401DNIMQIzHCJrbLAvVfAmOfXpEcYLDmONshvQkyYWfHZXBfuoswFkLQh6bLbeRHIqVi7WhxkqgsrGCxsK2p/HxOhhrznBH4ftbU+kI7wNNnHid7jZMmhdYEm1Z/R+T07WEBwmZTj3pkuS+HzU6zWObCIHcxSXP7Toj+WLCc7/hu4HCeVYRvAvC6lQ6sizw1Zo2vvG39nGaBziVU+DZZy9txlEXnodXTFAyeiBvgCI5tiyeZaCwR5ZCnEXsyLbEGJPtsRUz5kO3ORJjYGvJ50qFK6jGTncj3B8ddtpkeCKNnC28idsLTV4d7D/xspi0gE/c9gLMBBjlxkQdCXZWN8+28vZp2KSEdCMaoa8oixC9UFrPzJrssQtUxraSuG7fCEROWIQKkvDWuQRG2eRefi4by7j/sb3Mgzd80BG8GnSP5Bhmte2k2bG7GTFLiIn96qJ0s4JG23+Kr6byuHRzhKn8sDC4VHP/PROBOzQ5QT1eoWKwe76pJi1sjj5ej4JNDciuUoWfD/iNVBaQMmCXt5nEsqJSHSG7RgfocF1t7dgo9mNyEoFhCjS0MYuXZ29le7uEysiTLn530zoQkRMEknsPC3BR1lqqtZxT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWZNK05TK2UwVEZUY2JMR3RkMTZKdE5GcXUwOHVBVXIyUjVtZ1NGRzgxK1NV?=
 =?utf-8?B?Wit3OUJwOHlwRlZxTE9HRXFOSnVpYitrQnFBUFk3bW9kZU9PNmc0V0hGOHBL?=
 =?utf-8?B?T1JERjBwZGQ3QVhMdHcwNVhOd2R1T0hVM1drMjFBVUo4cGIyeFUvZFJaYjJa?=
 =?utf-8?B?MG9wd0d6bi9SaFQxQU50c25QbXZuVjQrcFZERjB4dWJUcU9abnhxSTBFQlBD?=
 =?utf-8?B?c2dtaERoR3JDQWhhblhKcmVzY3hVL0VHTVIzNENjWHovVi9pK0R5WlRFV1R4?=
 =?utf-8?B?ekRRaldYYk9YZk0xdVE3SXU1OHd1bGxzajhERWlGMkpmd01yeXNHK1BmQnFz?=
 =?utf-8?B?akkzcUZrSEEvMmFBekM0U0NtQWFDRTNVanUvOVY3QnlvaDkyQS9LbDBML3Jk?=
 =?utf-8?B?V0paRmYyTVIxYlNLQ3Z4MkNremVEZG5DVlBtd1BtNGlnY0UzQXFUQUFUZm9W?=
 =?utf-8?B?WkkwYk16TUlEZmsvb1VObStIelhRMndYRU1mYzE1c1JGT2xGVStuekp6QWxx?=
 =?utf-8?B?VXNBUThuejFYcmxIRml3SnFaVUg3N1FHd2xsSHZYbXZxRGNvM0NaV2EvRXcz?=
 =?utf-8?B?V3F0b2RFZ0hnM2Z6cXJGUUpUVHY1bk5oaW9hSTV5SVMzWDd6SE5weEZGem4y?=
 =?utf-8?B?ZGV2M3NEZTByWWVjRnJFWXF3L1BMWi9mbk5MLzFlUkREUzJFZGRaZ3NJUnRs?=
 =?utf-8?B?V1QvMnZwTjAvckEyZ2V0SUpxK0xFNzhBMGREN0dyTEY4TjNpVHVXM1g0V0lY?=
 =?utf-8?B?RVRHdGp6OEtqSVVPMUt3aFBLVHNPMnZoQkdiTmQ4dFNMelVoMFBoSkZtMjVq?=
 =?utf-8?B?MVhWeXFVeTBCMXV1THhlVkNZZzFRdkRpMnF3M2JGOWVaZVIyQ1U3b1VLUVl3?=
 =?utf-8?B?b004VEdVMmdRNjN6WkYxUEQwT3BFRVp1QkxhTjA1YW1Sc29hano5SFFCNkpM?=
 =?utf-8?B?Y3l4cE10Y3ZBZzl1WmpFdWhmSDFUMG1IZUp5WTFsMnoxZTBpMjFaZEN6M0Y4?=
 =?utf-8?B?aFJrdEsrWHpIK1RoQ25SMUVCZndENEhEQTcyelU0MnA2TFBuYnJxTjJKYTRs?=
 =?utf-8?B?VnlvWkQveXRQSjBMcTBoYXlPeklTbmExR0FnMVlpVWRyQjNwMVRNekhMQWZr?=
 =?utf-8?B?Wkh4UGtLZFdhclJ6MmpDRjlSY1g5Um5sVjNTZVhyZ1NSNkFUMGU1a2R5RXdD?=
 =?utf-8?B?ZXhVdS85ZnZCcUtDeGg0bG9aYlc2TjMzSXVFTkZ3ODkxZ1dpMVBqOFVPR0Vs?=
 =?utf-8?B?VWV1VmdINVNsMUMrUzA3RDBNL0JBNldpck14THRLMEszWFZ2aWVRc2lBSXFM?=
 =?utf-8?B?YUx1Q1lRU1ZUWXoyQkwwa2loWXp1ZDIrdWFCdERiM3ZWOTBRek9oUnRqbWw2?=
 =?utf-8?B?N2h2T3JzQXcwSmpDOU9ZMStGVUsxNFFIZjhQZGZmWWppSE1aMEhucGlKbHRK?=
 =?utf-8?B?RWExZ0VFN2p3L2FoOWdoTHBkd0IyNFc1am0zcjNsenl2YkpoSGV1NWpPbUQ0?=
 =?utf-8?B?eTlseWFkaTJtNW9MakVNY3RvbmRWbE95YXVldGlmWWp5RitwYS9mT21uWm9l?=
 =?utf-8?B?cGQzN3Z5UmFVeWpLZ0Y3OXN2V25oME4rK1lFa1o1TmtlYUlTTyt3OHJ1bWdU?=
 =?utf-8?B?WER2ZlU3dXpZS1U2SE9tc0hPSFpsMXBQLytMcUZEdXVtV1V2NmVLakFGcHZB?=
 =?utf-8?B?OTliMjFwSzBBclBTUnpFUU1DZEFveTErSFVnYmVwVzFNN0VzWjhCWGNwLzlJ?=
 =?utf-8?B?a1NJcHdySGEzaFowZm1iSHh1RUVlckp4TVRGRnlaZkhTcHZjeTQ0UVloWmkx?=
 =?utf-8?B?a0ZWc3BleldhSjNSVnJPaEVtWWNPbEcrNGMrTGMzZndnTGh0ODJsMjdVdVRr?=
 =?utf-8?B?Mklwemc2Nzgya3lXUld1NTJNTk1vR3dNYkRpTDMrZEduekhVbUpuR20zRDJu?=
 =?utf-8?B?cjd4QkRrTE9JZU92WlpobGo1aGlHL2dra1V6NkJscW5US2Q4YWhCSVpYM2RS?=
 =?utf-8?B?dTRDL1RqOXJ0MzU0MEtWVmhqazEwR2t2MFU5UWJMcHRHdkFjYm43T3BxWFZM?=
 =?utf-8?B?SVgwNWhCdE1lRTZsYmZvNm9aQzA1dGw5YXAyMGF3eTdHdHdMSHRYcnBBWmQ2?=
 =?utf-8?B?RWlKZTV1enZFZUFKSFFha1ozbnI0Rm5kczJ2MnZ6bFRVUnF2aWJpZElMSW5j?=
 =?utf-8?B?NENvbDNSM3JkcU1iT2ptbjhhZU1NQ3A1bWpvWjVnTDVUMURXMUNiRWwxd29x?=
 =?utf-8?B?SURjdUZ1ckhLbHM0aU9uOTF3VElzR1ZDRWNaeFhEbTJyN1dVNG5lSkZZNVhp?=
 =?utf-8?B?bTM5aS9PempWMi9jMXR4WTYvM2RIR0s3SWhOVyt5N1BhQ1FBVklyL3dMOG1z?=
 =?utf-8?Q?LzcCJa8xvBqSRf9E=3D?=
X-Exchange-RoutingPolicyChecked: F1IBIXR/zzkpRiYj1mf82pED2E98MgzM+w/p5eGG+jnfDba8dQo7rb6f2jViQk5eeK38sVLa8VRXRw03oGFnD25gGfhgfraK4ddevW9cICev/FgqgJhp/Wkyr21/Az4iJ1j/oKSyfYjeTlTK3P8ih0i41sU9zZ93mmf/N+CfxYsrYmalIj6nzvqRCCziqJ1cVx+YUlwQ6EShdrwhCS7BRA5UZ+Q9t34In1lYUlETVzIZNB6drmTwmTzjKQPujzxUNq+WgR/Z4UdsFMAycjYXRLAzKjqXWiRGV+DGfXrTVRprcE1JSiH5OlIz0OQGV95UMwX1m8rlstyIOBE8CG8Fiw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7215596f-460b-4769-40a3-08decd2cda88
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2026 11:29:26.5269 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wAMHxmlb/DQVuX5UWh92Zan+yvIBceBXlgv6wHdbobTLXjeEQQxX9E6DjS6K26G5iWhfswLc8jSxwiFU3LWDajBcHRrCQkCvxbz0NgKh5Ss=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSVPR11MB938433
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8552869FC26


On 5/27/2026 4:38 PM, Nemesa Garg wrote:
> Rename DP_DSC_RGB_YCbCr420_MAX_BPP_DELTA_MASK to
> DP_DSC_NATIVE_YCbCr420_MAX_BPP_DELTA_MASK to align with
> the DP DSC specification, where the field represents the
> native YCbCr 4:2:0 format.
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   include/drm/display/drm_dp.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index e65aafcccf99..dce290acf735 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -356,7 +356,7 @@
>   
>   #define DP_DSC_MAX_BPP_DELTA		    0x06E
>   # define DP_DSC_RGB_YCbCr444_MAX_BPP_DELTA_MASK 0x1f
> -# define DP_DSC_RGB_YCbCr420_MAX_BPP_DELTA_MASK 0xe0
> +# define DP_DSC_NATIVE_YCbCr420_MAX_BPP_DELTA_MASK 0xe0
>   
>   #define DP_DSC_BITS_PER_PIXEL_INC           0x06F
>   # define DP_DSC_BITS_PER_PIXEL_1_16         0x0
