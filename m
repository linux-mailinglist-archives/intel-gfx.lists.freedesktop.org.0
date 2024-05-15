Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0ED8C65D2
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 13:36:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53DEB10E7D5;
	Wed, 15 May 2024 11:36:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BXU0YO5O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8378D10E7D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 11:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715772978; x=1747308978;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=ZyMxb+0uLDF38kFFgqCdhjwbYTnsCDP7aDFk5QeZVCY=;
 b=BXU0YO5OO7qQKAlvlJ/sPoLf+7a9bPs/+q0X7LgO1IOCF27pgl/6O4kE
 N9bnlGw1Zo5QO7BKZ2wSbZHZyhS3RWr6QZl8Qwoy7LKrRShxQYGTGL0SC
 XnD2GTrzYkp+DCaBynjTw3+7b3gnaakTn78KNl1/AaazxeDK+yIJBUFEX
 ml3wXCEvuqqeGG2wMV0e02MsvJT01J7eLtEgQRxgU7Q5A3J++bdcVltlU
 u7CVOKuR9a6X1kbUEeVukD+l7Qzg4ExVxispopUwJyB4IA+K2zja7kBFY
 ckC3Gc3JHakQRvKz/cetb2i9fw30Wf+vwulTh9j8ccJwFOC7V9z2wsqrd g==;
