Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EEEB171F6
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 15:23:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE0B610E480;
	Thu, 31 Jul 2025 13:23:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GzgssTmw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96BE910E478;
 Thu, 31 Jul 2025 13:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753968198; x=1785504198;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=v4wvCakrlIIUIg/K0INmUiO81SnPxdFi8/sv9H4IcUE=;
 b=GzgssTmwPASeoq9SGEkey6znKRxCDFD/c1Q/K8Vp8XWdBnnLIVF6BTaK
 93GCkImyExti70QhIYn2/w70Sjfcv3602BURvdG8OyRsfsCXv3HbfCIWc
 3ujlN3VSXGxE8H5+oHO7oW3ZXBHlzCeo6+xI4tzMwRRwI4Y+eb9pSCuQH
 eVqLvp85kFeNNcn2B0BFw/ceLhLX/7fL/wgnphhUb2Q2qtdv440uCiOg9
 1friEDAA1OQcA3oEcDo72OGWlHJsyUCcqSNTbe+NiY9sYDs5DxbBqGqXQ
 E691IYx0OSxxwZPeUQJeJCuiDegrwbvJBkPWHBdk2oUEHz9Z/fIVWxl84 A==;
X-CSE-ConnectionGUID: uOb1LPXBR/yjynBWPMckmA==
X-CSE-MsgGUID: 1Ije0FrsQ1GZ3skuR0gjTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="66562440"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="66562440"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 06:23:10 -0700
X-CSE-ConnectionGUID: YZAIaJWiSymVnmV0NF42pw==
X-CSE-MsgGUID: iqEJrgo5S0O1Psg7j6htnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="167746642"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 06:23:09 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 06:23:08 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 06:23:08 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.67)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 06:23:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ux2+WsJxe2FOcdSkbiNArejolVguTyX6otocY63LPjY9Rlt4ak7GMrrbzeuzCYFbS8/StHnpNzaarRYgLFRgaem/aAvYreEsIFeiZ+/Cs/16bh+lSpnzWeGMMzmoGBgJbZuekruXz38HyUW7Figr7t0OfApO/2EGWliX2VWBJniJC0GxCeNAi+nTobJ+5lbxsc6tOgkUXCDbunztt0JkhFyyYXVrGFBtTZd7fm37TEZNnwVirJp6tIvS4YI4H7ov9VbEuapXHm4NCU/NvBB/OK+cm2hQU9K/9fuS2e/87FMYyWn5vInx57E5iXjQCeIQspdFSKfmMfu5j+NJW9SGvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xiM27RVp9L7GmA+olxtCK6nq4awotDIH+7/3OXw62V8=;
 b=SsFMiBjfdNGjlApEQEZ/eQlYtMZSllQJD34A9rdXr4W2KCs2MhQ5pN6Y0PGrGvhdYy2CYJr/6UVT6poA9Rac7Oh5rtjaX1EfpJ1/j3GyPnWOq8cwVmkxBEnoVCRsxpDhDyCiL/6nJB28tad4FkSqrE8wgUV4xrb+91rfWIXNtN+kQb82VYQUwe2Nl9Zxj1mmQ6DtqCZh6bM9IIE7s+cC1dOxaf9Szg77KMHNA+C4ec0Q2PPjzZwpOWnEgHeFd36pqfkjyba2AZxBz7XHXkIzpwBOuMZ2Eyg31IL2J4jKFPNpOYr0EUiyL7ZvkQntwIbg8OsxHOeB8qfo6qpk+V8lNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB7573.namprd11.prod.outlook.com (2603:10b6:a03:4d2::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.27; Thu, 31 Jul
 2025 13:23:05 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8964.023; Thu, 31 Jul 2025
 13:23:05 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <fadd74e9450afff5e32bf921b192f19ea1629fff.1753956266.git.jani.nikula@intel.com>
References: <cover.1753956266.git.jani.nikula@intel.com>
 <fadd74e9450afff5e32bf921b192f19ea1629fff.1753956266.git.jani.nikula@intel.com>
Subject: Re: [PATCH v2 4/7] drm/i915/cdclk: use intel_de_wait_custom() instead
 of wait_for_us()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 31 Jul 2025 10:22:59 -0300
Message-ID: <175396817961.2011.9648826271207787049@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0287.namprd03.prod.outlook.com
 (2603:10b6:303:b5::22) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB7573:EE_
X-MS-Office365-Filtering-Correlation-Id: 142f82e1-14f5-4386-66b8-08ddd03561c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VUsvVEk3Qm9yVllYcE8xRTF3MFdURE8vdXR4dWxMZW1JdGI4TVdYczFpeFNG?=
 =?utf-8?B?cUJRd1l1enJnZ2V1SnovRC96SDgrY2cwSUV3SGRnLzJtT1VQcEZibHcvNHlR?=
 =?utf-8?B?QXllc045cDBVTnNmZVNPTGNNTldCaU1xOVVEVHN3bDF5V1pGUXpGWmxZWjVt?=
 =?utf-8?B?Ri9nbGx5c3JjZ2NjbnhwNnFuSW0vVmsrcTNSUW5VQmgrTS9ZdmlkcFBLMng1?=
 =?utf-8?B?RHZRb3BGaUVSb0dvQWlUbDlldGwrUWh4akVXcGJqQVZpcXhxU0dzV21xekdG?=
 =?utf-8?B?emZ4ZWEySWI2cWtnZGdNSm9OSWNmR1k1S3dIQ2wzY2VUWENaaFBMNE1aemNH?=
 =?utf-8?B?WjFVMVJibFEvR2xOQ1Y5L29PTzlnN0J1Zm1oa2NZcFJ2S2VDNDdlUnlMbTFh?=
 =?utf-8?B?QW4zTjVKRFUxLy9JU3lUVmZVWGlhK212VURLcEdXRGpsN0o1QWRGWXNTZmJJ?=
 =?utf-8?B?bG5ua2I3R1ZtN0haNVFEd1RmeDJEbmlUUUpXWlpmOEl5TjVJWEZNVmNTRFVh?=
 =?utf-8?B?Q2crdG13bkhNTUNuTDVORklwZzhRa1VzdnUrTEpMbUFFdEQ3OHBtNU0yZEZv?=
 =?utf-8?B?bWo0aFBQSjVnNUEzSytRSDJpYUZkTWZOMVVmVkhyTDJVdmdndHl6cllyTTZu?=
 =?utf-8?B?V2dzSnA4Um9tQUZhVE9QaWdod0VlcS8yMnVUN3hFZjF0Rk56Q25ZZlJZMHhs?=
 =?utf-8?B?TjRTaURnb1dsVkRvMk1SQzBDYzZUQnIrb0J3LzVXK202S015TlNGWmQ2cmpX?=
 =?utf-8?B?ZloxNndQWkMxVXNKSEZLS2pyc0VHdkxhOGdNS09Ud3VQRHgxSlZXZ3h3eHN4?=
 =?utf-8?B?YVZKQXVIUG1DbUdta21IaVlDaDhmbVc0KzdDemIvZ2lPL2RTcWxCaStodnQy?=
 =?utf-8?B?MFBWaHBmS0dQY0w0MTU0eSt2T1REZDNmd3l5MFFtRjQyYVRBaUNpaDhhaW5T?=
 =?utf-8?B?UGF4UFdlOTZ5bitSVFVwK2trUzBtSzNlZFNvVEVxN3ZrOXZMQmZ0c2J3WFdG?=
 =?utf-8?B?VWY2RXNLdUVpT1I3QUtxNnZJTk5qWjJNTDBYaUlJYlo2NXc0K29pOEQ0Z3NH?=
 =?utf-8?B?SmZSamdKUjU1LzZZbithRTJ5ODdZbE9zUWYxeUJNVHhRV0F5R2dpOHdkNFls?=
 =?utf-8?B?Y0U2RTA0YUlCNDdqdWpmT1NwcDBWRjdpek9TRElPTmY3Nm1MVnpaQjFPS0Zk?=
 =?utf-8?B?M0NIWU0rZlNLUmhZT3ArNzJWaEt0TUFzME1WbzFQS0hJQzlqTnkwTzZOQk0z?=
 =?utf-8?B?Uld1NWNERitqRjBIcHNzZ1RlWjl6MFg4UWtHMGIzcnNlNjVVVnZSRVNkNElM?=
 =?utf-8?B?Q2kxeE4wNnQ0cnpNMXR1ZU15SkhRYThETGlTU0xKV1lQMjJPRGJXcVhlS3JR?=
 =?utf-8?B?Q2Z6MFB4a0hGNVg3djd5WkZkNjNaVG96V3VJSndvb2FJS2U3aW01TlFta0ZL?=
 =?utf-8?B?WTk1YTNsOE9ZZWFFSHhKYUx1SG1yTDUyakRVZFZkNm1lUysyZkFhZitqQ0Mw?=
 =?utf-8?B?RkxXcVk2OER0dkRxd1JJUlVVRnZwVXROd283SCttSnVHM2lURkZVWG5ldUV5?=
 =?utf-8?B?d3lZeGhwSDMvVVEwNk0wVkJXT3d3Ulljem5sbXRIS2xwVWFaSXBWQk5YL3lX?=
 =?utf-8?B?cDE3ZGx2djFQSytsOXlJcG9odEZaY2ZIWFRuWWVTRThoOTJNMHByaXVKTExj?=
 =?utf-8?B?ZEJ3OUIwd2FrUFlTNXlybUZUOHRrMU9MN0svVTNkZVdSZm8xYjRXeGh4RFdj?=
 =?utf-8?B?VkY1Vi9SYVJheFF6eGcyMjlQN0ViMlREcGpBWFNZTTZJMXJQcHlYMG1JMldV?=
 =?utf-8?B?SGJhcnFweUVETzZVdTVhdnkrTUtKNEdZekxocDhoRFFPd0ExT3V6N1lzZEJO?=
 =?utf-8?B?cWFSU2xHUUJteE0yRGtMZVdJVUhMdzJFNGNKcmUrWDdJUHVUN2tvMko3MWdU?=
 =?utf-8?Q?MESS1pyoH8U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1FVckt2elpnRTAycUdjQ2tIMlJ3RE5ETDZiRndDZWh4eEJkTVg5U09Xc1Vq?=
 =?utf-8?B?anRWeHMxaDJzSnp6T1RsQkxhV3lVdXNhbng2T1E0VmJwNmpMR0s2dFRvNUE0?=
 =?utf-8?B?WUwwTUYzWEVGOHFzY29TZnpjYkFVbWlaZzNOQ21oVlRRbEtja1pHWSs1QWFw?=
 =?utf-8?B?OWFiekk4ZmluaWo3dndlcVhFRE9WYzJmWGhIMURTQXRjenhoaVpweTdwUU8w?=
 =?utf-8?B?T0NKWjBvTmFWbGFieHROeGI2NlpDelY1MG1scXdVT0N6ang3V1RvRG5IRHNY?=
 =?utf-8?B?YlJrUGhaZHZ2eHh6SERYaVQzbUpkZnlzWm1pdE1aL3dCMFZhbHBGdVlYZkVL?=
 =?utf-8?B?UTRVZ0xXU0VUblMrWkZCNUdkUWRoR0d3QnZsSWl2VmtIdkM2aUR6VENndGN2?=
 =?utf-8?B?ZjNxNmlUdXNhY2dmUkJ6L3dCdm1vTGVyZnRQN3dGT285UUxpSWY3UktlRnd3?=
 =?utf-8?B?L28zODQ3Z2xyMDFLcHQvdnhUQ3o2YzlXRGYxYUcrZUJIR0NHays5N1EzcGNM?=
 =?utf-8?B?eWxQOVpGQUN4ZWZlMTZpcFNxQklibXEzcVdSQ0JpMXBsWUIydk9YMUtXU1F4?=
 =?utf-8?B?UDFrL2duUEN0SE5oandSVVQ5a2RWS0FFaTZUcVpYTFNuc0pHbktmOHZnR2tR?=
 =?utf-8?B?Sy9MSUdYbko0NGt3YzJ6Z05DODQ0V2VqYTJ3VEJoV3lrNFkvWFVweDhRR2tQ?=
 =?utf-8?B?YzVDb2k0N0krNHA3UTRHR3JkZ2RtWUdRL3Z2blBwQys3eVNYWVo4T3VIWnFK?=
 =?utf-8?B?WVl0UzFVTk5RWjhLZDhCM1hZcWFIT0pHdHVsZnZ6SW50MzlJNXRmVEZHYUFS?=
 =?utf-8?B?cmNDZVBHU0l5dkJoY0Z4T0E0bXh3QjBrQTMxZ0NHa1RLSXFaUFNaV2c4eldj?=
 =?utf-8?B?ZG5KNDhCRU5acWN6RzJ3QWlDdm5xWUZwV09TRStRelk3dEtsbkl2cytWeEVu?=
 =?utf-8?B?WWsyTEQ5L0tjQnViUVQxZ3ZybjFLRG1lOFh3REVEL1ZUUFVUaEJMNEJMZlNl?=
 =?utf-8?B?bDU1UitDWE5wSHZ4NVFyS0hwbUFpRXdvZXN6Y3JDeEdGaDduYkM4bE1ibzdX?=
 =?utf-8?B?dFhJRUVWOUZuRmh6VjhVZ1hZVXZiMnY0WERFYzRINTZURzEwb0xhSWlUSE4y?=
 =?utf-8?B?RGU0dXRLajBWbGNXanJJWDRmczRrazZ0SmJTUHg2UHRTa2Q5bEZQTzE3VDhv?=
 =?utf-8?B?OUF0T05oQXhKTXpneDFjbFZOek5IcUhYTXA4R0VGNGV4WFV6SmZrWHFWV2xB?=
 =?utf-8?B?QitwTFNLNjVaNlErQllSMUEzelRkU1VsTGkxc0g1dzRMRHFpaTJjK2hGMkJk?=
 =?utf-8?B?ZnRUN2UyZVdUZTRUMnFiVVowb1ZuS2hvNFdkY1AzNk4rT20vNlF4VENzZ2ZO?=
 =?utf-8?B?N0NJallQa29vYmRzUkdSZjRsdnlUSFpLanJ4NzZIdVBFRy9OUkIvdEtMS0lI?=
 =?utf-8?B?OTNwdG1yMjYycFZZblRkUU8zZnJrMXBjTHF1UnBrL0JhL2l0Y3BHaEhSR01F?=
 =?utf-8?B?aW5QT09zUDZSNGJsWVpMeHZMV2IvN3pyUC81eDJTL0x5KzZYQUpuSm9vWDYy?=
 =?utf-8?B?SWd0ZjA5bk5TbGJTRHpJUFFDQXBBYnpRejFPWHNpOUF6cm5KWFpDOWxNOFV4?=
 =?utf-8?B?SWN0NHo5dCtES3ZJV0l2UCtLak1lR0xNSmxTS0MvalFjcFRqS2hsV29RS08y?=
 =?utf-8?B?a3lpdDdYNitWUGUzMFdVMENSNDJDdXFUcjd0TG44Ym8xSm5nMklPMkw3SGxh?=
 =?utf-8?B?OUx4TUxacGh2cUEwUTh4aEk0QVZ6UDBXMmlMRk9ETnR0eXhOZVhISWxFc0xM?=
 =?utf-8?B?V1BvbVdQY2kxalJOOUVCMUU5eWx3RWRnOW5CUFFVNEYwajF3NFFqeGxKQnRw?=
 =?utf-8?B?NDhOUUR3cmwyb0dQU3dmZWtjNTBjdFIyZ2htUG5HYTFhSTJPNVl2K1MyV3Vo?=
 =?utf-8?B?VEg0QnlkUFJRbFFNN2pSZ2xsQTJrQ1FQOUp4Z09HdzY3bnpCZnRaRURyOXU4?=
 =?utf-8?B?UmFVLytzcXlWTTBCTXFQZk9DTlZsSklwdjYxVUZSUW9EWDkzOEY0QVllYmxr?=
 =?utf-8?B?dy81MGNIRURxbFBXRjdqcnVLeTltVDRJNVlUcmh0L3FhcktkbW1RQUNnQkxh?=
 =?utf-8?B?VkxJSys4dCtYaVpITVFpcnR0VGlIaUNWUnhaVktYRDFJc2lXditHaWtZRmNB?=
 =?utf-8?B?WkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 142f82e1-14f5-4386-66b8-08ddd03561c1
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2025 13:23:04.9911 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QMVoEG1bnseDqJo7Cd1DZsKrB+nGB19yH29p9jPX6AHoFnYppM+V/5XwBxQ5UVtouX2fVvTWC6TV93gKlKN8CA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7573
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

Quoting Jani Nikula (2025-07-31 07:05:11-03:00)
>Prefer the register read specific wait function over i915 wait_for_us().
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++----
> 1 file changed, 8 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index 228aa64c1349..2a2d6714e4f4 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -903,8 +903,10 @@ static void bdw_set_cdclk(struct intel_display *displ=
ay,
>          * According to the spec, it should be enough to poll for this 1 =
us.
>          * However, extensive testing shows that this can take longer.
>          */
>-        if (wait_for_us(intel_de_read(display, LCPLL_CTL) &
>-                        LCPLL_CD_SOURCE_FCLK_DONE, 100))
>+        ret =3D intel_de_wait_custom(display, LCPLL_CTL,
>+                                   LCPLL_CD_SOURCE_FCLK_DONE, LCPLL_CD_SO=
URCE_FCLK_DONE,
>+                                   100, 0, NULL);
>+        if (ret)
>                 drm_err(display->drm, "Switching to FCLK failed\n");
>=20
>         intel_de_rmw(display, LCPLL_CTL,
>@@ -913,8 +915,10 @@ static void bdw_set_cdclk(struct intel_display *displ=
ay,
>         intel_de_rmw(display, LCPLL_CTL,
>                      LCPLL_CD_SOURCE_FCLK, 0);
>=20
>-        if (wait_for_us((intel_de_read(display, LCPLL_CTL) &
>-                         LCPLL_CD_SOURCE_FCLK_DONE) =3D=3D 0, 1))
>+        ret =3D intel_de_wait_custom(display, LCPLL_CTL,
>+                                   LCPLL_CD_SOURCE_FCLK_DONE, 0,
>+                                   1, 0, NULL);
>+        if (ret)
>                 drm_err(display->drm, "Switching back to LCPLL failed\n")=
;
>=20
>         intel_pcode_write(display->drm, HSW_PCODE_DE_WRITE_FREQ_REQ,
>--=20
>2.39.5
>
