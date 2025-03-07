Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E02A568AA
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 14:18:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5868710EB57;
	Fri,  7 Mar 2025 13:18:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C7rQGH4d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D0F510EB56
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 13:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741353503; x=1772889503;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6GXWUAPs8EdmKtCHwQb9Fz4nWUyKy0HnJ6UAeIXhIas=;
 b=C7rQGH4dENW/aswhmLq7x4/KYbN5LDeME8WprL0FZBkwlj4aZxaYhBD8
 jZuuNVBvzT8DzsKczy7/bJLrCbqLR/+hDQgwCBDxELVg5C2N+PTE/u4Mc
 1zfjebt4TMENAjIR9uQBT7kqYISSW8Mn6z2YETMmtczSNeGKkqeNeVR7X
 lWHmQke/M0SKPWHlWNcfYLtQGM1dXt0YlPHB2y64X39YEiIsH8Jqle0Xi
 EQtrqRzbbLqv64YGo1L+fF0ZTbbxwKNbhlVmnYM3VCNntG9sZmRgCZevg
 H5QfpoOmE1nrjEEsp/QG2F8Wi2nxJSWnzk0dAYPhk56U3gyMBOMhpeely Q==;
X-CSE-ConnectionGUID: nm6ZHRqjQ2OwOAYd7W+M5Q==
X-CSE-MsgGUID: 3I8VADgjSbi1bl1t/rJEAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="46177435"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="46177435"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 05:18:23 -0800
X-CSE-ConnectionGUID: 3G/wb6txSx2TVcPRqZoLRw==
X-CSE-MsgGUID: DnC+FcvPSumNIkzWETVgcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119850233"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 05:18:23 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 7 Mar 2025 05:18:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 05:18:22 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 05:18:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iuJ9vRhPyYAUb5nUiaERgobVghnJtewo6ACl/cKvcmb50VPMBhOPp5/0xdWZXVB7dnOFW6rCARooWkehIpX4rED3rsbQLJeT9h6fq833dnk5tZoBfk5khWRn03kZjfjgm3CVOUD3dtTU2D277Dh+IwhDgxPNVvDgLIod6IoQy8zkDgd8jkZEdzu243VObUXSsOcR6oAeU/Mu8a8bAiIIiFhCpLyqP7A33ejpuR1U7fNreSq93KXjOVvkKSbbOLVwnWHycSIcDdUpRqJXxAcC8haBlUsTMRhRYWz6sH8CHM0TMivAVxMI07VncuEFkQW02/CbSHVwcGFBk7nQSHjVwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3FJB7KVD1WeKm/Am+5oAvqfynbuIaMuxSa0n7pRROZg=;
 b=NXNe+8vhUVPgz7+i+UaC7plgaWd4puschdQU9o77m5Voat6cb10lHiLr2IpHBfoYk1Xn4p/i67jtDAQacCQ4D1uVCf8MiCtUhx66c/i5dKXuRxuOIBhjWVVJ7xPMFWtUHVQuo0z30R9SuRc+ofJ0NDg22+Km0SoNxzWV7MfD4SOrBAXt79ZNL5zc6R2COz0cxEv8wbahym0C0WmYJkfhAmP8K4gAS7WzuOwteLLEkAfHxv94YfGbTLPOioB/vp3y7MyHuHeQDkstvkiyXIiGGByRT5IIzcSHPMg/if6t2QyKyu7rzgrErEWJL0k8PyKgZOVm4EnpltGbW7mX9Zxjiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by CY8PR11MB7108.namprd11.prod.outlook.com (2603:10b6:930:50::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.22; Fri, 7 Mar
 2025 13:18:18 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%6]) with mapi id 15.20.8511.017; Fri, 7 Mar 2025
 13:18:17 +0000
