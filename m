Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E97B4BB0463
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 14:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7326B10E6AD;
	Wed,  1 Oct 2025 12:07:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bf7BqFvb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16B2E10E6AD;
 Wed,  1 Oct 2025 12:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759320439; x=1790856439;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=qTR7vbdcN9Q3nh5a9HkNum9ZLM/BvuQ+m9ZqYE2V29c=;
 b=bf7BqFvbSPHxx3ZHMqdvvb3Ah8ynmawuxol5xkU5N8ZTJ/liNMIYvNkW
 APAOunPQ6a9XQKe9nKZdBrgmhZKp6lT2xxFBOBmi3E4NHTw+t5/rIjPSo
 4QM0maepABDo+bJNT7e2jtrQepDBHftcYDNSmJ/u4l00PIGTtSwmGfAJZ
 MML+MnaHxgBoiklsbLlEpxZj9Dnl6zlrYeRRMZPDb0L6MHrEKs5OwQaTR
 hTpmoZhI/yg1Zud+Bt/tKx7MXYZpfKPY8SEc3RqzDC+hRLeLjQlOnyUFP
 sB0yFrLWoJQ8KCAjh1buL6/DajDTMMtn2qMMJaQWJjyw5CJkgR3alvDpC w==;
X-CSE-ConnectionGUID: QAFB0ynbTw29LTpRSxWH7g==
X-CSE-MsgGUID: faf6WOjKSTKpIk5+AhUF7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61697190"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61697190"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:07:19 -0700
X-CSE-ConnectionGUID: xVkvlXIBSxiUnGyHbQYzIQ==
X-CSE-MsgGUID: wf8yuEOFTruTVGTa4ylfNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="209721194"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:07:19 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 05:07:18 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 1 Oct 2025 05:07:18 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.31) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 05:07:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eoPGj1jUoxZWe0P81bvpb+ZbSXLBFk5n7zcvCXWIuEizKWD38rfsqxkOyZizQiugqho19gn2NoddqW9FXOzrJblLmK8MByiX28Q/DIXxnsb8tiR4Nf5ss3mzqiE88MeNLNaopiFyjmh/JXFhQYjRZElkW8pupF0gxhajwUTMmusr2GtENF3K8tSXA+aOSI8UEAF48xFwyVWu/HKynYs9Lb4y1C6rWhPk5X3+lRwDcquxmBlJ8v34/mSa1UQwkbE8CWhszZJL1lHjtcJHB0JcjBU/aA15U/dhr563S82QV5yNSh6zGYxmd+h8OUPd24oVmtOpMEVEvIh9Hvk1eMarfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qTR7vbdcN9Q3nh5a9HkNum9ZLM/BvuQ+m9ZqYE2V29c=;
 b=tbz4HwaYcpzs0JOe8pXzqiM9cC7ElIQF4ce5fSUzoC2akAjpGLAlBMy2z4SpjDYEhZnBuKJ2di6Zt2KPbYO6PDXQF/cmqLIs8DJwbJHL7/e3rkFB6iZa9xidiIIvCkOhzknOLkpZQmagFN/vfXxim2yLIPyE17q6m7bTHZD6wgZoEPvUj0toceKJVLfI7wRqptclgKtbQXHhyMd+Kemu9yemnAx/kHRTb65ulQLFGMz934DCCveZSOXYtA2/o7JgohizwxedyqiMbLblCAN4nFnclj/Lh2Uoe57SqEa2I+cZ9g03OJO7036erWzA/ebjWqt+VwznEXk+bf/T/YSk6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MW3PR11MB4618.namprd11.prod.outlook.com (2603:10b6:303:5f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.16; Wed, 1 Oct
 2025 12:07:14 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 12:07:14 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/3] drm/i915:
 s/intel_get_linetime_us()/skl_wm_linetime_us()/
Thread-Topic: [PATCH 3/3] drm/i915:
 s/intel_get_linetime_us()/skl_wm_linetime_us()/
Thread-Index: AQHcKZCIgphEcLkpxkCcsYB1KBn7KrStRLUA
Date: Wed, 1 Oct 2025 12:07:14 +0000
Message-ID: <ef701fc2ffecc561e81e1cba229f8f01e575a0c2.camel@intel.com>
References: <20250919180838.10498-1-ville.syrjala@linux.intel.com>
 <20250919180838.10498-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20250919180838.10498-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MW3PR11MB4618:EE_
