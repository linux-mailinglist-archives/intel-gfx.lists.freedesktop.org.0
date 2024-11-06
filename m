Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A238D9BE91E
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 13:30:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4309910E6CA;
	Wed,  6 Nov 2024 12:30:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ndi8LCb4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EB7D10E10F;
 Wed,  6 Nov 2024 12:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730896239; x=1762432239;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=CKFOJIwJkfW/SwTueXpDCw7AvHomMeDcWPJkPdwie7U=;
 b=ndi8LCb4zVCnUXMzCopepojqYsw3jGmHf3v22rByFcm6zb60DxEnH3Ct
 XZY8mw8ncyiQeEVAb5KmGjtKwgflpus05tuXwRah4bBoQBZgAyprgEaX5
 +2vDSHL83s2LqnecU68/sMJfoF6ujBMD7ycF/4dKBu9P2iHo6CwsbyrSF
 ewRjONSliLWr6+zMScsIsalNSqr9UxGONa2zg9JAqxAAH7i60jEcxZLjx
 3L375GuV2KLaMYb7mpkzkH+zlx+cDSYEWvackhcGqi0c6UUXWdkTdu2hg
 11JtZvRsjRjnImNN7PsZd/HpHG3jUx4nWYOfejfA/kWV7LaEeXB9rikW8 w==;