Date: Fri, 7 Mar 2025 14:18:08 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Chris Wilson <chris.p.wilson@linux.intel.com>
CC: Mikolaj Wasiak <mikolaj.wasiak@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <gfnreumbasvtrdlyqomqwgfyitnr2avg43kgpj7crande2jd4s@acpxxehzgrqg>
References: <2w6pt2hnemndwmanwhyn3keexa6vtha7rmo6rqoerkmyxhbrh2@ls7lndjpia6z>
 <p7p3dfiuyss4fyu33ll7dl2lovhiga4nrmqtzvmq22nz6qorxb@3cnervmi5h6q>
 <2l2xubl54w5lppc55lvksasp7ged4tactvumqoxvuocbaqnb36@as6ekkdh57zy>
 <174134708564.785137.4586842576093518384@DEV-409>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <174134708564.785137.4586842576093518384@DEV-409>
X-ClientProxiedBy: WA2P291CA0036.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::9) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|CY8PR11MB7108:EE_
X-MS-Office365-Filtering-Correlation-Id: bcd745d8-ec85-491f-6d0c-08dd5d7a8648
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|27256017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S1RIeHJ1NGtoZEppSUJ6RmE2bEFKOEV1YndPUVdUdjI5bUtoUWRWUTRCNHVk?=
 =?utf-8?B?djV5cjloTTNkb0Y5RGYxUE5iNTAwb3h4ZFp6eGcvVnpldUMzQlpOR2JxTUph?=
 =?utf-8?B?VTVqMkx6Q2x6NE5pb2cxQ2M3WlZaaHpYbm80L01kcUhobERYMkxwOEJyK2I0?=
 =?utf-8?B?TW45YU44NHlpby92SWpuTFNiTWhkamlMYVN1YzZTVkJvNFIva1VlRER4TEpm?=
 =?utf-8?B?UFJzQ3B2SEcySjRHc3RJYVhaZDNlenVuVytNeitKRVpYN09oU2RaZTJGRld2?=
 =?utf-8?B?bklmRG9EVEorQ2Z0TGZIODlJM1JVYWZ0RThjZ1BUNkNFQVE4QjNiT1lQc0g5?=
 =?utf-8?B?aHdkMUlQM3pGdjZhdE40Q3NzRXlpSHJZalVvQnlsQWJvaUtXaFZpcTlGR1Bh?=
 =?utf-8?B?R2JpUVl6MUxFd21sLzVydGw3bjdnS05MakFMZDg1TGUxTHMvUmRZMWJLTDJ1?=
 =?utf-8?B?YXRSUUhLbjVSWlQ0ZTRUQUZONFJVQWtsRGNIRVdjK3FnbFJvZG1SVm1Vb1Jn?=
 =?utf-8?B?aWZTZlJUZWhtRHpsL0w5UjBZZmFTb1hZdnJNVXh0Ly9PS1J6R1o1U1pZV1Fs?=
 =?utf-8?B?OTA5RVdON09za2pxTFJwMnpmNStEQWtwVGtsYStxZFhOdjcvT3ZyWjhtU1lQ?=
 =?utf-8?B?cnFKK0phM3A4K2YrU3BFMzlyTHpWY2QyWTYvNUtmeWRlUmxRUys1U3djaVAv?=
 =?utf-8?B?TVNnV2JLRjNzS3Bra3Q4d1ZUanZQUDlOeXo5OVJHd2w5aUlua3lLTG1tOGJI?=
 =?utf-8?B?SVMzK2xCUXVSdE1NbGxrbmhPbGxiN2VoWEtwbjlNTkRSTXJvWFgySWRLWEk1?=
 =?utf-8?B?Z2hEOUw4QnZQcnE1TSt2bGx0a2c2dDBObjYvS3lYdW1qNjlBUUxpN1lBSW5Y?=
 =?utf-8?B?REJQNnVKK1RqTzlRYkdCQ09mdTNxS3hndEs3bVRoMTZJUWN2QWw1ektOdjIy?=
 =?utf-8?B?SUEveVhoeFNTby8vSEl3dDgxbjBoM01tQVpUeVV1VUJieDhXZ01PalMwbElR?=
 =?utf-8?B?OEFrT2gwNDBZRWRvaHdvd1VxTThxajBFYzVSRUMvb0ZUODBYMVdoRkV6dWVB?=
 =?utf-8?B?SThJaWZhdjgvSlpRZDF5cEFBeWNyR3pUblluV29iLzZ0S3VzaDVlZWpYVlhL?=
 =?utf-8?B?VkZ3QmVJYVZIOXdVTm1OVjh1eFk5aTNCK0kzakVzUlM3SVB1WVhrRkZvRHMy?=
 =?utf-8?B?bDFNeUp1THZ4MWVyNHgwMjd5OGxHL2R0KzRMcXdyVG13ZktNdzlqbmZLeXpZ?=
 =?utf-8?B?SWdINmpGZ3ljRngxM1Q4UWJ1a1d4aGRxRTlDdFROL2JqRnVTcDJyZzRyWkJ2?=
 =?utf-8?B?NlM5VUwvUTF0YUpFZm1aUmlnWm9ZZURvS3lKK2h5L2hWdTk2MEpNWVdGUjRM?=
 =?utf-8?B?K2NnK1ZOY2R2cGhidjhkL0xjUkZoTEtCVklTdXo1ZnNLM2diS1l3RzEweE5m?=
 =?utf-8?B?VXhtSHdzNnFWeStHWDFpaFcxOFJ4RTg5VmhUdUVYallBRkEvSlJ5akRYWGhO?=
 =?utf-8?B?NGlObGFnbzNWcUxhQVNTc3hkeHpDdHhDdUQ0V3Flb21RV29oaXlHVnlhTFhW?=
 =?utf-8?B?WEptN1pBN0s4TkFNNHR5WWJHcTZHV0h0WWFybWRHek0wQnN3OXpPSXJBUXhL?=
 =?utf-8?B?cG4xRkNYZDNJVzZMUzRZcEIwTGd4TGFoQStsRjBDTlJxZCtYQkNvQzIvQjNv?=
 =?utf-8?B?cTZoQUVydk9YYXpyNDFnUUx0R2M5enhvbmpjbE1EZ3BYSHZpekhvWjdIUkg0?=
 =?utf-8?B?YWxML2huL09wcWNGSHlnQ0pTeERBYkc2SnNKcGJ3Q1ZyUk1jOVY5SFc5V1BK?=
 =?utf-8?B?Q0xzRm1HWUZnZW80MnY2c0EwamxYVG93aUJ4MjEvOHJpTzdIdVJTOWdiR0lK?=
 =?utf-8?B?R05aMlNraTZUOGRBNlFDd2MybWV4SUVkT1JHUXd2Ni9hbnhmaTJzK3A4aHMr?=
 =?utf-8?Q?S7Q5rWUxaOENX7e/fn5d+awTYcUvm6Yh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXhRZHk1Y3g5M01uYm0xZDU4cUZ4UlFmc09RTGoxcWtVcXA0cS9oaE5qUWhi?=
 =?utf-8?B?eWRXeTUraTFOWnJaWFJDVzBWalBITlRBU0FKNE9ydjYwUUp0V0RiN05NRnA4?=
 =?utf-8?B?L2dPU0hWVlhTMzdRV2JTTHAvazVBOFh5SU43YjhrZ3QzQ3R1WFZBNkQ4RU82?=
 =?utf-8?B?NkxBNkZoOUJLd2xDZ1hNSVJwaTNCeHRVaGJPNDFvY29TYWJoSThYQSt1d0JL?=
 =?utf-8?B?ejdxNWd6UkNEanIwSzBJeThIUmZPS2hnSDF4RU8vSHZ5Rzg2S3IrVzJ3OW5P?=
 =?utf-8?B?SVhsd1FoS3RSMHZ5VjliOXpjN0p5TGY0eitwRzFDd0NQcFYzeDhaVExtZXhK?=
 =?utf-8?B?VEo5NzBMcmRWMzJYOFRUd2FQRkxIRzhzcDIyb2RYTDUwZVgzYVAxWENnOGEz?=
 =?utf-8?B?VVlDS2s3YW00d0JFNGJKMGZvNTZNNndnam1DT2pZYUJSeXdGbFdsU2Q0MzZF?=
 =?utf-8?B?WERZWGVEVzVZRjhBUTNQRzE3YnlMWmVESkNWMU42WUFIY2ptbnRZa3hvSjZy?=
 =?utf-8?B?ODM5eTRVZysvTnIvbFh3UUdkMDhvWUtNQmkwZzVPWWllUzRoNTQxdEZEaXBz?=
 =?utf-8?B?RGs4U2RKZ2ZxajU5dTd5VlhHWjBKVW04TUFwQTFKcEtYZmRwR1owU2VmZ3pr?=
 =?utf-8?B?a1hDZFVLRC9rczRpcVd2c0RCSkk3RDFXQmQxbVZ0eTNEb2dKRkh0R2J6YWh0?=
 =?utf-8?B?bW12aTFPcGZxdTVUSlk5RUdiVkluWXN3ejI4b2NoTEpwQTVDUkxGY01ub0o1?=
 =?utf-8?B?ekpyVUE3UklUWDlhYnBQVzBPV2Rtakt3ZzBwRXlkZGdtTFJia3pKMDR1RldY?=
 =?utf-8?B?a3NRbUxmb08wMVpGZkNDcnIwZkNmNkExSzdKVHVTUVg3WTVlbVlOVGtEQm1Z?=
 =?utf-8?B?TWN4SXRmRGtRSlNDLzc4eGhEYzJwZlJXQVlXMDJBaGw2cVF0bUdIQVVJWGNK?=
 =?utf-8?B?N2JReitzQ0tYeDNOTkFWVk1NUUdGQ1N1QjVjY2RqT1VIRldxUk5PdkhjVk5z?=
 =?utf-8?B?cHFPMzhYUUNudkxPd3A5dTRUTXdSN3hGRmFIUU5VNUtXbEg4T0Zzd3dsV1FL?=
 =?utf-8?B?cFdjSFU1TXF5NzhQUWhRVTBQS092cFE1RUxaUi9PZWFyUXR2OVNKS0xLWExG?=
 =?utf-8?B?RTdvd3lwcEtndThJa0pkcEtZMDlvZHgrb1lBTzdiN29nc0N6anB1d3RMWXQ0?=
 =?utf-8?B?eHVvRTJrM0JpN21VTlFmT291WFdHU0swdFRKd09hdUxZKzdsMzNyOGhWYitW?=
 =?utf-8?B?QzhhR3JLUHB3YWJBaEJEKzBGUEtxZ2xXT1A1c3dUS0ZMVFRPUDZjZlZpS1Rz?=
 =?utf-8?B?TVJUcVExQjEwb08rMjFRek5pd3NyeVZtU3ViSlYwdFBJTXF0eXJFMWpXdFlv?=
 =?utf-8?B?Z1NiZEtlNmhNaXBKbzZROTdMUk1ZZG5WVjlkR1pGZjNibmFlTmpPdCsxbXJJ?=
 =?utf-8?B?R3EvSjgrQU00WC9XUy9ZdXNVUHcybzNDU004Y0M3RGl0UDIxVzZVNThOQURl?=
 =?utf-8?B?YVdHc0hJbnl6eG1Nemx6L0tQUitJbUo4bUxZSk5vM1Q2cithWWsyS2xEcU5W?=
 =?utf-8?B?R0pORlZLa3NBZGt6WDdERmZKQXZZOE94bXR3L3RBb2Zyd3VrSGlZZ3AyeDRX?=
 =?utf-8?B?bWs5QytzQmtVU1cxQXRPL2JodWxCQkxlRkljRDJ3NWxsSUhkOHExOXJQVlls?=
 =?utf-8?B?UUlnSGVvRUlUcUlPUkRzWUc0Y0kvZmViUFVGN09tNlhuZnJVY2dDV2NGUlQ1?=
 =?utf-8?B?aFB0RWIvZUxxL20xLytveU1ybmtpbmNrVmtxcVhHV3pHb3BhS3pkUTlGMWhl?=
 =?utf-8?B?WWZkb05UaDZjOFpoenJ4ak1xb3lwdFk5aTErVHlQZE82dGNZNmlYZ0NYVTBQ?=
 =?utf-8?B?R1licGVGMzlCMzVBdVEwY1ZNQ2RKcjdEb1RvL01YSFUySGFQY3JMcmM2M096?=
 =?utf-8?B?SWtRTXladGxEYTNwRmZlNVEvSU51cUIrc1A3b0YyYlBZNUMxL2h1UmFmSjBW?=
 =?utf-8?B?dFNKekFiV2pDU1JwR1BVQmVTS0xLYjNsdk1lZEN6RDJ0RklqWTd6am5oRTBz?=
 =?utf-8?B?SFN5L2ZaWTd2Qmo4VkJCYkJENkRaM3JkZ3JJVXlnMlVzMWI5aXJGM0toWUdX?=
 =?utf-8?B?RlkwMGo4bnNrdzBJL0NVK1E1Ykx4Z2RIRDZGOGhQS0dvemY5SURLcE93MUlV?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bcd745d8-ec85-491f-6d0c-08dd5d7a8648
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2025 13:18:17.8497 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FLuOv/p0T9s6+pYmddXTpklyU5TP3MZgdDkRO4Eh31T8tTVRulpBFwXFyR3xi8NMM0kotchC11KAcMTFi2HFGXON1mfnS2vlOtk4f7GcPwg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7108
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