X-CSE-ConnectionGUID: zgKXHwweStaH4TM6bump2g==
X-CSE-MsgGUID: GkPQTawuTgWY+tvrY1TlEQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="22401108"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208,217";a="22401108"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:36:18 -0700
X-CSE-ConnectionGUID: z96Zxow+QJmZ3t+urm4bJQ==
X-CSE-MsgGUID: rbaTtliQTmKNG177KHfQMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208,217";a="35731698"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 May 2024 04:36:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 15 May 2024 04:36:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 15 May 2024 04:36:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 15 May 2024 04:36:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 15 May 2024 04:36:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=al5P1V7gEdkILQwsJjHVOc9apK98ZTlNQp7lOthBGYgGOXBBSOscWIwi+fJuxnv5ypCq5KXoQzCCRHwPyZHtXzg2+ooHjBsmYYnlATRqBVIZeY9+BlHMRx8iRnvZBmBnZ4cAUVuOmUStpNQVwnF+fbUkIS15XX51t6DfTLZGvQOMBId4j1b+dR6/lAFT10clcQ//tAXT/nZbFw9r7QwWJoGbaXnHEBCV3lQIywo7/VJwhk8p2+xTqUYYRYGaehBCFV820aH7s/iS1yqcBLojh2vIzWawIyUBzSJUUOrM1In76gbSIuyvQX7RtMbTY+6BeLD2dGsYpkJpMEvWh0ODAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5XXXvv27KtbL3sIiyaFFhKAok6iRnnhFOFKm4nkhCMQ=;
 b=azP0rBoFnqS8rECAyvM4nLUIcWRVuCDBFqFHRTM43rvTmhhlICbhJzVFYEU1/i2P5BuqqKn2/MAtv0uJ6kFSMByWiNnJFmeQ9XBU+yLpYNpB7XLqrzhpsVQbElJIIV2FSPmlH33ggtt8ixU09JKI+n2mT4HZ+BxmXcTuRRg1ZDhgUSPG3OsOEvPo2SrfMgBNnBdCU+AQAskbqDvzuBiQe0o4gjAMglSV2gjMeQnI8pJWKmfA3T13AMCwf/5JPDg6RUgrEXDyOc/XeycN4Bzsgfpd/IDcs3BhuM3QBApdPfEMGxdru9cBNG+ce2UkuMaJ1Ox0bRzEZE0V24Be3Cfv6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS0PR11MB7481.namprd11.prod.outlook.com (2603:10b6:8:14b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Wed, 15 May
 2024 11:36:08 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 11:36:08 +0000
Content-Type: multipart/alternative;
 boundary="------------mSWb4gwyn0fd05sk3Y00tj08"
Message-ID: <3b2b913f-485d-43cb-9be5-a3facb0835d0@intel.com>
Date: Wed, 15 May 2024 17:06:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20240506)
Content-Language: en-GB
To: Thomas Zimmermann <tzimmermann@suse.de>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
References: <SJ1PR11MB61294E38C4405716DE9BE2CBB9E52@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129AF1E3865F993278B7047B9EC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <def71e6b-53a0-4da0-8369-b69629d2dfca@suse.de>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <def71e6b-53a0-4da0-8369-b69629d2dfca@suse.de>
X-ClientProxiedBy: PN2PR01CA0023.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::28) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|DS0PR11MB7481:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bd5e88c-2c11-4afa-33bf-08dc74d336b9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cStaUHFFSjh0dDZkdE8yRTZMK2cxVkR5VEdhcVNVdDVHM3BNZkZiUHdhRE56?=
 =?utf-8?B?aU1RcWt4ZGxhNE90eW1BNi9hQ0g5RGhUQ3RLd282QWd2Rkg3RVB4OFV5eWFk?=
 =?utf-8?B?VEpUYUZMR1FzS05WcytYb2R2SGNvaU9WVXZCcURhc2QxK1hNbGdDaCsrYVEz?=
 =?utf-8?B?SjVlQ2NpcnhBc1ZnaXl2MzdCNmc4TnVQMUFDaUx2YjFLYW9EQnZyazJSUmVJ?=
 =?utf-8?B?R1FmcWxWSkpEeFV3Tko5V1MzVUUzWW9VbVpXZDU3cFROVXJTWnljQm5vQzd3?=
 =?utf-8?B?WmplSTdZTXRYS2xSOWJRM2loNWRtYjZnMy9uc3NSSUt1bmgxM084R2ZrY2Jt?=
 =?utf-8?B?SzNTY1l3TmJleUkxTzEyRFB1ZnNudGhHOFhGT1Vra3F5eGwwQTcrRjF6SW8r?=
 =?utf-8?B?TTV6Q1B0OUErWjFWYTVVc20ybVhjMzVEUENaY1M0SjRrYXJHS0J3OCtyek1J?=
 =?utf-8?B?TitER3o3S0pZRi9QQ05MZDVyanZFMktQVTRzempZZFJpejNkYWorOGlzQkNo?=
 =?utf-8?B?aUkrSDBYd2FJOVFNSmQ3M2k2MkorVGxkNnJvMzNVUUhzTU5TczdSc2wrcHZM?=
 =?utf-8?B?RVNJS09kMnhKamJTcXROQ0RCWktYa2VTcHpjbWE2QU14dnVmdTM4cXdUcEd1?=
 =?utf-8?B?MENRZ0hNTmlUb3A2ai9kOGx2SWc3SndaUmVzZHJjR0NhNlR0aHcrSkdBdDIv?=
 =?utf-8?B?V2lTOXIxOVBzLytCWkpINzlpSnI4ZGYxMjVja3M2V01BaGRleGFOcnoyZDM0?=
 =?utf-8?B?eDJTdGdDUFpzQWNveVpobHRqeG5KdmFnaGVNNTdweTFpb01tekh3ZUJMRU40?=
 =?utf-8?B?bWxqRWIrNlExYTMzL01seFpBamhVeGd2cDdBNHNSdk8vMDd5cjFFT1ljRnRs?=
 =?utf-8?B?Q1BCVTZVbjJGZEZyRzlZSE9hTG5OWHpwOENMRDljU1FKakVoNktLUHRqOHNQ?=
 =?utf-8?B?QXduUmtZbFhWZFQwTmlwSDhyTHU5M3krSDVINzQzZzVFQVQ5K05hNE9wczJy?=
 =?utf-8?B?end5TnFPMjRDNURKQ0RZS0FUWWxuYXpVeEtlMjY4anRCeEEwR2dxZnpPb040?=
 =?utf-8?B?SmpqWDFUaG5kQy9jMkhRb3o1UEhKQTVsNnRlWVZpSWFPcGpQZ0NhbS9ETnp3?=
 =?utf-8?B?NFVGc3dOcjFabzZSanltZEszOVhwekZWaGJQQWVnV21oakZFUkZxRnJCVUhE?=
 =?utf-8?B?RXE1T0h0NkhPcEcrZVh1T0Uva2NKeDI5YTFzTUN1RGczUEpGM3ZDZFZvMStR?=
 =?utf-8?B?MnBobEZnWlZFdGVHQzR4a09BQjVvbGd2QTRuTVVnbnVNVGcyanlWVVRFUCt2?=
 =?utf-8?B?eEhLN083OU13UDNlNStWZEpXNE5UZmVudkJtSDEwOWRPcXhLSGFublZxUDlu?=
 =?utf-8?B?QmFoZ3pLYU9VQXFKbU5YYlZ0UG9FVExrVWg0b3VzM2JYWDc5bC9ZN3Bpelh4?=
 =?utf-8?B?ME9ld0lNdjNqemV2YnFXbVhZWWh1N0NuSU90NERrMk9hS3IzOE5UV2wwZXRK?=
 =?utf-8?B?cU5TK2JqZXN4cUN6WkZ2RTlhbmdDaUlTaDJHcjdRR2FNMVhNSWQrazl3N2pU?=
 =?utf-8?B?azJnaWdhYm9sTVZmSUg0aFgySXc1NlpGcG04UHpwNHl1VHdHQkR3OFhjZ3N4?=
 =?utf-8?Q?CZJtvNJetQmZT4iRfTyYyy4gp8o2axqeup33+omY02uM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SW1kZVBxQmE1TWVZU2JTRTV3ZXNubWpwT2RLamhUUnM5WWRyNWtzSmlXYUI1?=
 =?utf-8?B?TzV6cm00RzFWZHgxa3VyczV1Zm1KMjlUUzl3MmpIbmlZOTUwZTRHTWZ4MTgx?=
 =?utf-8?B?NGIzYkhFMmsxZWx5UksySTZRdGRia3VWdnZQZ2lKUE1Sd1JlSkJJOHM4WlNa?=
 =?utf-8?B?WEczNURDMHZJa3FOck40d01aWXJIM2c0bGxaa1lzV0ljZCtBV2wzMi9aRVRU?=
 =?utf-8?B?STIzZmN3R2lPQjdKOG5JS1pJYW5DSUNWQ0U2M0dUdUZvd0VESjdCWE5YbkVa?=
 =?utf-8?B?aVFwdzJPY0lBS3Y2aWdZemREdTJKblJjZ0VpRnB5akFrMmUwakFCbzc4OWhs?=
 =?utf-8?B?NENsS0NURDV5ZDVyQzRTVzJBN09ZMnpzY0l3Y3pxdkVoc1VFejJnRWxzNkxa?=
 =?utf-8?B?SFFBVXB3TEVXQUlYMCtBTUJSTUJndnN6dDh4NXEvWXlySW1kdmdHYjJQbnNn?=
 =?utf-8?B?UVlEZnM5SzJHQk5rRk5ta3p1TWsvNG4yaVhGTWZHNkdLYThPTnNvYXduMytO?=
 =?utf-8?B?SmtWM3UxMWtCbnVuL1dnb0FWVFROdW1kbmxmekFHNzh3Ui9wNHd5dU9QTVdt?=
 =?utf-8?B?eG5xQlJOZGRxTzRJR2xrc21qUkNjQWtLN3VjNDFWdnZGYUlNa1lWdnZUVkdS?=
 =?utf-8?B?M09kQUpnR1huY25BWkt3S21jZSsvRWE2WEh6NlA5TWZUS1BrcWJaRis0SmZ5?=
 =?utf-8?B?RVNId1VidnpEVVJERDFIU2RDRVFaNGpBdk9FVTl5M1BHQldpTGVHajBNZVht?=
 =?utf-8?B?RVlpWm9FZXE5eFFSUmNabUgxY0oraXpydktJT0VySXU4SkxzVnhXcVg1S2I4?=
 =?utf-8?B?ZmxISnJhQ1l0ZjBpejgrSmV5dFg2aGROMmYxUmxiOTFFM1FoWnFEbnIvSlZu?=
 =?utf-8?B?dkdaalFRa2RSM3BaemdUVnQzbWZOQWFCaVdnMFZhbUpHOVEvSDRmc2JyNG1I?=
 =?utf-8?B?eTBGZ3c5UUZOKzFKd2l5dDhDYVExM3lsUnlOUEF3aG9vRU9uRHJCc1hTQmlo?=
 =?utf-8?B?Qy91WmI5NHpET1hydFU5N1ZqS2liazI1RXh6bFVmbDhyUnJjTTVpRVhPWGoy?=
 =?utf-8?B?aEdYVk83WlV0eUVRVGxxS3VDcW9RSTlEbEliZ1VsUFNrZ0JOanp5Y0kzOTlu?=
 =?utf-8?B?aHd6aGFUY3BsemtHMVBkY2g1dUNyMG1GOGNyQjlvUUNCTG0wWGg3OGdaMUY0?=
 =?utf-8?B?V2ZWbGc3SDFqSWZ0K1hrNitXUHAvcFpESDEvdW5TcmxGSUtjdndnWUFnQnFQ?=
 =?utf-8?B?b3pHQTRhMERDRTdIMFpvdDVIU1RycmM2Qk1uSk0zVXVXWFFRM1g4TnhTV201?=
 =?utf-8?B?S0RrWTBUL1c2aHgyYmE0cWFINHNoQ2RYZGdyeVlZU29sNGZFRW9tY0lQRzJU?=
 =?utf-8?B?L3FNTXFYTFpPVXgyOU9RNm5KNDNOOFBRdFZsSUFoZ01idWJack0yZk5Calpn?=
 =?utf-8?B?UjdNMHR0czhPZi9QWU1obE9LV3RDRXM0RUhWcXd5SUwrMXhXZ1BXcWRtcEY3?=
 =?utf-8?B?dTF3RFg4TklFOEZWbkRJczRtMVRpanQ5RjVGb3QrMXFQWTQyZUhnY0xEVm1R?=
 =?utf-8?B?T2xlVDY3bEZtNkg1WUFYRFF1S1NrTHhYWjlLZWlzdDREeWpncWpYR3crL1Jk?=
 =?utf-8?B?UHQxcGtQYnhXU2xoMStVNXoxTG5ucnMwbEpwWUw1cnhPL1pUemZnQjMwNWY2?=
 =?utf-8?B?QkVINGR2SG1pRFk4NmtUejE0Mm56eU1jOW4zcGxQZmZUSjZ6OGRKUE5TMjlC?=
 =?utf-8?B?NzR2QzNUMjNudnJhZlRNemV2VUVQbVQydXJxMG9oY0ljQ3N0eG5lSHdkM0dX?=
 =?utf-8?B?aTlaejdHbjVMbWhJcjFuVk55R1JVZVJybzVxblVoNVN5NUIvWjk0UURHQVg5?=
 =?utf-8?B?NzgvaERUS0s0bEdubTBLYnpMMnNmVy85bUNzZHJOMFV4cE1td0tMSFc0L0Fy?=
 =?utf-8?B?eFY2aFRQRWJUVjJValZib05yME9oUGcwandENnE1SlFYUVZpc0Y3Z0tsTDJa?=
 =?utf-8?B?RVlvdy8yNmhaV21ja0toSDVkU29zb1JuSFFXNGlSS0l3MWtyaGl3ODd6d1NB?=
 =?utf-8?B?b1pOSytzYmdKUlArQ1laYjRHMWMwaHpVSXB0VHJBMkY3QnA3UUxxTTdFU0lq?=
 =?utf-8?B?M0JmcndnYkszRmgzWmlTenl5R2U2UzZtbkl1Z0ZVVzcvSzhwRzJLQnhRNGJo?=
 =?utf-8?Q?tj7IENF1Ktpd6+O6kV8oCdk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bd5e88c-2c11-4afa-33bf-08dc74d336b9
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 11:36:08.8010 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bPkfFtWB4d1RoqwlAwRZhKO+gqRhxMAUfC/hIf4CrB3D5SPN+MStaaGA8p5RSl/AJ7cW3DJIHc/x4TjgvvNJ03N6pRC9IgywRU3nfdwCt2A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7481
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