X-CSE-ConnectionGUID: jW9eVUOLTWSPoTYATp6kkA==
X-CSE-MsgGUID: /Jsw7wwAQOmWVaODjKAR1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="48206775"
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="48206775"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 04:30:38 -0800
X-CSE-ConnectionGUID: Zr4YuEGqROmJS/3HL8EzOQ==
X-CSE-MsgGUID: rkFMvFoaTJG41ZEJCisrVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="84623749"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 04:30:38 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 04:30:37 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 04:30:37 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 04:29:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rRBjsGXpfT5YoLWVEUfWqnU9OjNsZI4cJkiZD91E5doDywjObO0xl4VvLY87ubLa8V7hW9jGC1CYnaofs1eq2GYg/dyDLkavWe4KoutFbYF1mssx4uONFztv2UJHWpI+jx1N7EFrOA3A3O2i+R/uFttrXpPgVGdi+iA1tyxmfTngN3EfeTWDI+UuA6Lba1JJf5DZ6UI9W4I8bGQE9dM+w/5wEt/6wJnyZioFSa/NALOBHmF05MohoV3oHVXcDEFh8Ft+k6ywkvPKXelBF5HzxxX3Y6yQP03VaWg1UuPZUoBd7AtkBIannOPxclF/R5HmqXyjcp1kcTeYf0TFgD4zRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Fj25mqBsIma2aJdCKwEprRiiDAA1VqnPY49d/Gbb7k=;
 b=VE+pYr9AprrxSfEsh3UPJH2h0ErnbOrE3berscu2eQMUV4iGC+KowL1DDHvfdtZA9QAF0W/lUTE2PO6BHFL+yaCrB8H+YvOL8o2U3WHQt0hspxVpm2U4qdiFJGC4k53Lap2fVG8GSYscach7iX/baUSSXHe4pl9fAJfGWKHC2K6SNaDCPZhif4bTZbpha7dpKAS1WvyU3qEVGvyNPMjaFEKLSw05r8OuAWjX+6m9l4vtej50W++di3YoZZE4LT6ntLYnvpKvJnn7Vk0IDBnFUvj9NAZPsNBEEVqi3UorXTHIunIFLeq+zkcT+97el7oqZKIJ/3yH4cLFRMHb9hX5Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CO1PR11MB4851.namprd11.prod.outlook.com (2603:10b6:303:9b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.20; Wed, 6 Nov
 2024 12:29:40 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8114.028; Wed, 6 Nov 2024
 12:29:39 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <fcfcdefef53bc333a8b7015fc603da21fd11a406.camel@coelho.fi>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-9-gustavo.sousa@intel.com>
 <39ca0bca034ed369700b2ecc1b1a411c824bd3b0.camel@coelho.fi>
 <173081414310.2525.7600840303352098383@intel.com>
 <fcfcdefef53bc333a8b7015fc603da21fd11a406.camel@coelho.fi>
Subject: Re: [PATCH 08/13] drm/i915/dmc_wl: Allow simpler syntax for single
 reg in range tables
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Wed, 6 Nov 2024 09:29:34 -0300
Message-ID: <173089617440.5449.16863330045914467711@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR02CA0003.namprd02.prod.outlook.com
 (2603:10b6:303:16d::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CO1PR11MB4851:EE_
X-MS-Office365-Filtering-Correlation-Id: 97882d43-7dc6-468f-511f-08dcfe5eaeff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NFh0VzM0eHJPWmpCRTZPMk8vWXJNRFBHUjJkbTVaS2M3amVjSVpQR3VOdTJP?=
 =?utf-8?B?TWN2NGs3cU1pVmc1UGpRaU42ZWc1d2lIa0lrTUFUeUl0WmkvMDRxOG1PaEJ0?=
 =?utf-8?B?MUVPQ29xTFpGZ3hCMWZSUzhaQUhUbG95QUNFNTFtVEtMeXlaWmY5bVU2dy9z?=
 =?utf-8?B?SjVaRWhkaU04L1M1VTlJLzh2aGN4eEFaTDVjVTA0MGhXQXV0QzZNcGYyOU1P?=
 =?utf-8?B?akthNFRUQmNpakpXR1hhL2tNaW1FbDU5bkNhekpaSXhkSm1SaXNjcFduekZC?=
 =?utf-8?B?U2VKaTc1MDloYUdPUStNWThYSVNxbFVLRkkvcEpGcXZldWh3MTlBK2FzTW5G?=
 =?utf-8?B?SUQ0d3lWOE81dHpxN1VjMlBRbmlWZFFpNVdQNCtlTGoreG43Zm8xOFdrYmo2?=
 =?utf-8?B?bGY0TTF3eW9hamhhRXV0OUlJeFNBVmZGVzhUWGpCS2NZTnFwYUtpeU4zb2lU?=
 =?utf-8?B?Ym83WVhMcjI5VjhEZ1hZWCtFRGNXNVdLZnVzU25mNEVKdTNrREFnWE5MY1lo?=
 =?utf-8?B?bldRTmdoTzJSc1pCUXdxRy94VnlIR0hQcUZEWnlsUEQrQ05DYStvckpOMjN3?=
 =?utf-8?B?bEwyOU02RzBBbWF1Vys4a2IyL0RQTXVqZ0krUFRmVmxBSVdad0tta0JMNzRE?=
 =?utf-8?B?NW1ydjBzaFFSK0JzKy9IY2hTOE83dDFHb0ZDQ3R5ZmRYWlE1TEswa2wzSDdo?=
 =?utf-8?B?MUxlQlpNd3ZIZDFkOVBZR0VRYmlucTIyM2pMYUxKeVV4WnFlYmVnbzI3STVQ?=
 =?utf-8?B?c2h1NThHMWtaOHc1QnhYNEhtS3R6dmlLZmZ6SjRTaWZhc08xVXpOZWc2S3JI?=
 =?utf-8?B?QUJIVmZFSWRmNWY1ZC9QRUtHMlhGNjA1QmlCMlBtLzRET2UwMjJNQVBLK2tQ?=
 =?utf-8?B?TlgwWkpwRkJ4U0xpaTRMaWI5cUkrWCtnTFZQWDhSek4xeVNGNHljYUNjcHVa?=
 =?utf-8?B?REpQYUFDUGNDNmYvSWdiZWl3bTU5NHVUdWlMMUZmNzc3V2dTamliV2ZoMUp5?=
 =?utf-8?B?MTFwNzNpbFZTdllZQTlKSXZoNW03Z0pwZExVemhoZTEzMzVvdUNKYStrVDk3?=
 =?utf-8?B?MUtOK1IwWEo4ZWloMlZwYjNSYktWQmV3dnh6ZVhxSE56Q0pJTzErM2pRSjBk?=
 =?utf-8?B?UjF6TW92eHhJQ0p2SWlaakp4YlVaZ2NFZURydUUrcUVlWjhldnFvbWdRd0hK?=
 =?utf-8?B?VFN6c2xyL2RtVzgrSGV1WVArMHdnbUc5VkRUcGwxb3MvSmVUejNXSHM1THdU?=
 =?utf-8?B?TDB0K0FUcTZkSFFvcy9nVzdCR29FMlFHbXVucnZGTkgxeFBIbkx6c2hieGxq?=
 =?utf-8?B?RHZGRVlKeEZaWDJLSFVob3VXQXVxOUFSUTRoUU50aUxUMXBaV0NDN1dBTUpO?=
 =?utf-8?B?NXJQSlNQZnNDK1dNZzUrSS9hR0wwRW0zZkd0YVZ0MVFRRmN3R0l1UmNmQ3pU?=
 =?utf-8?B?Z042elBRUjZCY3dHY0RxNm40YVd0dEFkZ2VYRDFVSEFDK2txQXBrNUJpQ0hQ?=
 =?utf-8?B?R1N4MDVzUjlXZVpodTQ3RFVjdTBaWjJIbGVDcWtMNm9GTmViZ1Vlc0RZVXFs?=
 =?utf-8?B?ekRRYnhveGZLV1ZKcnBvZExWRFd6Y2sxcHdSV0hvVGZVamFyK1I0bDYwV0Zi?=
 =?utf-8?B?REFBQ01zL1R2a3daaVFVaDJ4S25nNy9NUDIyR3QxRmMyQ3NvSlYvNzl1REFD?=
 =?utf-8?B?eVdWU0xhZEc3ckcvcGZYYjJaR1JEUmk0aXV5Q0JyUWdrMmVzamRTRWlIMXp3?=
 =?utf-8?Q?xQKf3bcgMRiGKprPbT8V69uq18cOeV6yPocPf6U?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N29ONDYrOGoza0tyelE4bnM1T1JqbWVMN0thc3JEbkFRVFVzeThib2JtaVg2?=
 =?utf-8?B?dDlHclBLN2VHTUZZK0RYMGRWYTFuWUQ4NzMxNkh5bzd1UW1ibVJTMEpvV1pI?=
 =?utf-8?B?SUZMZFk1Qm9XQTdpUzkwd3RDaVZGQnJKY3JCdkNScHNkWHJURlYrcXJjSkt0?=
 =?utf-8?B?MlcrNWpmOGNMZmJiUUhLVEN1TURNMHVlT1lOVGROcGlaWlE5ckRDNmtBT1Vo?=
 =?utf-8?B?SEN0UWxBakFkcEh3Q0NjdGo5UXMwaVRyZUQ3Vit6Z0VRSmNqb2l4TjFaNlFr?=
 =?utf-8?B?NFhuKzNIejMveVR4d3d4STA2aWxrOWxvQmg2WXhNMm5nSFlZa3pXU29kNUQ3?=
 =?utf-8?B?QzR5N0txWFEwQVFsL0d6cVlKKzVSaWg4dlBJN1psVWUreS9obXZIOVlZdE1x?=
 =?utf-8?B?eW5yVDMvcEhQSWdSamRRZkRqUlVScEpUTG1HbU1oUEFwZjl2K29oZUNySll4?=
 =?utf-8?B?M0cxTnlaZ3k5ZWVWS2RnQXJZeTlIVEtRSmZCdENKZnkwVTV0ejVQZWJqRWhU?=
 =?utf-8?B?elE2ZGVFOTNqdXkxR20rcmFXcDFSbEVMdU5sK3VUWDJCYVlXMThMbG1BUHpG?=
 =?utf-8?B?RkkyWWIyV2o0cWp6RTJ6dEtyWkpzRS8xZGJzWW5RZmZSbzNTK1Y0THJEd3JP?=
 =?utf-8?B?UmRvMjhWOEQrMGFKM3AweWhmOExwNE1qSDgzQkhtc2Z0a2hYQUYzd0hucTB0?=
 =?utf-8?B?bks2N0RHQnBuckFwemRCdkVUd3NuK1BuZlpxMVNib1BlOGdTOENERHZMeUZE?=
 =?utf-8?B?eTFyZzBPTzBqTFdKcHV4U2NQVmNIRms5UHJXTjRyRWRGS0dXZkc3LzRqRGR2?=
 =?utf-8?B?OWN3T210Y0RoWDg5Z1ZCQlFjcEFxRVlINCswWmh5VmhLR0xQMkp1SXFRcTVC?=
 =?utf-8?B?MmhXRkhlRjAyREJnMXZwSzNocjR1Qlg4aUMwOExKTnF6Qm5hQmgvcEJCVTU0?=
 =?utf-8?B?MTJ1K1UvelVaZEtjaVQxMklnWnFIeHlqdzk5aXhMeTVYVWRkV1V6aDE3d09w?=
 =?utf-8?B?WUlHcmdyZjdOODc3cHBtM3lYOWVyV3FKaDBJbU5zK1hQbUlKdmkvWGRWTFgz?=
 =?utf-8?B?dDFJMGNndk4zSlFVNzdzWnpUS1lQRUZxZlBYdHRDMG1QaHowRFU3MkJITE85?=
 =?utf-8?B?cVB0aHdHQ1FHYVR2TkZqYnFSemhrQU9CSVI2Y0RMS3hyd3V2dWMraTlvclpQ?=
 =?utf-8?B?SFMvWVlIcVk1STFjazV1M1k1c2QyakFjODB6NDFyaWFWL3NTSmlFUjF2N2FD?=
 =?utf-8?B?VFJOUHRCNW9CSHJLK1Y5b2JuTDg5dGhqR0FYbWJhMVJMVklTTE96TkN6QUVD?=
 =?utf-8?B?NEJQa1BzUXl1YnR0TEVVS0pZVndtTlQ0czhFRW5QejBKTVBWdmZ5UkhLT1g4?=
 =?utf-8?B?WDN4cWFMdVQ5MHdKbnh2dUV3T3lBb282MjJXK1Rsb3VxUE9LTjVMWTRWTnkw?=
 =?utf-8?B?Z3dCNGd6ZytEMTc1RUdmckN5OXVFNm1QSCtmRVNzcWp6ZTd0WXB6Y2huQ3Vh?=
 =?utf-8?B?MUJ1RHZTSWJ5U0NnNHhmQ2R4azM2Qk5xRnpEckFsMDJleDRIeHA5RGRDOGt0?=
 =?utf-8?B?TFk3STBKOUpKeG95M0h0QVEzWDJnT1hWMG9EQnpWdVN1OTlwdjJVdjNJdW1G?=
 =?utf-8?B?VURFWS9JUVJUbUZoQXhsUHh0R2tRcUFzVnJ5Y25waFVoaU9NSGs1cEU1SkRZ?=
 =?utf-8?B?dUF1T25Wbi8rU1JFb1l0TnNVYTBQdDJoV3QwRHc5SVh0enNSWmh5cU4vb0JS?=
 =?utf-8?B?Skd5Z2syV3Bpcm51VmFDeHVtSzNheUZaVVU5R2xvMnNycWVwOSthUDJxRDZJ?=
 =?utf-8?B?OUZGam0zYTdWRVZPUGVnR2c2WXJwWHdhMzhlRDFrSkkyczFha01GblEwa1l4?=
 =?utf-8?B?SjFkMUNWVDNUaWdoS1Y3cFJIZ3IvdGFXNGZ3bS85WlAzZEcyNWhCdkhGUG13?=
 =?utf-8?B?bWdOSHZyM0lrREJraDZNRlhsQmZ0b2h1K2VtQ3U3WkdxZ2FCMXQzTS9aUXJa?=
 =?utf-8?B?RjFnVFZndVFpK0dGb1NBdkdydHpaYlovQ1hPRnp3V0VVVnVSU1JRNTI1YmRN?=
 =?utf-8?B?UHorcTcyd1BGUVovRWhMMk5VRkJnNGovZTU3SEJKaG5MR2Q1WXR0dlpENE0r?=
 =?utf-8?B?cVo0TTlmcWFxbUI5N0kyaldCMnU3TzZzRVB2YU80c2ZxakdVQy9XSCtCQnVm?=
 =?utf-8?B?ZHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97882d43-7dc6-468f-511f-08dcfe5eaeff
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 12:29:39.8396 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mgGmzSiCkHPNzNgm0UpU4eGBrhn0YqamKY6Fl9S4BOtxOOzlnNSCTtWeemOFySNs2Y2c4xO+imyIgCWFrlVlGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4851
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

Quoting Luca Coelho (2024-11-06 09:23:32-03:00)
>On Tue, 2024-11-05 at 10:42 -0300, Gustavo Sousa wrote:
>> Quoting Luca Coelho (2024-11-01 09:58:33-03:00)
>> > On Mon, 2024-10-21 at 19:27 -0300, Gustavo Sousa wrote:
>> > > Allow simpler syntax for defining entries for single registers in ra=
nge
>> > > tables. That makes them easier to type as well as to read, allowing =
one
>> > > to quickly tell whether a range actually refers to a single register=
 or
>> > > a "true range".
>> > >=20
>> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 118 ++++++++++-------=
---
>> > >  1 file changed, 60 insertions(+), 58 deletions(-)
>> > >=20
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/g=
pu/drm/i915/display/intel_dmc_wl.c
>> > > index 8bf2f32be859..6992ce654e75 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> > > @@ -54,82 +54,82 @@ static struct intel_dmc_wl_range lnl_wl_range[] =
=3D {
>> > >  };
>> > > =20
>> > >  static struct intel_dmc_wl_range xe3lpd_dc5_dc6_wl_ranges[] =3D {
>> > > -        { .start =3D 0x45500, .end =3D 0x45500 }, /* DC_STATE_SEL *=
/
>> > > +        { .start =3D 0x45500 }, /* DC_STATE_SEL */
>> > >          { .start =3D 0x457a0, .end =3D 0x457b0 }, /* DC*_RESIDENCY_=
COUNTER */
>> > > -        { .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
>> > > +        { .start =3D 0x45504 }, /* DC_STATE_EN */
>> > >          { .start =3D 0x45400, .end =3D 0x4540c }, /* PWR_WELL_CTL_*=
 */
>> > > -        { .start =3D 0x454f0, .end =3D 0x454f0 }, /* RETENTION_CTRL=
 */
>> > > +        { .start =3D 0x454f0 }, /* RETENTION_CTRL */
>> > > =20
>> > >          /* DBUF_CTL_* */
>> > > -        { .start =3D 0x44300, .end =3D 0x44300 },
>> > > -        { .start =3D 0x44304, .end =3D 0x44304 },
>> > > -        { .start =3D 0x44f00, .end =3D 0x44f00 },
>> > > -        { .start =3D 0x44f04, .end =3D 0x44f04 },
>> > > -        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
>> > > -        { .start =3D 0x45008, .end =3D 0x45008 },
>> > > +        { .start =3D 0x44300 },
>> > > +        { .start =3D 0x44304 },
>> > > +        { .start =3D 0x44f00 },
>> > > +        { .start =3D 0x44f04 },
>> > > +        { .start =3D 0x44fe8 },
>> > > +        { .start =3D 0x45008 },
>> > > =20
>> > > -        { .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENAB=
LE */
>> > > -        { .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
>> > > -        { .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_C=
TL */
>> > > +        { .start =3D 0x46070 }, /* CDCLK_PLL_ENABLE */
>> > > +        { .start =3D 0x46000 }, /* CDCLK_CTL */
>> > > +        { .start =3D 0x46008 }, /* CDCLK_SQUASH_CTL */
>> >=20
>> > Many of these are probably actually ranges.  I'm not a HW guy, but
>> > these are probably blocks that need the wakelock and it just happens
>> > that many of those addresses are actually not used, but would need a
>> > wakelock if they were used?
>> >=20
>> > IOW, e.g. all these DBUF_CTL registers are probably in the same range
>> > that needs wakelocks (i.e. 0x44300-0x46fff)? Do we really need to
>> > define many of these individually?
>> >=20
>> > This is related to the previous patch as well, but I decided to commen=
t
>> > it here because it becomes clearer.
>>=20
>> Maybe my reply on the previous patch clarifies this? I.e., these
>> offset or offset ranges represent offsets that the DMC touches when on
>> specific DC states.
>
>Yeah, but I think this idea of blocks is still valid.  I think it's
>very unlikely that only certain _addresses_ and not full blocks of
>addresses are affected in the HW.

Except that this is not about the hardware per se, this is about
registers that are touched by the *DMC* during DC states and that need
DC exit for properly accessing them from the driver. So, I think blocks
are not applicable here.

--
Gustavo Sousa

>
>For instance:
>
>         /* DBUF_CTL_* */
>-        { .start =3D 0x44300, .end =3D 0x44300 },
>-        { .start =3D 0x44304, .end =3D 0x44304 },
>-        { .start =3D 0x44f00, .end =3D 0x44f00 },
>-        { .start =3D 0x44f04, .end =3D 0x44f04 },
>-        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
>
>This probably means that _all_ the block, from at least 0x44300 till
>0x44fff, needs to be protected.  What I'm trying to say is that even
>though we don't access e.g. 0x44400, if we did, it would most likely
>also have to be protected, because it's in the same block of addresses.
>
>I guess this doesn't matter _that_ much, but it would be just cleaner
>to know the actual ranges where the wakelocks are _potentially_ needed.
>
>--
>Cheers,
>Luca.
