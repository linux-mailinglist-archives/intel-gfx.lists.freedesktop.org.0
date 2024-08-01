Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76939945097
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 18:31:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 975DA10E01F;
	Thu,  1 Aug 2024 16:31:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WZ7l5+NO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A820810E01F;
 Thu,  1 Aug 2024 16:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722529875; x=1754065875;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=BGkq5GM93SOVOxeI3tOh4XqDmZijCzlpPU76yowz0mo=;
 b=WZ7l5+NODOX6QZwhys03GJR7JNM54vm4jfXBTAlHK0QS/LaqjcxMJJA4
 kPIWwi/X2At4gwCigGezs9dL5ff60iuxGfNTM2EM4/IiiQ4twccj6W0kN
 Dm8kcmHbRvDVbsBj4VwBM7MJJZSSBicuDSBx8QhbC36uT+UnlHesx4WZn
 3YkhGGs09urV63TxIZo24zMl/lNfP/Y51PH1FjnY5Plx1GriSeSYOnvD1
 yUFtTlWRSjo60ZlUh67DB2HA/Wq0QUIXHiJMFNh+93+9W67bInIw0f24d
 oUV3KJNuFE6xkWJCcfCBteOllxMAMgIgc0THelKAZGaQXQjmQ82FxvVgA g==;