--------------mSWb4gwyn0fd05sk3Y00tj08
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 5/15/2024 2:24 PM, Thomas Zimmermann wrote:
> Hi
>
> Am 15.05.24 um 10:16 schrieb Borah, Chaitanya Kumar:
>>
>>> -----Original Message-----
>>> From: Borah, Chaitanya Kumar
>>> Sent: Wednesday, May 8, 2024 3:05 PM
>>> To: tzimmermann@suse.de
>>> Cc: intel-gfx@lists.freedesktop.org; Kurmi, Suresh Kumar
>>> <suresh.kumar.kurmi@intel.com>; Saarinen, Jani 
>>> <jani.saarinen@intel.com>
>>> Subject: Regression on linux-next (next-20240506)
>>>
>>> Hello Thomas,
>>>
>>> Hope you are doing well.
>>>
>>> This mail is regarding a regression we are seeing in our CI runs[1] 
>>> on linux-
>>> next repository.
>>>
>>> Since the version next-20240506 [2], we are seeing the following 
>>> regression
>>>
>>> ````````````````````````````````````````````````````````````````````````````````` 
>>>
>>> Starting dynamic subtest: gt_contexts
>>> (i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol
>>> acpi_video_unregister (err -2)
>>> (i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol
>>> acpi_video_register_backlight (err -2)
>>> (i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol
>>> __acpi_video_get_backlight_type (err -2)
>>> (i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol
>>> acpi_video_register (err -2)
>>> (i915_selftest:1107) igt_kmod-CRITICAL: Test assertion failure function
>>> igt_kselftest_execute, file 
>>> ../../../usr/src/igt-gpu-tools/lib/igt_kmod.c:1594:
>>> (i915_selftest:1107) igt_kmod-CRITICAL: Failed assertion: err == 0
>>> (i915_selftest:1107) igt_kmod-CRITICAL: kselftest "i915
>>> igt__23__live_gt_contexts=1 live_selftests=-1 disable_display=1 
>>> st_filter="
>>> failed: No such file or directory [2] Dynamic subtest gt_contexts 
>>> failed.
>>> ````````````````````````````````````````````````````````````````````````````````` 
>>>
>>> Details log can be found in [3].
>>>
>>> After bisecting the tree, the following patch [4] seems to be the 
>>> first "bad"
>>> commit
>>>
>>> ````````````````````````````````````````````````````````````````````````````````````````````````````````` 
>>>
>>> 2fd001cd36005846caa6456fff1008c6f5bae9d4 is the first bad commit commit
>>> 2fd001cd36005846caa6456fff1008c6f5bae9d4
>>> Author: Thomas Zimmermann tzimmermann@suse.de
>>> Date:   Fri Mar 29 21:32:12 2024 +0100
>>>
>>>      arch: Rename fbdev header and source files
>>> ````````````````````````````````````````````````````````````````````````````````````````````````````````` 
>>>
>>>
>>> We also verified that if we revert the patch the issue is not seen.
>>>
>>> Could you please check why the patch causes this regression and 
>>> provide a fix
>>> if necessary?
>>>
>> +Jani N
>>
>> Gentle Reminder 😊
>
> Sorry, I didn't notice the report before. The commit is not related to 
> ACPI. There's now asm/video.h and acpi/video.h. Maybe there's a 
> conflict among included files.
>
> Do you have a kernel config to build with?

