Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFdmLtdiBGq6HgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 13:39:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D37AB53264D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 13:39:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E27010E31D;
	Wed, 13 May 2026 11:39:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q1KxtVs9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 316B310E31D
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 11:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778672340; x=1810208340;
 h=content-transfer-encoding:date:message-id:subject:from:
 to:cc:references:in-reply-to:mime-version;
 bh=pvOlMotCvv/lfvR4DMMJcH7VPOcv107Hp6jOJvYDBB0=;
 b=Q1KxtVs9L8XAFlQdpw0o6EXu6Ib+MJT9CvYQHaRCbnHnJ9lDYbZg1yHM
 IE811zgAoZfGInDWasCBkgKUAvmhq9delkkxCUuV7tsaulUCz3iJe/1XD
 xZqdBmVjc50WTCKlNX7xfD/Exawc26TVz65+1oZK6qf2dk6odO6YrWNHy
 vQkhygAWB9ksM0lbFAcsUaiArsRNIh3uQFG9Kfr/Pin8LILCAncwCID9F
 GDAsNPppO4aoaNbq3mgFkqjsOZ3SEfsZSsPr7kXGW4SKcbuiUsPGCa+KA
 4+Oa7QS/+lI/KE0RitUCtPsXWCJQJyec8PU2pqwk89HnG5xL51iBqZI++ g==;