X-CSE-ConnectionGUID: kd1QjUCCRrKPNWbkFgG2FQ==
X-CSE-MsgGUID: sbbf4EtRSsqrG4prrpPwXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="23417343"
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="23417343"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 09:31:14 -0700
X-CSE-ConnectionGUID: j5cvUxuSSAuIM3xAgs/OxA==
X-CSE-MsgGUID: jNASJeYvSgq+FT/BJ/Hi/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="59930961"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 09:31:14 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 09:31:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 09:31:12 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 09:31:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DXczExm/hFAcKK9JRzyJKhSAGyNyCSI8HK0bk5micIET3aa8Ey1cFPm+ak/BBioobqsucsZa1EymNuiu8kW0fdJCir95VKp3pYrZkNKGfZix2jaixHIEphWqEdd5wFkUbjt+1e7m7EujqRmjsNlfyRrT6rx+zHkS6bLZZ5muPdyUiyLbb9Fz1LOyiQSUsK64pgzyw36kw97ycXkJzvoauvKo0toSef3SM/nRXKGJ8ogmaFfSWlnmahPIy4nwVs2USfdEId5kEiKb9WjreHdE3lcWMvahiQNh7h9q7/OtHq9F2hMiLDf1yCkrK4epVu0SWqufnRUTHp3zfQdIOUzL5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1o5YfT385NQ4QkkvVvZvd6BtY88rUVvW66o5cNbsBNY=;
 b=pn4ImC+K0Nflc7lQ5I3W307j+pK5pF5ZdNh0y7yI+eaNQgooVTycOk+Tz9bns4VVUuo6LHWv0YkB1Jr8V/yCvZ5E9V8QJMSgVAv5dcRTd728kxEy/hHnL2PuVgEnASRaadINmXJF6o40jx2Jidpo/5qEM6r6pWaogQI+NoGd/PIyLCzSEaWjGO+kEPU9Q0iX6E1p1167zPe71jMwQnBckshYhzb1NvAYgQG9k8E0EYIuJKKVghqBKec3/ppqrPRWrb8ulsQvYCPn49/ySfof5ubTLgGgCvN+BwlcRH2R4cevTMwYcWASVp5W1QTpMiHKvxEh5MtmO5XSfSDnCpY2+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB6969.namprd11.prod.outlook.com (2603:10b6:806:2a9::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Thu, 1 Aug
 2024 16:31:09 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Thu, 1 Aug 2024
 16:31:09 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <c13789bf7d7c5ade4f71f1ac24a7fbc1b2a96195.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
 <c13789bf7d7c5ade4f71f1ac24a7fbc1b2a96195.1722263308.git.jani.nikula@intel.com>
Subject: Re: [PATCH 01/10] drm/xe: use pdev_to_xe_device() instead of
 pci_get_drvdata() directly
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 1 Aug 2024 13:31:03 -0300
Message-ID: <172252986305.5121.12479196039257563197@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0189.namprd03.prod.outlook.com
 (2603:10b6:303:b8::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB6969:EE_
X-MS-Office365-Filtering-Correlation-Id: f39ba1be-0221-462c-74fa-08dcb2475989
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VTRvZGFIbXc4bll5TzZJSlUxbFE1ODdkMHJGNHpPZHlyU2FzMldualkwSEZa?=
 =?utf-8?B?enJlV2VuTFcvT3o4TkloNENBSHpMZDVGU01xbEQrblN2MS8xKzlFNHFKL09n?=
 =?utf-8?B?bUlsUHdIZEJqK0V0QnprbzJib0RxMDcwNjBtbjdlZUZPanBJTHJjNUpWL2No?=
 =?utf-8?B?UTVuQ1hHMFlRaFdxd1BPdUFVMFo0bUpFMmNaRFMyNStUTjZiWUMwVEkyanBK?=
 =?utf-8?B?cm5ZcSticnBHOXMzdmR5ZlhyanNMVnRIYnVHbEllUS9mRVdwRHQ2WC9rL0Y5?=
 =?utf-8?B?OGRNeG00dnRxYTRiR0FwZDFQYjNNcHNQNVdndkE1NGhHTFpXWk54OUN3Rmtq?=
 =?utf-8?B?OTlNTnlTUFdUQnJmbVcvL1FKcFEzdnFhSjh3ZW1DRG40M25TTU85ZVNRakt3?=
 =?utf-8?B?TmlHWDU2Z0tXdUlMemVjWFZXS3FXRGt0aW1qOTVXUEw0azNaWndUVGJjR2tP?=
 =?utf-8?B?bXNmM2JOQ1F1OURNbWNLVjNVVjhiZm1JNDEzbGxBZVA1aFF6M05yMWZuS2R5?=
 =?utf-8?B?U2ljMHVSWlZxamxHNG1kVkl1ZmgzUkhJRXY3Q1hXcU1odXdMT3BQd1dzSnU5?=
 =?utf-8?B?TklWU3MyOEh3MURleEJla0J6azR4UzYzQnFxcFhneWtyTjhQMnlNYmZLeEV3?=
 =?utf-8?B?T2pZWmQvZlczREhWckNqYUR3L2kyM01mYm1RNHZVUFg0dzdxeFhPMC9XbnRQ?=
 =?utf-8?B?dHB0dWxLUHluR3pSZDVHdWJrRS9BR2svQjBLcTFKekNlaEEwN2F6NzJjNklG?=
 =?utf-8?B?WGVDU3RXbHVpU1lGelZZeFpSQVdmaXJkU3RVcWhJU0h6clNxS2xENmw5MGR2?=
 =?utf-8?B?VmhPa3lqTUN5dHVXaWllVDlNMG1ZZERFR0ZqbVZHdFlLWmhpMWd5dEp5bTV6?=
 =?utf-8?B?S2FLd21OUkUybXBzdmozTTNpb1ZiV0NMTTZobjAyeGJqMGJxRGJTVUdQZ1J3?=
 =?utf-8?B?UmluaGNEWm9mamdpMjZiNzNlY1FIV0VoUUY2QlArc2cyeXNQRWVjb29DQUNQ?=
 =?utf-8?B?YlA3T013eDdKem0rclovc1lhellKNTBpL3F3WmFqdm5tSEZZZ3VZYi9yajNi?=
 =?utf-8?B?ZGJZVUpFc1c5cGI5emVjY0tkK2x4WVNVckE0SXp4Y0xHMjdaNnhpbjNNc09a?=
 =?utf-8?B?WWlqTUtsK0ZQK3RFanM0WEp5NkorNExpUUY0M1JQT3Z3K3Zpdi9TbGJxTzNq?=
 =?utf-8?B?ek9tOE5FRG9IK2xVbTVybzU2bFZmOGZPQlM2RUk1Uis4TSt2L0NKbWRBMXN2?=
 =?utf-8?B?TDNFdEFqSjBVZEdPczlmMC92RFJYS3EwUUErM3RIWERHSjdUcmVzNThKakZm?=
 =?utf-8?B?WlhIUG5UOTdabW53Z0w4OHVqMXNIRmIzZHRWTHpTRzhLT1pLTk1ycEcvb1ZN?=
 =?utf-8?B?YUErckVQREpEU3NZa29FS2JWTzlHdWxndzR4a3RQc2xwaUIyYStSVDRiNGMr?=
 =?utf-8?B?WFR6d1B0Wit6cC9sRlZ0Y3FZRmx0c0hjb1llTmg5L09XVTBJNTBCRTRjQ1Fv?=
 =?utf-8?B?dzNBM210RkU5ZlNkS01yUElNSTlIRitRYTBEMSt2dko5OUQzaG0xa0h2NEpS?=
 =?utf-8?B?bWhaaldHRGVUaUdET0EvbS9ET0JTOHNnMXlhUDhLcXRoTWkxUHhyd2J0M2d3?=
 =?utf-8?B?UjhPekxGcTU3aXJvbmR5ME5LamFTMmVVKzM3NE16anFyUnNQYU82QVlRNStv?=
 =?utf-8?B?N1NPNU1NKzh5TEhVN1FhWis4WjA4cWNXWmw4ejRoUHZyNk0raFlicW5tYUxu?=
 =?utf-8?B?cWlYTlNTbkNIcVJNY1F4akNxUWQ3ZDd1S1Z5QzNKN0ZFdmNsVmtMN01UMFdx?=
 =?utf-8?B?WC9PN1Bzc1VxMjNXNDBudz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHk2RWRIRUg1M0pVOFBCVTh1NUVkMGd5OWpHZUFTdm04SC9iM0d5Ukk3Tk9y?=
 =?utf-8?B?Mzl4L0tGNm9PdU5HUVVOOUdXWFUvd3d0WlNNaDhpbUozQmovMCtzSEE0dlNw?=
 =?utf-8?B?amJRMktSQmh0M1h6bU5FSkdiTGJ3VDRrcHpqY1VydDg5VFQyL1R0TGpmWG5y?=
 =?utf-8?B?S3B5Vi9acFlMYXdrTWdiTVpDZkI5dWZ5N1dpQjYyeHlVYWRjY2NYams0OFJV?=
 =?utf-8?B?ZFRJUWNVRlVJQ3Q0YnVPMU1YcDlacDZhenVGR0dKRnltYXM5NExmOXp6WklG?=
 =?utf-8?B?VHVTMDBTcG5wOUk3SkJBL2UrS0ZwcG5SLzByeHQwWGFzaktlZFRHbnZaa1pL?=
 =?utf-8?B?TmdoQ1lldkJKZmlXdU5mVFZjRUE3QVNNV1VYMFkwM3BTOFZMV01EMWNFZUQx?=
 =?utf-8?B?UmxST3NyRUhsZlhhTjlzaERLYStQaHpLdzhqWnNBZ3UzdzUwQi9Fa0p1UHY2?=
 =?utf-8?B?NGswNXc3K2ZtcUZtdW1IYm8xVXJyQmgwWnA0elRQdXJPeU9HSmFyNHVGU2Q4?=
 =?utf-8?B?ZnBQVWtFTnhWMUhEVStidk1aYVBtSkpNaHNrbkxKbFFCVENISWkwV3FPVCtH?=
 =?utf-8?B?dTlmcENKaHhpNGN1b1A2ZGRYQnVnM1h4N3VjQVE4dmRpbFZ2WHZDYzJ3ekNE?=
 =?utf-8?B?dHZzL2tveUZzTWNKSXprQi9vRm5SU3JBdjVCSDM2NGl4M0hWUXlDb0ZvSVNX?=
 =?utf-8?B?ZkJFQWFmYThpSTBjUHVscjlyblF6ODVyZ1lrYXlvbGJVRGltZTB6QjNWdUZr?=
 =?utf-8?B?elEya05Sa1cwZTFvYVRMaG93ZzdVbWFCY3l3and1VFpUZmREeXBidE1IVVJZ?=
 =?utf-8?B?S2pnL2Rxb0xoZjhXc1FHVVdBRHQvZE1ZbVdqL2VIdHVFQm5qbzBHUkQvYVp0?=
 =?utf-8?B?SGZUVEIzK282aDlZT0d4ZFk1RmlCWSt5THYwTDN2SHhIbDdoQmJFc25ET2VT?=
 =?utf-8?B?TDVKTWMyMys5YWEvWCtkY2VycURUSlhDUDhDYytHMktsZGdLaU93QkF5WHhL?=
 =?utf-8?B?Ny94V0cxWXBISmh0K0s2eHd0VWlZazJFelExZFB4V2dTaUlwcTFCOTJLMHdP?=
 =?utf-8?B?OWVtMGFlUUduaTA0L1NHVzVZR1U1akFDSU1HUUIvYlpSTmprQnZBcTIwN3NF?=
 =?utf-8?B?TE5kUE43V3NnYklJQWdxL3JMZDhUZEs3Qm1NbXpvRVlWOTVqWDg3VlRHdmxt?=
 =?utf-8?B?emhZQmNMcys4L250S1RDemQ3eXB3ZmFxOHJCT3lXalJkaFhzQWF3OU9oUjFI?=
 =?utf-8?B?THFpTXUzN2ExWm1YbzFyODZ0SVRseWhiRGkvTWdtQ0twOC8zRlhsZFBMck9R?=
 =?utf-8?B?SEVCRHM0RVFleVJRckRyNmcyZHczNDJuN2dNakVuRUd3OEVjQkQweXM4WWNS?=
 =?utf-8?B?ZTZVSml4eW9GNkJjU3Bxa2FWeld4dG9jdzlqNHY3ZEQwK0FTVnFnTlUzRHJu?=
 =?utf-8?B?cEF1S2dFOEUzVDRmRjRwNzhuakIxOGtUQnhmbmVlK3VyNW9wdUFFZjVXYldn?=
 =?utf-8?B?MkEyN0NZNnJjV3RxNGkzanpSc2ZSeG5vR1BlQWFhZkFwTks3MlhYaTFoejNp?=
 =?utf-8?B?UmRaVGI4RUw0R2VuckYrMmFuTmkwbXczaUJYWHdPS2twMlhpNll3YmhyZHpl?=
 =?utf-8?B?OUU4SVlCZGZYeDZKN0F5RmxnM05weEx3S0p4ZUgrY0dkdHJhY21uRXFxcXVu?=
 =?utf-8?B?VlBSSWFSTndVOVNZdE8vNXo2VWVqL3RmYkYvVXZvYzEwa0RDb1pCUWNSUmU4?=
 =?utf-8?B?ZzVRSkZMblNZeEVUR0h2dDlBRjM3L0tvRnk3Y2xmOHFJOXJTdUJ5am93NEFF?=
 =?utf-8?B?TC9qK3NreS9CdTlHYTUwWUg3SXpsZzlmZThUZ0ZQeWFpYW1hcWJhMUpqUzBO?=
 =?utf-8?B?K0tiMlNRU1VYZDUrL0lJV2hxaE1aeTlCc3czWFNnUllTZ1ZGKzdWZzkxYXdm?=
 =?utf-8?B?L2RiRkNBMjRVZytNNWJhWHRCNDRhNTZCWHk5WERVUC9rWktoYVN0c3lvSUZT?=
 =?utf-8?B?dmxmYWh5a2hmMkM3cUd4azAxZENhMGNzWms1c2l2RlBpbkFTdTl3UHkxSUJt?=
 =?utf-8?B?MWpxRUkvc2c1QXowbEpPTkk5L2RZNWxoSGNjU0lrUE1tb0lxLzVGQzZpU05O?=
 =?utf-8?B?RWExaTJIeXdZaW5WWjZRMW9za1JjdmorZG9FbEVmZjlJRGNpcEVmalBpZ1pJ?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f39ba1be-0221-462c-74fa-08dcb2475989
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 16:31:09.5458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +cEDdY4ff9ZNGXzona7YELaxweiPMS8ibhvkF1ELHZTt3kND5qbSvQJptjj0jvCTuyKJqOjOZxSP0QGBbcYuaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6969
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

Quoting Jani Nikula (2024-07-29 11:30:02-03:00)
>We have a helper for converting pci device to xe device, use it.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/xe/xe_pci.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
>index f818aa69f3ca..7bb811b4a057 100644
>--- a/drivers/gpu/drm/xe/xe_pci.c
>+++ b/drivers/gpu/drm/xe/xe_pci.c
>@@ -752,7 +752,7 @@ static void xe_pci_remove(struct pci_dev *pdev)
> {
>         struct xe_device *xe;
>=20
>-        xe =3D pci_get_drvdata(pdev);
>+        xe =3D pdev_to_xe_device(pdev);
>         if (!xe) /* driver load aborted, nothing to cleanup */
>                 return;
>=20
>--=20
>2.39.2
>