I could not find a public link for the linux-next config we use but this 
should be close enough.

https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14764/kconfig.txt


Regards

Chaitanya

>
> Best regards
> Thomas
>
>>
>>> Thank you.
>>>
>>> Regards
>>>
>>> Chaitanya
>>>
>>> [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
>>> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-
>>> next.git/commit/?h=next-20240506
>>> [3] https://intel-gfx-ci.01.org/tree/linux-next/next-20240506/bat-mtlp-
>>> 9/igt@i915_selftest@live@gt_contexts.html
>>> [4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-
>>> next.git/commit/?h=next-
>>> 20240506&id=2fd001cd36005846caa6456fff1008c6f5bae9d4
>
--------------mSWb4gwyn0fd05sk3Y00tj08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <p>Hi,<br>
    </p>
    <div class=3D"moz-cite-prefix">On 5/15/2024 2:24 PM, Thomas Zimmermann
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:def71e6b-53a0-4da0-8369-b69629d2d=
fca@suse.de">Hi
      <br>
      <br>
      Am 15.05.24 um 10:16 schrieb Borah, Chaitanya Kumar:
      <br>
      <blockquote type=3D"cite">
        <br>
        <blockquote type=3D"cite">-----Original Message-----
          <br>
          From: Borah, Chaitanya Kumar
          <br>
          Sent: Wednesday, May 8, 2024 3:05 PM
          <br>
          To: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:tzimmerm=
ann@suse.de">tzimmermann@suse.de</a>
          <br>
          Cc: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:intel-gf=
x@lists.freedesktop.org">intel-gfx@lists.freedesktop.org</a>; Kurmi, Suresh=
 Kumar
          <br>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:suresh.kumar.ku=
rmi@intel.com">&lt;suresh.kumar.kurmi@intel.com&gt;</a>; Saarinen, Jani
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jani.saarinen@i=
ntel.com">&lt;jani.saarinen@intel.com&gt;</a>
          <br>
          Subject: Regression on linux-next (next-20240506)
          <br>
          <br>
          Hello Thomas,
          <br>
          <br>
          Hope you are doing well.
          <br>
          <br>
          This mail is regarding a regression we are seeing in our CI
          runs[1] on linux-
          <br>
          next repository.
          <br>
          <br>
          Since the version next-20240506&nbsp;[2], we are seeing the
          following regression
          <br>
          <br>
```````````````````````````````````````````````````````````````````````````=
``````
          <br>
          Starting dynamic subtest: gt_contexts
          <br>
          (i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol
          <br>
          acpi_video_unregister (err -2)
          <br>
          (i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol
          <br>
          acpi_video_register_backlight (err -2)
          <br>
          (i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol
          <br>
          __acpi_video_get_backlight_type (err -2)
          <br>
          (i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol
          <br>
          acpi_video_register (err -2)
          <br>
          (i915_selftest:1107) igt_kmod-CRITICAL: Test assertion failure
          function
          <br>
          igt_kselftest_execute, file
          ../../../usr/src/igt-gpu-tools/lib/igt_kmod.c:1594:
          <br>
          (i915_selftest:1107) igt_kmod-CRITICAL: Failed assertion: err
          =3D=3D 0
          <br>
          (i915_selftest:1107) igt_kmod-CRITICAL: kselftest &quot;i915
          <br>
          igt__23__live_gt_contexts=3D1 live_selftests=3D-1
          disable_display=3D1 st_filter=3D&quot;
          <br>
          failed: No such file or directory [2] Dynamic subtest
          gt_contexts failed.
          <br>
```````````````````````````````````````````````````````````````````````````=
``````
          <br>
          Details log can be found in [3].
          <br>
          <br>
          After bisecting the tree, the following patch [4] seems to be
          the first &quot;bad&quot;
          <br>
          commit
          <br>
          <br>
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
          <br>
          2fd001cd36005846caa6456fff1008c6f5bae9d4 is the first bad
          commit commit
          <br>
          2fd001cd36005846caa6456fff1008c6f5bae9d4
          <br>
          Author: Thomas Zimmermann <a class=3D"moz-txt-link-abbreviated" h=
ref=3D"mailto:tzimmermann@suse.de">tzimmermann@suse.de</a>
          <br>
          Date:&nbsp;&nbsp; Fri Mar 29 21:32:12 2024 +0100
          <br>
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp; arch: Rename fbdev header and source fil=
es
          <br>
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
          <br>
          <br>
          We also verified that if we revert the patch the issue is not
          seen.
          <br>
          <br>
          Could you please check why the patch causes this regression
          and provide a fix
          <br>
          if necessary?
          <br>
          <br>
        </blockquote>
        +Jani N
        <br>
        <br>
        Gentle Reminder =F0=9F=98=8A
        <br>
      </blockquote>
      <br>
      Sorry, I didn't notice the report before. The commit is not
      related to ACPI. There's now asm/video.h and acpi/video.h. Maybe
      there's a conflict among included files.
      <br>
      <br>
      Do you have a kernel config to build with?
      <br>
    </blockquote>
    <p>I could not find a public link for the linux-next config we use
      but this should be close enough.</p>
    <p><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14764/kco=
nfig.txt" data-auth=3D"NotApplicable" data-linkindex=3D"0" id=3D"LPlnk19519=
4" style=3D"border: 0px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-ea=
st-asian: inherit; font-variant-alternates: inherit; font-variant-position:=
 inherit; font-weight: 400; font-stretch: inherit; font-size: 14.6667px; li=
ne-height: inherit; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web (=
West European)&quot;, &quot;Segoe UI&quot;, -apple-system, BlinkMacSystemFo=
nt, Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-optical-sizing: in=
herit; font-kerning: inherit; font-feature-settings: inherit; font-variatio=
n-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; l=
etter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; tex=
t-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; white-space: normal; background-color: rgb(255, 255, 255);" class=3D"=
moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1476=
4/kconfig.txt</a></p>
    <p><br>
    </p>
    <p>Regards</p>
    <p>Chaitanya<br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:def71e6b-53a0-4da0-8369-b69629d2d=
fca@suse.de">
      <br>
      Best regards
      <br>
      Thomas
      <br>
      <br>
      <blockquote type=3D"cite">
        <br>
        <blockquote type=3D"cite">Thank you.
          <br>
          <br>
          Regards
          <br>
          <br>
          Chaitanya
          <br>
          <br>
          [1]
          <a class=3D"moz-txt-link-freetext" href=3D"https://intel-gfx-ci.0=
1.org/tree/linux-next/combined-alt.html">https://intel-gfx-ci.01.org/tree/l=
inux-next/combined-alt.html</a>?
          <br>
          [2]
          <a class=3D"moz-txt-link-freetext" href=3D"https://git.kernel.org=
/pub/scm/linux/kernel/git/next/linux">https://git.kernel.org/pub/scm/linux/=
kernel/git/next/linux</a>-
          <br>
          next.git/commit/?h=3Dnext-20240506
          <br>
          [3]
          <a class=3D"moz-txt-link-freetext" href=3D"https://intel-gfx-ci.0=
1.org/tree/linux-next/next-20240506/bat-mtlp">https://intel-gfx-ci.01.org/t=
ree/linux-next/next-20240506/bat-mtlp</a>-
          <br>
          <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:9/igt@i915_s=
elftest@live@gt_contexts.html">9/igt@i915_selftest@live@gt_contexts.html</a=
>
          <br>
          [4]
          <a class=3D"moz-txt-link-freetext" href=3D"https://git.kernel.org=
/pub/scm/linux/kernel/git/next/linux">https://git.kernel.org/pub/scm/linux/=
kernel/git/next/linux</a>-
          <br>
          next.git/commit/?h=3Dnext-
          <br>
          20240506&amp;id=3D2fd001cd36005846caa6456fff1008c6f5bae9d4
          <br>
        </blockquote>
      </blockquote>
      <br>
    </blockquote>
  </body>
</html>

--------------mSWb4gwyn0fd05sk3Y00tj08--