x-ms-office365-filtering-correlation-id: ae439dc8-5ce7-493c-516b-08de00e30ee9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?R3ZKcWx2L0lVc3pLN252OFRUbXpPVWxJbVQ4eFJPQVNWZnQzaWFHN0FlYmlH?=
 =?utf-8?B?YndUdzA1bUtZRHAraktkQkNtc1QzTVo3SlcvaHVaeTlhVmpBa2IzbjBUYjkx?=
 =?utf-8?B?eTRrbUVRNmQrOEdXcHlVWm10aGNKeGRGQUsxR0IwQmxFazdHREZCbmpjNStk?=
 =?utf-8?B?OE1yVmwyN3RkYU84V2xrVGlRMVFYL3JtcGpyVmowNTNaRlN5czJpVmRUb3V4?=
 =?utf-8?B?Vjhadm1nYUdEbjZ4bFRhUlBjdGxGVlk0TTFlM0tJeEFCK1lsUys4cjhVRFhE?=
 =?utf-8?B?Qnh6b3lJbXBNK25tYkh3WURIK1Q0MHJRYjk1ajJEWUhTeWNoNzBmYzBwWGpZ?=
 =?utf-8?B?bTZINkhQVnpFSmU4aWlTSngyUGpsbkZGTThXaVhhZ0ZZT0VxWis2REJteEZW?=
 =?utf-8?B?WDNzb1pZQkxYVEM2U05CRzNhUjhGVS9uN0hNVThYZWNpaWRhS1F6V1RMRmI5?=
 =?utf-8?B?Q1MwajZodjJQelJsYTA0N1ZUeTE2ajhiREd0cDV6cGJ4YXhkN0IrNDcrSFM1?=
 =?utf-8?B?cnhLbzU1MzFJOU5uRVg5ckFaeVNWR3F4dzVtWnNhRUt4cDcvMjhMMExaWjFh?=
 =?utf-8?B?M2U5SjZyQkpNVnVQMFgvbWo4RU5qV0NFSGpySjQ0RC85cEVhRFpDRFcvbHNs?=
 =?utf-8?B?cVNLK2UwYVlBNmppcjcxekljMkxBT2dlYWpHb2NuTFlkVm9iYXNyQko1NWth?=
 =?utf-8?B?ZFR0b1oyZE9idXlmUFFUNGZ3MkRpSHYzNXM5dTROdGFnT1FEZXJ5ZnBSS2V6?=
 =?utf-8?B?dWVnTVhIVEh3K3JVWmhvNDIxbnl4emFkTUxsSUxCNC96d3lYMXN3Nk9PQVZ2?=
 =?utf-8?B?ajF6U1B4TmhLTWpOeEtjRm9xM3ZQMnlFVEhsWGluekUvZlR2amliOHhqM1VT?=
 =?utf-8?B?SldHY2VvMnE4bkdZRFRVS3JBUVVnc3lrd2s5WFFxQ0J3TE1peG9leVhZZ2VQ?=
 =?utf-8?B?QzQ0ai9SRzBnY3VOK2NwV05WWVRTS0h6bFI4NDUwcGNRY3E3RVBvaVU4Wmdz?=
 =?utf-8?B?Q0V2clYyb0p6eGIrbldWSHNSTzRsUWIzZ2hZU0QwNHZsNzJ1VWU0V2hmMkJr?=
 =?utf-8?B?TXYxTmdocGMzMUU2c1RLWGhCeGJUTWY2azBsRmVKNTVGZXZpaFhDMmZmSFg4?=
 =?utf-8?B?a0x5bTJrQ1kzb1VHeEdwNFRGTnhJWFp2dXpRdkEyVXJXUmtVa1FjZURZU3JV?=
 =?utf-8?B?ZGlQOVoya0kvcWZ5M0FjOFRwNUFmcDNjVG5pRCtwK1JFZ1dVb1R2MmZSR0hJ?=
 =?utf-8?B?ZEErYm9XSEc3YjVUVDdaOHlwWG5PaGxoS3gvZnVWcEM5N2p6KzhZUnU0MVNV?=
 =?utf-8?B?RTRoVE1QM29xM0Y5UjV4dWJzT3hsSmkxd2RiQkRlRTJHVVA3Y0ptV25RT2Vh?=
 =?utf-8?B?MWhpWlFHVFRPdjNoSEJrQjAwR2RZTTIyZm5hRzM4L0hhVnU3MkJoYU1abmpZ?=
 =?utf-8?B?U0NYbW10bHBoZ3VUcGFWelY3eis2cXF0bGVrSGkxVmYzd2VITE43T1BkRzRw?=
 =?utf-8?B?MVVzL01mWEE4M0o1eE5IT1llNnM4eHlXQ3YyZkVWQVZQSmliY1h6WUpaRStQ?=
 =?utf-8?B?Y1J5MUJBZWlsNm5GaStERUtSZ3ZPTUFxc3lFQTJ3Y0hjZUpZM3hGYzhkV1Mx?=
 =?utf-8?B?RXo4NHM3YXhCQmhtZDFQMG5rRzJPbjFJdGVUMXNjdzBaMDcvaXpGWnp2TDJk?=
 =?utf-8?B?YVRUMEFJNGJZZEFZNlJaUGhCbURDS3V6bTM5U25iaVVWQ2ZUM0dIUEJDemEx?=
 =?utf-8?B?NVVFZzUwckluYXJ6MkRDRDl1QnlxWVVmMkxGbk9oeWtJcFBZR1REaFFySjR4?=
 =?utf-8?B?Q29Zc2kwZHZTc0ZIQ2hoemhQVkZWanhiemxuT0ltQXFmdjZaVTM5cng5VTBW?=
 =?utf-8?B?cFlpeEVVOUtJNmM3NkUxN1owNUFLNit5a3M3TDZtSGtRV2FCdzBKSXNUOXll?=
 =?utf-8?B?Z1REUHFHOE01RW5FbkQraENtL05kWVdIQWZtSXkrdmhleGRockZtdXQ3M0Rx?=
 =?utf-8?B?aXY5dzZXdEoyNmFXLzRRSElOdzlBME1RQjJZRXpIREw4MXNpRUxVUTgyV1JP?=
 =?utf-8?Q?Aaoe5p?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SW9nZ1kwcjhKVjFwUGR6bmUzWXpZa2ZXYTMzN3BMNXZOQittWmZDamRiOEh3?=
 =?utf-8?B?V1JXS0w1dSthaWF1MkRYUEcwd1U0dVNVQ3pMbzFGTUVHOFRreE1yL09vSUY3?=
 =?utf-8?B?RTIvWHJyM3NTVmZXRlpKMTJ5TjhDc2hsR1dDc1E4UGV4bjhPMWFZMEZPaW1s?=
 =?utf-8?B?bmJzUmhpSWdHMWV2dWpxK1hiK3JzdDVad0hTNVh3dDJLY3NGL3lWak4xVU85?=
 =?utf-8?B?eFFqdWpESmVFNitwZkQyZzBYUGdtUEtvZXkvK1RGQmNxdVZsdVl2eWEvdUkr?=
 =?utf-8?B?SjYveGxEL01ZVWtmbEFDZWFESFcrcmUyRDdFYzdIUWd2bndYL3VjNCt5RTRQ?=
 =?utf-8?B?MkdvazZTWFBJU0I4Vk1hTnZzNDlkajRvL01DeHJCNTZRYTlNRmp1RjlocDJX?=
 =?utf-8?B?ZUFhS0RoTk5OU2Y4ZlNZWmVMK3Z1d21TUTcyM0xUK0NiWFRPc0hRS3RkdjFk?=
 =?utf-8?B?WkV0Z3NqRzdEaHVRSTNNd0RFK1NrVGMvdW13Z0pRVnVaVUpQdTlaWTV5VGRM?=
 =?utf-8?B?bzlsQ1d3M1BmcGZrQy9ITG90cnYydmh2M29PNHA2N1YvcVBpbXlMUW1acnlZ?=
 =?utf-8?B?Ync1UUdkNFJQaHJOL3A3NS8zNnhEMmtkalRRaDdkUTFWTEg2NjdibU5lVzJh?=
 =?utf-8?B?azdvZ2tTTE8xcGdITmpsRFFSdkxiUExFOEY1TCs2ODhaK1V1Q2ZBeDlPNU5K?=
 =?utf-8?B?Z3VOeXc0OHVkQm1RS2J3OGxtTjNQRkozT0swOXBocFZ4bWd0cXlHT1g5Ymgw?=
 =?utf-8?B?RWs0TXh3L3BnbGNWRHVpa1M0bnBFUC9tZjRzLy9TQmxCTGZ0ZjZyaHc0K0c1?=
 =?utf-8?B?VGhwMVUycnA4aWx3RWFpR0FTR2hqTmlzRVBuU0lGUmRPeHlvTnpEdDY5ZTQ3?=
 =?utf-8?B?VFZmeWJXdkNoSFN5TXVtZFNSODF2MWx0dzZvaEhIeFh3ZlNRT3huVTU4aE5p?=
 =?utf-8?B?NUVNTU00RGJvVTFMZFdPWExWY2FIeG1SUDZiekhIMUlKZ0IvbUlXak1QZzFR?=
 =?utf-8?B?Tk9SWnFyd0UxS0dXdDlEeVVDRmhERmhoMjN1THVvWlNvd0tDOXJKclpCWU9u?=
 =?utf-8?B?VjFSaXFBRlFFMUVPQ0lkdXpEeU40cGdqdmxqL2pneC9WcjNQTjJuQVRXbFQz?=
 =?utf-8?B?b3VlaEwzOWQ1QXc0OUFKS0xtSHlDT0RNd1N4eGxyTm53MktpU0h2cVNRTnpX?=
 =?utf-8?B?SnpzOUZ3a1dkV2hCcFFwK3hmZnd0OEZ5clAzWjAzcDJYK0IzcHg0WkROa2lz?=
 =?utf-8?B?azhMc0dSbVlHOGlJa3NHZjl5Z3ZHVzZvblRjNURGbnE0Q2kzMkh4UmN4cFJF?=
 =?utf-8?B?WFdHSU1odHdGL3ZxV2YrQVRLbW9RZHZ1Z0h1MkRSM0d0dkl0OWdtMHJlRUhO?=
 =?utf-8?B?bzB6QUg0ZnVwdTVTODVHRlptZ0FjcjNCemhTa1RVQm9ycEhMOVRtTysrbUpq?=
 =?utf-8?B?YnlZZmxJQ3duVml1UTZvWEd1RDg0OFpMSldhQmJjdjhwd203cld2d2RQbXRX?=
 =?utf-8?B?OTkzM0k4YWpraVJnNElDU2VTeFJwQmlrVHp1a0FSMGNPOG5aQ3ZSRklBOEJY?=
 =?utf-8?B?cWROd1JFNnhKMjV4bWZHMlI0MTdxR2FKV3gyWnVZNW5wSFVuSmtHNURiOVh5?=
 =?utf-8?B?YVpzUUVFN0o5N29hb2FMdXJHUlNuMHZoQ2ZDUTZSYlpnc1RKdmFUbTlrQzBZ?=
 =?utf-8?B?ZXQxNngzSWcyK3RyWlhQTXBXM0dRL2N1SVdTSEVCWUdMdkR1UXp3ZE9ZeThk?=
 =?utf-8?B?QTJId3hETnFJeFp4VFdIWSt0WnludXRiVkZlMEp5QlU3Y1FCWjVUa0RER01J?=
 =?utf-8?B?SnozTmtsdzFaT2wybHNrYXJYV0FuRkF4RXJFVEZSMzlhbmpDaFIrVmdVOHd0?=
 =?utf-8?B?cEJrc0MxWS9oa3NGc25RNlBGcERVVjRaMUNJTjdreG9UcStBb0lUcnNmTm5y?=
 =?utf-8?B?eGVScC9mM2NLSWdmMysyeUd0bXdCbjJaWjVWeWhLaDZralRxeHVhZy9KOHVu?=
 =?utf-8?B?ckl3WXpaSE9KT3NUcCt3R2t3aHlvQi9STVRRdUdITVRvNk1YRlZyTkQwTkJo?=
 =?utf-8?B?djA3U01vcXozaW1rbk5mSHVHLzJNRmRiNkVTdnZ4T2phUlpDNVVPZE5uTm1t?=
 =?utf-8?B?WitORlVsMHFzODRLR1FCekhrcG1sSllWYU5WMFhhaERZaWpZd3U5WW0vUGZz?=
 =?utf-8?Q?oBfCp15ntiVIs+sKtSxTziw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0E21702FFC559B4D8586D42454858715@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae439dc8-5ce7-493c-516b-08de00e30ee9
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2025 12:07:14.0840 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MgO4u27SWp+4VbavUv4ZZwGOJ7IzDPWrYR64dYoljRdLSsD2T6B4kaBncrAUI6UcWklNkrcnHTMGGZ1hs8Yii8PHNE/mFMCKGkYxvoNC1a4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4618
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