X-CSE-ConnectionGUID: LJBfii09SSGbAVGriMH0lg==
X-CSE-MsgGUID: FfWI5MwhQCyOfAezWPXTeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="79454059"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="79454059"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 04:39:00 -0700
X-CSE-ConnectionGUID: 1ZhwPRDlQ0CSVx50ssbKZA==
X-CSE-MsgGUID: wgckz58lTGmkHDT4rrFCTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="233792369"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 04:39:00 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 04:38:59 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 13 May 2026 04:38:59 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.49) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 04:38:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oFQLjC4EewErqDUgyLsNWwq7VACy6dCMt938Bm+bASAXN921h0NEXjDka6E2EAy+KPxgbJ2eJ95ODwXfQVAHdH0mSVa5y8XFpqVgmPgvY5+QF5/rrXz1qUkCzynKPZedP9zCJuDVaUO3zIpjc/xahdqUJuHyDV2KwZlg4XEbO4k6LZXTx50CdK74Uk6Zf90tkh3kHmptjQTokHMFZnY2zKlOaNydrpm5tv9sSNfUXZPxSHvFj51JydyxdjeL3naWHZpnI0HKRBfEZN/uQhc/NmpEc3t1Eo4awtwukDM5hHgtN5crqNSjHgDwbsD3EpQ5evrSu4VB7IWDjyn0WMj1IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3gZICSSl6XQino/Ww0D+RJKkoEMI4mKPOXanmj6OQCE=;
 b=dVg7xUZ+5wj4ZL/gKRbl8PdZOD/lfhHOYuSzuBNCvoUJt0EXWoCDyteQfu3SZIjN1R3kl13qCv9RQDCuQWGW1zEDkN8ZExvOBXftPqRhQdHg1Gj8ZVUCzP2+Io9bQG2sa3zgerJ7ymteZDPIktBN8OX4ppZUrYyNRFHF3rwCc6Fq2BGRiWty7I/Q9zlh8/JDOP9gq3CdcPSUz5H4RL6osX7cKu22QNzhjMu10VNbO3SeocT8By13NaleY1nNfYjVPwHrvk+GsfDW8e2ilGU4m+gYC0RJVT2Id+5P7CTw25yK9U3DQqODqJXY287LJ6q9suGroMBovVdWZbskRanFyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by LV3PR11MB8694.namprd11.prod.outlook.com (2603:10b6:408:21b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Wed, 13 May
 2026 11:38:53 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9846.025; Wed, 13 May 2026
 11:38:53 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 13 May 2026 13:38:47 +0200
Message-ID: <DIHIPV1FJITR.1FJEZMGRDSR7I@intel.com>
Subject: Re: [PATCH] drm/i915: skip __i915_request_skip() for already
 signaled requests
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>,
 <stable@vger.kernel.org>
X-Mailer: aerc 0.21.0
References: <fe76921d35b6ae85aa651822726d0d9815aa5362.1776339012.git.sebastian.brzezinka@intel.com>
 <c9c1270b-f724-45dd-a66d-f7b30f6c6087@ursulin.net>
In-Reply-To: <c9c1270b-f724-45dd-a66d-f7b30f6c6087@ursulin.net>
X-ClientProxiedBy: DB8PR04CA0001.eurprd04.prod.outlook.com
 (2603:10a6:10:110::11) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|LV3PR11MB8694:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a9fe3bb-5e08-48bb-6f6e-08deb0e435c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|22082099003|11063799003|56012099003;
X-Microsoft-Antispam-Message-Info: Q03EFUORLveVh3LUrM++28WhmilpFM+sUXCwNi5f7RKpajprKEj8fFKhG9bl1CWbRMHGMURsk+kfDTADMXRuL7C9E8EavWo2jUAdTOg8Mu2KqVovFYF5ly8uLX38umH93Y+JQJpgnbtF2Yc46n6piupGM0ypFcYIntApyBA6Tewpc4ubHE1LEDY/g44UezJtMR9ZPP0Sz2bJICVyBcqzP55dr8mn5w9Ka8HKZxDiJ4zjPcvHgmUUadFZ1kCvH9rgjBG9ZCIvuDleWtcoG19y1GAqzUY2SR5smMtUDPVU/LpnFhxdQt0Z6aZzEmOAfUbwHa3esC7iUCrFX4eErSSOoIOQJIeG52nKB8Dnv2EadAXJn2ZqjYOAWEwL929JrAzdbS05gi3VVbPXgVHykowa4WRD8j9mKAbGywMYaM8asimd9rPLrsM+ENDd6mdCrWDwqo/lr8vOKGGWtBNpQMYUi+e1OIpm3S5rN4fG6bHFK70dhdyG5u0iJiIn73E453WkjVGOOyNc0ZW4l2erdC9HcC8yxm90UTkdtc+3j6iL6xleXK1fELKw2sFO66m3+1+4//OwNgmDLcrx4EwIsspohVOLo5+S432D2sVLd3wl+YyQ+AsA/pXU+9k9P4KoUGg0YsviBXCHVG+yVzmPmZkSsA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(22082099003)(11063799003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmJVRmsybjk0eFk2OXpFc3hxSEFRUFdGSllhVnlkRFcrb1NBMjR1MGpXN2FD?=
 =?utf-8?B?bWJZV3RSdEYrdWxqNUNPTko3M0o0aU9EVGQ1VlJEU1BZbzh6dFJnV283elJu?=
 =?utf-8?B?dTdHaGlwdVppbWZiZmhoWjN6Wjc2TTVHbUJZalp2Smx1TndLREZueCtzNWtN?=
 =?utf-8?B?cUs2SWJJbjdYT2htcXcydVZsaXlPMTQwOWh4UlByQXVKR3lzelVMWENWdXlF?=
 =?utf-8?B?UkN6VElnM2lwaDdVeTRaSTlGOWZXby9kamt1WXRveWFhemgzRUlLYjRpZkRR?=
 =?utf-8?B?VGk1V1VlRGFadUxiS1dYQjhiaFBOS29Ib1Y5cWlmQWVEZ0hIZTNjak5zOXNY?=
 =?utf-8?B?Q0VEZzlHVTJGc1pTa0xBNkFrREEvNHQxdUxIcUVTV3dBUmh2WDhMOG1YWFcw?=
 =?utf-8?B?UmM4VzZWdnlmTjNKbmJrSjhlWjRCTFd4U011cTcyOEcvaVA4TDBaMkpsZjRy?=
 =?utf-8?B?U2orMGIwWnVoR1MwWmJUSTE1OElaTEsvYXBrbk5tZWFIUHpwODVVc3RkRG13?=
 =?utf-8?B?RW1FQ29abDc3K1NpSEtHVy80NUtHUis1WUw2eEZwNy9HY05QcjZMNW1jTDJW?=
 =?utf-8?B?ZlVqeWM4ZmpuVG43ZStCYXJGbGJpNEUrMWEyV2RsNHNaOUNlVWxRaFU2V09w?=
 =?utf-8?B?dTR0T1J4SnYzZ3h0RG1KcDUxVUMvdVVQakNsRW5sRm1NM1RRRm9YaUdUSmk0?=
 =?utf-8?B?KzBjNHF3T1YzSWJtQ1ZKNStKYzU4b3VuZ1pGWnF6elZVcGVsQzRVTFdZbUI5?=
 =?utf-8?B?RmlDY3RSQk1CalB3MDhlTDdUMnRSZXpBVkFjb2U4N29LVE5EUDQ2LzJoUk1k?=
 =?utf-8?B?Yk5UdEVsdms0eENmaUk0d0RkSjBHeEcrRUU1UnlPUC9QT3BFaTdiSUQwRnI0?=
 =?utf-8?B?TEhQb1Q0Q2syUlYxM1U2aTdXZkxqZzJmejM5V1ZKaGNrSngrcVJ6c1JHbXow?=
 =?utf-8?B?OWFtTG12TFZSUzF5SERDUlNFd0RXclo5UGh4ckxmd09EaG02U3hYOE96THUw?=
 =?utf-8?B?QUhqTExqYUhyWVRFaC9DWHAzem05UVdtdlcvWnY1UEVKT1VOK0srSjNkMlpB?=
 =?utf-8?B?M3VxeXdYTm9VK0JOZko0T3hnaGs4Z3ZhVklHaURrTExvckZLaW1WQ0twei9Y?=
 =?utf-8?B?aTZaYlJEL25BM041Vlo5NThOL0FJclRENkYxYThMMklGSDdWbjJOMURnTUpp?=
 =?utf-8?B?bW5vR2hoWEVFUnpEOHFJSHU4Y296MlZib0FITE9iMDdwM1EvM295aG9iRWVY?=
 =?utf-8?B?dUhHU3JkdklaUC9QT3ZsVDVBeGhUY2lrVFluQ0k0WUhiTTJYM1NvWlRGSlVL?=
 =?utf-8?B?N0t2V0xCdTZITThqWjhtRDlxTFdtM1hGeGwxajRSTGY0RjB1TDdsam12UWpw?=
 =?utf-8?B?T1N2UzJFdnpYdFlwZTBxQmczWTJXTmxZQTk3SmxrS0xXZnRteTFwdm5qRWlJ?=
 =?utf-8?B?cWlXbHpycEtZOUFZYkphRDM4clJaUkN6Uld0emhwZ1ZIejIwUHV5ZXV2aVJ2?=
 =?utf-8?B?K1ROSGdwOTdYMDhwT3hoWmNxZTFsQlBWTGkraG4vd0UzYjRtanhYZ0dhRVYw?=
 =?utf-8?B?cVpvSGZSZk1TU1V2ZkNtTGRaQUhEUXhkLzg0UVV0NkFrbzkyM0FmMU5OTlMx?=
 =?utf-8?B?cm4zcktUZHBtQnppcnRIS2RzZUdTd2swT2I2WWsyNm9ZdjlrMHhXVU15OUNV?=
 =?utf-8?B?YWkvM3lmc0FDRStOdkhHVE5PSklBTGRHK3ZRaFZKMlFKcjhuNmtHT011ZnVN?=
 =?utf-8?B?NEpyRHAza1VXQTRoczNCdEhHRnlhZlRTZ2JTc3RhS0wvUTZaeUxYY0tRQnVx?=
 =?utf-8?B?N0dReGQ2c0d6WmNubW1VblR5UW5JNUovUWxSZlY3Y1J2aHVDeGxDNWUvQXg4?=
 =?utf-8?B?ME00d1F5cUkzSkswUkM1QUxPTWt1ckR2aGxVZzJ3ak9OMklYQ2ZRWERoS0s5?=
 =?utf-8?B?WjNKdnBRRS9uaG5aYUU0aWFEQjRSVHdYY2tZZFNhQXU1WVc3MkVLRkVXODFF?=
 =?utf-8?B?K0hoZVQ0QUlTUHU2NUxvRjVKSmh0TU5Bbk5Qc2daY0VocG5xRCtTTmhYcVU0?=
 =?utf-8?B?UDJUSUxvQUNjeTJkTXF0Mm4wVE1WZHMzc2JmaUs3ZGVEdGhBUld2NjZMelov?=
 =?utf-8?B?clNGWm9IOCsxb1F6b2xFWkM1bzRLcXlLTUYzSkdva1lDdkRVNjgvN2U3L09N?=
 =?utf-8?B?czl0Z3RrUUhZRlozMVZlRU5HVGY5V1pYMkU0OW5hbTNsQUprT1JrVjRsODZm?=
 =?utf-8?B?UlpiTW5jK25PR3EvQ0p3L1ZzRWdaMUxzTjhscll0VG5PWG9GZWlQYlpaZUNz?=
 =?utf-8?B?cXVBRFRod25vc3dTdzk4d0ozZjQ5cWZlWUxFdWxMalVKSzA3em85aGFCcjcx?=
 =?utf-8?Q?Ei3KkR7zm29pcqsc=3D?=
X-Exchange-RoutingPolicyChecked: BzkNs0Va3Vk7i2Qpq2S/QM/LJj9sdKIPI7FKpE6FTMTaHuZEuxQ9UwAGgf1lX0mK9jjheq5kLcBRCUmcE3wPiVPtyyaWEruVP5cqugRmKPgxPYVJm9Km/vJTHAXQRAmle8nOpdw5RfEzeA0gesGb/XG600gu9JkDbLyqpsF8+GIm4nUKiySH/3RkHWBrdPm9+fDWtuiWxyw19jXGYVEIlQWWUElFBzH4m4cRL0durdyigfhYRJkoC8k8Mk1+UMMH1zO0er0ZfngQU0S1de3o/YjMC/U/UsQiebfSQ4uXB1CeeMoGfQ7Ujy1wRKKMkxexy/bdxfqF1zcBeICj+B272Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a9fe3bb-5e08-48bb-6f6e-08deb0e435c9
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2026 11:38:53.6008 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QsKNEi7l8j2ROhj+K/1NViNA6chy6Qx1MDMY7h0PiIW+b4e00zKsqeCya28mg+p1kJUD0q/sJyzYP8yMLuODpVO4+3Ysswz87anZqoF6W5s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8694
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
X-Rspamd-Queue-Id: D37AB53264D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:tursulin@ursulin.net,m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.karas@intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hi,

On Wed May 13, 2026 at 10:47 AM CEST, Tvrtko Ursulin wrote:
>
> On 16/04/2026 12:31, Sebastian Brzezinka wrote:
>> After a GPU reset the HWSP is zeroed, so previously completed
>> requests appear incomplete. If such a request is picked up during
>> reset_rewind() and marked guilty, i915_request_set_error_once()
>> returns early (fence already signaled), leaving fence.error without
>> a fatal error code. The subsequent __i915_request_skip() then hits:
>> ```
>> GEM_BUG_ON(!fatal_error(rq->fence.error))
>> ```
>>=20
>> Fixes a kernel BUG observed on Sandy Bridge (Gen6) during
>> heartbeat-triggered engine resets.
>> ```
>> kernel BUG at drivers/gpu/drm/i915/i915_request.c:556!
>> RIP: __i915_request_skip+0x15e/0x1d0 [i915]
>> ...
>> __i915_request_reset+0x212/0xa70 [i915]
>> reset_rewind+0xe4/0x280 [i915]
>> intel_gt_reset+0x30d/0x5b0 [i915]
>> heartbeat+0x516/0x530 [i915]
>> ```
>>=20
>> Guard __i915_request_skip() with i915_request_signaled(), if the
>> fence is already signaled, the ring content is committed and there
>> is nothing left to skip.
>>=20
>> Cc: stable@vger.kernel.org
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/1372=
9
>> Fixes: 36e191f0644b ("drm/i915: Apply i915_request_skip() on submission"=
)
>> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_reset.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i91=
5/gt/intel_reset.c
>> index 37272871b0f2..b728a5171e93 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>> @@ -133,7 +133,8 @@ void __i915_request_reset(struct i915_request *rq, b=
ool guilty)
>>   	rcu_read_lock(); /* protect the GEM context */
>>   	if (guilty) {
>>   		i915_request_set_error_once(rq, -EIO);
>> -		__i915_request_skip(rq);
>> +		if (!i915_request_signaled(rq))
>> +			__i915_request_skip(rq);
>
> I spotted this patch in drm-intel-fixes today so some questions.
>
> If the request is okay why is setting error and marking it guilty left?
The request can still be guilty even if it already looks signaled
after reset. The important point is that i915_request_set_error_once()
will return early once the request is already signaled, so it may not
actually inject the error. That leaves __i915_request_skip() with no
error to work with, which is why the guard is needed.

>
> 1)
> How confident are you of the Fixes: target? That patch is six years old=20
> but the Closes: issue is only from last year? Do internal Intel log have=
=20
> evidence bug was there in between those two dates? How sporadic was it?=20
a
I=E2=80=99m quite confident the fix is correct, and it should not break any=
thing
if it is missing some corner detail. This is an extremely rare issue,
specific to Sandy Bridge, but we know it was present at least as far
back as 2022 from work item 5774. The bug only shows up when the right
reset timing lines up, which is why it is so sporadic.

> Were you able to verify the fix easily or with difficulty and how?
I verified the fix mainly by code analysis. In the worst case, it should
not break anything because the change only skips __i915_request_skip()
when the request is already signaled, and  the ring content is already
committed, so there is nothing left to skip.

>
> 2)
> Is the issue only that the order of setting the error code and the bug=20
> on got swapped?
>
> Ie. before 36e191f0644b
>
> __i915_request_reset
>   -> i915_request_skip
>         GEM_BUG_ON(!IS_ERR_VALUE((long)error));
>         dma_fence_set_error(&rq->fence, error);
>
> After:
>
> __i915_request_reset
>   i915_request_set_error_once
>   -> i915_request_skip
>
Yes, exactly. In the old code, i915_request_skip(rq, error) always set
the fence error first, before doing anything else:
```
GEM_BUG_ON(!IS_ERR_VALUE((long)error));
dma_fence_set_error(&rq->fence, error);
```

So even if the request was already signaled, the error was still
recorded. That is the important difference.  After 36e191f0644b, that
logic was split into two steps:
```
i915_request_set_error_once(rq, -EIO);
__i915_request_skip(rq);
```

Now i915_request_set_error_once() can return early when the request is
already signaled, which means the error may never get set at all. That
is why the new guard is needed around __i915_request_skip(). The old
code did not have this problem because the error was set unconditionally
inside i915_request_skip().

> If that is the case commit message should have been clearer on both=20
> questions.
could you tell me how I should send the corrected commit message? Is it
enough to send it here, or should I send a new version to the mailing
list?

--=20
Best regards,
Sebastian