On 2025-03-07 at 12:31:25 GMT, Chris Wilson wrote:
> Quoting Mikolaj Wasiak (2025-03-07 08:44:29)
> > Hi Krzysztof,
> > 
> > On 2025-03-05 at 17:31:49 +0100, Krzysztof Niemiec wrote:
> > > Don't we run into the same issue as in V1, meaning we use an unknown
> > > current->active_mm (since we run in a kthread, and cannot control it) to
> > > use as the current->mm? Maybe a better approach would be to create a new
> > > mm for the duration of the test, similarly to how the patch Janusz
> > > mentioned does it? (51104c19d857)
> > 
> > As per discussion with Chris, using active_mm is the correct way of
> > enabling current->mm in kthread. On the other hand it may also expose
> > issues with underlying tests because they didn't previously run on such
> > hardware. I think potential fixes to those tests should be addressed in
> > separate patch.
> 
> We've looked at the tests, and they should all be finding unused space
> in the mm and cleaning up after themselves...
> 

If that's the case, then the patch is alright. I was mostly worried
about messing with userspace memory of a random process.

> If we put on our paranoia hats, the biggest problem with borrowing
> userspace's mm is that it gives them temporary insight into whatever
> we place into that mm. We don't expose any data, unless by error...
> Not sure how much effort we want to put on making the selftests paranoia
> proof, but that (and the surety of cleaning up afterwards) would be a
> good argument for creating a temporary mm for our use.

I don't think it's really a secret what the selftest puts in that memory
anyway (assuming normal test operation).

The only problem I can see with using userspace's mm at the moment
(paranoia-wise) is that we only lock the mm for the vma_lookup() check
[1], meaning there's a time-of-check-time-of-use situation. IFF
userspace can somehow unmap the obj from its side after that check is
done, this can potentially mess with kernel memory. I have no earthly
idea if this can be really abused though, so it might not even be a real
issue.

Besides, to achieve that, a malicious process would have to win the
kthread active_mm lottery so its mm is used for the selftest, then guess
the address of the mmapped object (it's technically logged as debug, but
the loglevel might not be set as such), and then race with the kthread
so the object is unmapped before use. So a lot of stars have to align.

If that is not something we consider a problem, then:

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

[1]: gem/selftests/i915_gem_mman.c:923

> -Chris

Thanks
Krzysztof