T24gRnJpLCAyMDI1LTA5LTE5IGF0IDIxOjA4ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUmVuYW1lIGludGVsX2dldF9saW5ldGltZV91cygpIHRvIHNrbF93bV9saW5ldGltZV91
cygpIHRvIGJldHRlcg0KPiByZWZsZWN0IHRoYXQgaXQncyBub3QgbWVhbnQgdG8gYmUgdXNlZCBm
b3IgYW55dGhpbmcgYXBhcnQgZnJvbQ0KPiB0aGUgd2F0ZXJtYXJrIGNhbGN1bGF0aW9ucy4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dh
dGVybWFyay5jIHwgNyArKystLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkNCj4gDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFp
IDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBpbmRleCAzZWFhZjI2MTAwZjEuLmU4
ZWQ5ZGYzNGIxZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9z
a2xfd2F0ZXJtYXJrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
d2F0ZXJtYXJrLmMNCj4gQEAgLTE2MzYsOSArMTYzNiw4IEBAIHNrbF93bV9tZXRob2QyKHUzMiBw
aXhlbF9yYXRlLCB1MzIgcGlwZV9odG90YWwsIHUzMiBsYXRlbmN5LA0KPiDCoAlyZXR1cm4gcmV0
Ow0KPiDCoH0NCj4gwqANCj4gLXN0YXRpYyBpbnQNCj4gLWludGVsX2dldF9saW5ldGltZV91cyhj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gLQkJwqDCoMKgwqDC
oCBpbnQgcGl4ZWxfcmF0ZSkNCj4gK3N0YXRpYyBpbnQgc2tsX3dtX2xpbmV0aW1lX3VzKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiArCQkJwqDCoMKgwqDCoCBp
bnQgcGl4ZWxfcmF0ZSkNCj4gwqB7DQo+IMKgCXJldHVybiBESVZfUk9VTkRfVVAoY3J0Y19zdGF0
ZS0+aHcucGlwZV9tb2RlLmNydGNfaHRvdGFsICogMTAwMCwNCj4gwqAJCQnCoMKgwqAgcGl4ZWxf
cmF0ZSk7DQo+IEBAIC0xNzI5LDcgKzE3MjgsNyBAQCBza2xfY29tcHV0ZV93bV9wYXJhbXMoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+IMKgCXdwLT55X3RpbGVf
bWluaW11bSA9IG11bF91MzJfZml4ZWQxNih3cC0+eV9taW5fc2NhbmxpbmVzLA0KPiDCoAkJCQkJ
wqDCoMKgwqAgd3AtPnBsYW5lX2Jsb2Nrc19wZXJfbGluZSk7DQo+IMKgDQo+IC0Jd3AtPmxpbmV0
aW1lX3VzID0gaW50ZWxfZ2V0X2xpbmV0aW1lX3VzKGNydGNfc3RhdGUsIHBsYW5lX3BpeGVsX3Jh
dGUpOw0KPiArCXdwLT5saW5ldGltZV91cyA9IHNrbF93bV9saW5ldGltZV91cyhjcnRjX3N0YXRl
LCBwbGFuZV9waXhlbF9yYXRlKTsNCj4gwqANCj4gwqAJcmV0dXJuIDA7DQo+IMKgfQ0KDQo=
