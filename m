Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DA9B0EE70
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jul 2025 11:29:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31B4910E152;
	Wed, 23 Jul 2025 09:29:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dFO9Fggy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A63E10E152;
 Wed, 23 Jul 2025 09:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753262979; x=1784798979;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ADHcoc05U4za268YtrHSbZ2AJyRfBnhA4z9kO9mqTR8=;
 b=dFO9FggydKUS2NcYfw5oYxVgRXX3Pj9LiCZ20HHk8odg6sAeEwryG9uo
 YeKVgTWmmXfG+teBKguMY1WjxgVgNJ4reXk7eVHcddXm+rJCe/Z4+F1EQ
 zIjv6rUM+seTx42X5b3Y8KF7GAjVJ6ShDqQJWmTjg+4dqF3e8E0tUE24b
 t1puJaivQrkEsCW+fulD072A/Ro//q0Cnmr7X5p+udBwxcRuvyVWsfNeT
 jNJydUaVMIvLzp4f3cOrcafdbYWvrOEiDcim04BuiYv8Ftx4r3qzBqI8r
 gQUiStjArPjtQKBxGaDnFOuTr10l4EdK/h0PguY0EJIYSB8XIhyXWFUxD Q==;
X-CSE-ConnectionGUID: cClzLLZxQWmRB7Yzaque3g==
X-CSE-MsgGUID: wRxMFkfiTJyos+k0PCiBxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="55691607"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="55691607"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 02:29:38 -0700
X-CSE-ConnectionGUID: OhAGagF6Sk27+aNvce93pA==
X-CSE-MsgGUID: kEhEhGh6ReGxsznHExWWSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="196478910"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 02:29:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 02:29:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 23 Jul 2025 02:29:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.40)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 02:29:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ursx0LpYbziJbGayhXGm/46wATosvIAWda8JlT50zQ2MovQn6WkliCZe6p/SL4QVAgzhHbucEjQA4eO4+JcoH9d7Dt3NmLRa+OU52+zWLJHalPJWVcI8s5LBX6EuizHArM/mnJHAS0hPT9l61Hat4hmYlcRdNWTzoh2SqEREawT0hBFqTxs0BOeE5pGDrQguXKwZ8CWZijEzlSNXdlI2wCsCPzseG3LaYvPtvsII+9Qq90W6QBZn+0BdG/3CyeHXmw3wiih/BZZSMkuFOP445ntIK0+r9tYevkBH2uwlKsdrkJo0sexW0r09uuh98rhYxXGHKtJ938u2xe1vei6GGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ADHcoc05U4za268YtrHSbZ2AJyRfBnhA4z9kO9mqTR8=;
 b=HBEP/QjK2ErsuGUnozh9EZdHyYPF37W7wvN4vnp/3oPEQJrtN4o08BJ6RFLpiNKRMPfkT3QUh9FZ/g7yCv03gsWpp7GyRRnP9ZSQv9EO0ZTP3dCgZt1DmWuVM8zqRHklBO4M1giT66kchdDI0HfLPHNnJ5tHP0+CgJi8g/7EUckYKnf7SUaTu+Spom1EFbNniD/gctE1Xmq8qWJ/sfZfQoYR0O4iL+ufRRB9suxG+dhRdT3fXbRGT8aHPMh1RG3U+RW4ag43StxOXjWickvwQK8+HA7BjiP7/zHxWeyRHLH8zQ3CbL09i/JYrZWFokNQsBDFPZrDIG4rG4gMaD30WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB5116.namprd11.prod.outlook.com (2603:10b6:806:fa::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8964.21; Wed, 23 Jul 2025 09:28:54 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8964.019; Wed, 23 Jul 2025
 09:28:54 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: Re: [PATCH v3 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Topic: [PATCH v3 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Index: AQHb5SgFrw4yiR4E30a66PY92LtWerQ/nhaA
Date: Wed, 23 Jul 2025 09:28:53 +0000
Message-ID: <3e4f40d5310b2fd4169f6befde7f7a7e611a4e09.camel@intel.com>
References: <20250624164823.4118263-1-michal.grzelak@intel.com>
 <20250624164823.4118263-2-michal.grzelak@intel.com>
In-Reply-To: <20250624164823.4118263-2-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB5116:EE_
x-ms-office365-filtering-correlation-id: 9ec7942d-160d-4435-f250-08ddc9cb577a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?QlhOc2pKWFRObDF0RUhKWkdMYmlqRER0cGc2MGFqUGZpQmlLTEtEWDNna3k2?=
 =?utf-8?B?ZHo2dzB3ekd0MGtkclpQc0NhTUZCbzg0NFlycmFFWjhMaWhtZVVjZ1QzN3FY?=
 =?utf-8?B?Qm1VMWlYOWhlNmZTQkhWeUE4M0srS3NUOVFZQ0FiVitNTDlUU1dMZzk1QjRJ?=
 =?utf-8?B?SHJlZW9renVQblBmbHZCeFpIRnBvUG1LQWJ6bnRvUyt0eFVBV2Z0Vk1mQ0l3?=
 =?utf-8?B?Z1hMcjZIOW4xRmtZSFV0NWZKVGJRdUQ2UXl0REFneUNoRzVDT1RpWFVhREYy?=
 =?utf-8?B?SUJaNmk1OWRZQ2lDM0c3dXdvbzNLTDBGdXM1THJlajhxMVgzclVDSkZyYzRh?=
 =?utf-8?B?UTh4U3M4Vnp1dERDUVdmQjFNR1hZYXVRSnBTcWZPd2FBQkNyTWlLZTN1NEFm?=
 =?utf-8?B?NTkyR2lXRGpuWDNwU1NFU0hXVDBnMTZQTEZsbURIcEZKaENTNS8yZmx0bWZC?=
 =?utf-8?B?ZVlDOHN3QjZ4SDgrNk4yMFVlYTRTeGgvQmVtdWErR2RwdDd0b3FnVUwxUVdS?=
 =?utf-8?B?YXoyTVkvTWZ3cTlDeWg0TXFnQ2h0L0ZwUVlKQjAvVUE0Z0ZzRDdQOWFtQllK?=
 =?utf-8?B?TjFQbDBFdkl5V05UV0RVajllV2ZWUFBQSTB5dlBlRjU5ZUhMN29aOExsOVRL?=
 =?utf-8?B?QU1VdjloUnorYW50blBIYzkvb0FyNC9Sc1F6M3JMQk1ZRzlyMEJFSEIveFJY?=
 =?utf-8?B?aVFuYXZ5aHVQMjc3dko3NFp1SjVITUFyNUhlMVlSZk1hVkI5bCtxa2JSWHls?=
 =?utf-8?B?RmR0QXh3VXFyVUQzL2ptUkJMTHZXTTZmNGg5clVRRXc4MnBYbldhRThpbUJV?=
 =?utf-8?B?USt2Z3czMDM0bGtqVC9IdmROdWpkSHYvNnVsaW5aS2J3OUhCekhIWVV2MmYx?=
 =?utf-8?B?L09vazRuQk1nQ3I4NVpjT0Y1QW8wdkExM3VBRy9rVDM0cHhyQ2Uxb2lnZUt5?=
 =?utf-8?B?eWxOdzArcFd4RDVIOXJkZ2UzTlExYkxvOHF6dFpGRW5DbnVvTnpVR3JWeHJL?=
 =?utf-8?B?TnVvSU9BSHRiOGFQZUZnaDNVSUg5ODd5MVIvVU5OQlFqWXVhNy9Ja01DcVhL?=
 =?utf-8?B?ZEdDL3lIalF5MTZmR2RhZldBWFlQQy9LdUFKYjJ0ekRkVDFVMC9QU1NrdnZj?=
 =?utf-8?B?QVNaRzlraHVHTTZyR1NrYXIwOW9WUEsybUlXM3ZpbHM1NDI5ZEE0Q0p3QUIr?=
 =?utf-8?B?NEZnM0tzWEM2aW5DaGFGcjgrM1gyb3R4VVpLWkg3Y3RUMDBqb1ZJRlFDSG5o?=
 =?utf-8?B?NzFEMjZHQWlhTUgzQ0w4MjhsN0hTRW9oY0VyZUpxVmZkbjRHNnF3YytMTmxr?=
 =?utf-8?B?eUdPYU1DT2FGUU1kcTk4RU0xcmoxT1loOGMwLzBMWWhEOWhLVVVWOHRGYnVi?=
 =?utf-8?B?Z0l6bXJwZ0tCRmNjUWx1WUhMem10ZUR2c2VsTUcxd1lJMmEvdm1YNUh0S1JM?=
 =?utf-8?B?RExhOWkzNitNQzhFeVpiQUJWRDJUVkovOG04NytaTjFvdmplRXdmRjZucUtj?=
 =?utf-8?B?L2tTckwzcjZneDh0dTBzUnRwZEU4KzVXd3YrOTZEeVAyUmUrOGh6cTJDM3Bi?=
 =?utf-8?B?NXJQdFFVZndtbXd4TGt2Q00yZGN2dHJPdVJrcW5UdytTS0dmTk1wZ3YyL2Qw?=
 =?utf-8?B?dUwrUWZJRVBqMkZVN2FaWE9LOTI3NmpUZkw2VDE2R2ZUU3p1b0JTek1mWmMz?=
 =?utf-8?B?c3E3ejVNVWNDS2NWOG5MWmJ5K2JUUDRlMWk3Nm9pUmdzUUNpamlNcGEzSEFX?=
 =?utf-8?B?aFl2NjlwZm9IczFIYnlMakd3SkJ2LytrN29BZmpxV2laMGVMQ3ZmNVdGQmQv?=
 =?utf-8?B?ME9jb3NRUFhaMW5PRVNJa05ZaWhPbWpKRDFSNGVRMVZDcWVFRmo2TkVyQWZD?=
 =?utf-8?B?SzlKaDlHZWpoSDYvUHNCR0YwQkFGOEVkQkY5Q08weE5Bd0t2OTBna2M2SW94?=
 =?utf-8?B?cHRDNnpKRStScVNaekhlTXR3RFVYakpZcllQU1d4YnNIZnhBQnFVZFF1TXd6?=
 =?utf-8?B?bE81WXpQeWpRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NDlvaEh4Yml2UmI4YXEwYWc1SUdmMmp6MGxxaWJjQktWNFhMYVlWYmxqT1Vl?=
 =?utf-8?B?c2pJMnBpanEvRm92YUI5THI0WGI3bW5CbHYzWVAxMFBFbHBjTTFXNEQvWWxm?=
 =?utf-8?B?TDNNZERmTFZqQ1lZRlVsZWRPNWtYbmo0TXNBK1dKdk96YTZ5dWRZdzR0NDg3?=
 =?utf-8?B?OVREMHVMTmtHNzlyWGpWNXhKTWZGbHdhLzRTdFJpbzRBOWNZR2MvcFR5VTF6?=
 =?utf-8?B?K0JqV0QwU2ZJQ1pyVHFyQVVTM2R4ZDFYd2dKeEh3Slp1M0FlcGJuK3h0dHA2?=
 =?utf-8?B?YXBLSmovdXpBd0hwYnRzcGxVQUNxbXlnOWVzOFFjKzJLUXN5SkQ3eW9ma05i?=
 =?utf-8?B?VllOOE5pVFhQVnFQNDZZMmhQM3VRSVlJZHIxR0lpVUppbWc4WWMwSnhpV3hL?=
 =?utf-8?B?MktDaCtxdWVMU3g4U1UzdjVWa25FYk9PS1Zwa2RmVEowd2dYVVByYVJvSWVv?=
 =?utf-8?B?ckNjYlNJVDBHeFREd29mcWVyYzh1RWxBbHVOWGRTWXFxa0x6SFVqWk1qVWRy?=
 =?utf-8?B?WGc1eWlianVJeFIvbEZRK2dTUGd5M0QvZW5ieEFBRkVUblZmNUcxYWxWMUhj?=
 =?utf-8?B?dGFSRnU3ZlRtb3YrWlNCbGczSDdqcHhTckpjWm9QYlpkRldOc1pBSXdrOE5u?=
 =?utf-8?B?TzdXaHEva3hwaS9nN1JSWlpZWGo0TVMvOVVpTEVXVStrUUNCdERkYWppZHJn?=
 =?utf-8?B?bUFWN3AwdWo3YlpIYklTSlFuaFJUcmN3K3IzZ3VlWlQxSVRFRDlBTHM5c0RN?=
 =?utf-8?B?dUFnRGpSRTk0U1lEa3Y0R0ZtWDZ6VS9POVFqQVBDZGlyRFkzTFMzTmQwYWd6?=
 =?utf-8?B?NUV4UUIrd3pJMWc0YkJIMjVjNG5rNUNROTdYSUJLazl6Q0VINkhQcFB6M3Fz?=
 =?utf-8?B?d1N6ZDNVRXlWaDh3ZkNjaFJPS25BUXZuRFFyLzhsc3FtSmpRb3lLWjJiWmVn?=
 =?utf-8?B?VHVWdVNCOFY0Wm1aQlRZWGFDeWlLYmpCM2JBN090ODI3djdVeW9pQ2tBaUtr?=
 =?utf-8?B?TlVVK3JpVUwzL0tpZ0hlamh4Yyt5bkJJTmVmbEtTUmkxQUl6WFZYUnllZkU1?=
 =?utf-8?B?WkJqcTRMbHV6Q2pHaFlQeU11UUZHbFdMekpxbzJKbzNvL0Y2WjZvVStlZDBH?=
 =?utf-8?B?WDN0bGs2UEUzWFFqMktqeHAvVTVjd3RIN2FZeTJBdFRLVlpjRzh6QXJGU0NM?=
 =?utf-8?B?US9QekxxZnVKQklIaDBhNFhVN0JrZVRRQ0ZGL09lMzIrZmpibHdRbk1zQ1Ji?=
 =?utf-8?B?WXpqTVBQQzlPZkNydXVRWkdZVkhhM1kyYitXSHdESHFDR1lmVVQza1JLUHNO?=
 =?utf-8?B?eVZ1ZzlmaEZIVXpBT2hZeXVOWGx2bTR5eno5OE1MUWxwa2FjR3N2Qlo4d0Jp?=
 =?utf-8?B?MFoySFQzZWtBN09rYUVzWDRVSlNsQXNpZXBwWnZnTFRIcVFnaitEajFHdTRh?=
 =?utf-8?B?N2h6YjVWSHRxNEVUZW5hbkRPbVY1eEpBQXNDeTFGc3g1MHFOM1RjTktHQmZq?=
 =?utf-8?B?U2JqaFRSNWd5OFh2bjZnd2FXMm9UNjZEN1VEc2R4MC9Nc25IZk93bG8vS1Nl?=
 =?utf-8?B?RUxwcENxbzlmVkthTGNIMitoQkdwNjhCc0hPY2RGK2srcXpJcXZzTEd3NHoz?=
 =?utf-8?B?aFFoSE9YMm93WGhrMllkbDlJTlVtaG55UVdxeEZmRTUyQlpSQXVLN205RUdG?=
 =?utf-8?B?enRub1B3Tnh0bllzYUI1MWYvVVQ3ZUp6MUhIQzRQbzFrYW5BQ3ZSRUtnOVFs?=
 =?utf-8?B?clA5MkpLc0g5emFzVDEwa29lZHpjcDZZWUJXMmU1Wkx3bjNGVGhJMVlIVDh6?=
 =?utf-8?B?WFYvSmNYVXJQQnVVSDlCWXlITVRsK2dieG9WSStHQ3VtTkhVRlZjVmhVd0ZY?=
 =?utf-8?B?anBVZlMyWE5XWGdnb1RMWVp6ckRCUW9nWVMzZkFXbldWUG1GM3IvRDJycEY0?=
 =?utf-8?B?WjVzaWpPVStMSXlxbHZFVGVsZ1FNT0Zoa2RPUDNEY0VOdHZJa2NINmhNcVdk?=
 =?utf-8?B?THBscEc5enVINlliY1dWNUgzaXdKTGRibFBtaTNFTDM2eXM0ck5kWEI0MXdm?=
 =?utf-8?B?aTRyV2lNVk5Wd0tybXNIOTBrQjJQSmZGT0xYa0puL2cxc2F4TXBBYWUwWnlT?=
 =?utf-8?B?RTA1ajlRKzR2NVV0V3NZQ2RMWkNOM0VvZUZVYzRHem8rMUUwM3JTYk9WV1lE?=
 =?utf-8?B?aDFGUzhvSkFkTTBjL2JVN1hvdnk5TkVBQWVHUXdJcUYycEQ5TWZRVFN0ekRt?=
 =?utf-8?B?RVBPaEVhT3FxYkpBa29ZK3NsYzdRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4CFDB43D3A53AD45A837D552E30CA7E3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ec7942d-160d-4435-f250-08ddc9cb577a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2025 09:28:53.9398 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BpYQp0iflEfLJRxt6MHHHz0+OWRERtCtteI7sfEfWvXgMBfvnKc/y/P9xruuF/+WPNbQXK4cqQiePKwqqUHCz/qhxb2/JR2+b9fGa0AvjNo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5116
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

SGVsbG8gTWljaGFsLA0KDQpTb21lIGNvbW1lbnQgaW5saW5lIGJlbG93Lg0KDQpPbiBUdWUsIDIw
MjUtMDYtMjQgYXQgMTg6NDggKzAyMDAsIE1pY2hhxYIgR3J6ZWxhayB3cm90ZToNCj4gVGhlcmUg
aXMgbm8gcmVhc29uIGluIGRlYnVnZnMgd2h5IFBTUiBoYXMgYmVlbiBkaXNhYmxlZC4gQWRkDQo+
IG5vX3Bzcl9yZWFzb24gZmllbGQgaW50byBzdHJ1Y3QgaW50ZWxfcHNyLiBXcml0ZSB0aGUgcmVh
c29uLA0KPiBlLmcuIFBTUiBzZXR1cCB0aW1pbmcgbm90IG1ldCwgaW50byBwcm9wZXIgUFNSIGRl
YnVnZnMgZmlsZS4NCj4gQ2xlYW4gaXQgd2hlbiBQU1IgaXMgYWN0aXZhdGVkLg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogTWljaGHFgiBHcnplbGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+
IC0tLQ0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaMKgwqDC
oCB8wqAgMiArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8Kg
wqDCoMKgwqAgfCAzOCArKysrKysrKysrKystLS0tLQ0KPiAtLQ0KPiDCoDIgZmlsZXMgY2hhbmdl
ZCwgMjYgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRl
eCAzMGM3MzE1ZmMyNWUuLjhkODIwMmJiMDZjOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE2NjEsNiAr
MTY2MSw4IEBAIHN0cnVjdCBpbnRlbF9wc3Igew0KPiDCoAlib29sIGxpbmtfb2s7DQo+IMKgDQo+
IMKgCXU4IGFjdGl2ZV9ub25fcHNyX3BpcGVzOw0KPiArDQo+ICsJY29uc3QgY2hhciAqbm9fcHNy
X3JlYXNvbjsNCj4gwqB9Ow0KPiDCoA0KPiDCoHN0cnVjdCBpbnRlbF9kcCB7DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA4YmVlMmY1OTJhZTcu
LjNmZTkxYzU4MTZjZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+IEBAIC0xNTkxLDYgKzE1OTEsNyBAQCBzdGF0aWMgYm9vbCBfcHNyX2NvbXB1dGVf
Y29uZmlnKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKgCWlmIChlbnRyeV9zZXR1
cF9mcmFtZXMgPj0gMCkgew0KPiDCoAkJaW50ZWxfZHAtPnBzci5lbnRyeV9zZXR1cF9mcmFtZXMg
PQ0KPiBlbnRyeV9zZXR1cF9mcmFtZXM7DQo+IMKgCX0gZWxzZSB7DQo+ICsJCWludGVsX2RwLT5w
c3Iubm9fcHNyX3JlYXNvbiA9ICJQU1Igc2V0dXAgdGltaW5nIG5vdA0KPiBtZXQiOw0KPiDCoAkJ
ZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiDCoAkJCcKgwqDCoCAiUFNSIGNvbmRpdGlvbiBm
YWlsZWQ6IFBTUiBzZXR1cCB0aW1pbmcNCj4gbm90IG1ldFxuIik7DQo+IMKgCQlyZXR1cm4gZmFs
c2U7DQo+IEBAIC0xODIwLDYgKzE4MjEsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfYWN0aXZh
dGUoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gwqAJCWhzd19hY3RpdmF0ZV9wc3Ix
KGludGVsX2RwKTsNCj4gwqANCj4gwqAJaW50ZWxfZHAtPnBzci5hY3RpdmUgPSB0cnVlOw0KPiAr
CWludGVsX2RwLT5wc3Iubm9fcHNyX3JlYXNvbiA9IE5VTEw7DQo+IMKgfQ0KPiDCoA0KPiDCoC8q
DQo+IEBAIC0yOTE4LDEzICsyOTIwLDIxIEBAIHZvaWQgaW50ZWxfcHNyX3ByZV9wbGFuZV91cGRh
dGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IMKgCQkJICogLSBSZWdp
b24gRWFybHkgVHJhbnNwb3J0IGNoYW5naW5nDQo+IMKgCQkJICogLSBEaXNwbGF5IFdBICMxMTM2
OiBza2wsIGJ4dA0KPiDCoAkJCSAqLw0KPiAtCQkJaWYgKGludGVsX2NydGNfbmVlZHNfbW9kZXNl
dChuZXdfY3J0Y19zdGF0ZSkNCj4gfHwNCj4gLQkJCcKgwqDCoCAhbmV3X2NydGNfc3RhdGUtPmhh
c19wc3IgfHwNCj4gLQkJCcKgwqDCoCAhbmV3X2NydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMgfHwN
Cj4gLQkJCcKgwqDCoCBuZXdfY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgIT0gcHNyLQ0KPiA+
c2VsX3VwZGF0ZV9lbmFibGVkIHx8DQo+IC0JCQnCoMKgwqAgbmV3X2NydGNfc3RhdGUtPmVuYWJs
ZV9wc3IyX3N1X3JlZ2lvbl9ldA0KPiAhPSBwc3ItPnN1X3JlZ2lvbl9ldF9lbmFibGVkIHx8DQo+
IC0JCQnCoMKgwqAgbmV3X2NydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkgIT0gcHNyLQ0KPiA+
cGFuZWxfcmVwbGF5X2VuYWJsZWQgfHwNCj4gLQkJCcKgwqDCoCAoRElTUExBWV9WRVIoZGlzcGxh
eSkgPCAxMSAmJg0KPiBuZXdfY3J0Y19zdGF0ZS0+d21fbGV2ZWxfZGlzYWJsZWQpKQ0KPiArCQkJ
aWYNCj4gKGludGVsX2NydGNfbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkpDQo+ICsJCQkJ
cHNyLT5ub19wc3JfcmVhc29uID0gIkNSVEMgbmVlZHMNCj4gbW9kZXNldCI7DQoNCk5vIG5lZWQg
dG8gaGFuZGxlIHRoaXMgYXMgcG9zdF9wbGFuZV91cGRhdGUgd2lsbCByZS1lbmFibGUgUFNSIGlu
IGNhc2UNCmNydGNfc3RhdGUtPmhhc19wc3IgPT0gdHJ1ZS4gSSBkb24ndCB0aGluayB3ZSBuZWVk
IHRvIGtlZXANCnBzcl9ub19yZWFzb24gdXAtdG8tZGF0ZSBvdmVyIG1vZGVzZXQuDQoNCj4gKwkJ
CWlmICghbmV3X2NydGNfc3RhdGUtPmhhc19wc3IpDQo+ICsJCQkJcHNyLT5ub19wc3JfcmVhc29u
ID0gIlBTUiBkaXNhYmxlZCI7DQoNCkkgdGhpbmsgdGhpcyBzaG91bGQgYmUgaGFuZGxlZCBpbiBw
c3JfY29tcHV0ZV9jb25maWcuIEFzIHlvdSBhcmUgZG9pbmcNCndpdGggdGhhdCAiUFNSIHNldHVw
IHRpbWluZyBub3QgbWV0IiBBbnl3YXlzIHNldHRpbmcgaXQgaGVyZSBhcyAiUFNSDQpkaXNhYmxl
ZCIgd291bGQgb3ZlcndyaXRlIGV4aXN0aW5nICJQU1Igc2V0dXAgdGltaW5nIG5vdCBtZXQiLg0K
DQo+ICsJCQlpZiAoIW5ld19jcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzKQ0KPiArCQkJCXBzci0+
bm9fcHNyX3JlYXNvbiA9ICJBbGwgcGxhbmVzDQo+IGluYWN0aXZlIjsNCg0KSSB3b3VsZCByYXRo
ZXIgc2V0IHRoaXMgKGFuZCBldmVyeXRoaW5nIGVsc2Ugd2hpY2ggaXMgbm90IGhhbmRsZWQgaW4N
CnBzcl9jb21wdXRlX2NvbmZpZykgaW4gcG9zdF9wbGFuZV91cGRhdGUuDQoNCj4gKwkJCWlmIChu
ZXdfY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgIT0gcHNyLQ0KPiA+c2VsX3VwZGF0ZV9lbmFi
bGVkKQ0KPiArCQkJCXBzci0+bm9fcHNyX3JlYXNvbiA9ICJDaGFuZ2luZw0KPiBiZXR3ZWVuIFBT
UiB2ZXJzaW9ucyI7DQo+ICsJCQlpZiAobmV3X2NydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3N1X3Jl
Z2lvbl9ldA0KPiAhPSBwc3ItPnN1X3JlZ2lvbl9ldF9lbmFibGVkKQ0KPiArCQkJCXBzci0+bm9f
cHNyX3JlYXNvbiA9ICJDaGFuZ2luZw0KPiBSZWdpb24gRWFybHkgVHJhbnNwb3J0IjsNCj4gKwkJ
CWlmIChuZXdfY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSAhPSBwc3ItDQo+ID5wYW5lbF9y
ZXBsYXlfZW5hYmxlZCkNCj4gKwkJCQlwc3ItPm5vX3Bzcl9yZWFzb24gPSAiQ2hhbmdpbmcgUGFu
ZWwNCj4gUmVwbGF5IG1vZGUiOw0KDQpObyBuZWVkIHRvIGhhbmRsZSB0aGVzZSBhcyBQU1Igd2ls
bCBiZSBkaXNhYmxlZCBvbmx5IGZvciBjaGFuZ2luZyB0aGUNCm1vZGUgYW5kIHRoZW4gZW5hYmxl
ZCBhZ2FpbiBhZnRlciB0aGF0Lg0KDQo+ICsJCQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAx
MSAmJg0KPiBuZXdfY3J0Y19zdGF0ZS0+d21fbGV2ZWxfZGlzYWJsZWQpDQo+ICsJCQkJcHNyLT5u
b19wc3JfcmVhc29uID0gIldvcmthcm91bmQgZm9yDQo+IHNrbCwgYnh0IjsNCg0KVGhpcyBhbHNv
IHRvIHBvc3RfcGxhbmVfdXBkYXRlLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gKwkJ
CWlmIChwc3ItPm5vX3Bzcl9yZWFzb24pDQo+IMKgCQkJCWludGVsX3Bzcl9kaXNhYmxlX2xvY2tl
ZChpbnRlbF9kcCk7DQo+IMKgCQkJZWxzZSBpZiAobmV3X2NydGNfc3RhdGUtPndtX2xldmVsX2Rp
c2FibGVkKQ0KPiDCoAkJCQkvKiBXYV8xNDAxNTY0ODAwNiAqLw0KPiBAQCAtMzkzMiwxMiArMzk0
Miw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9wcmludF9tb2RlKHN0cnVjdA0KPiBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+IMKgCQkJCSBzdHJ1Y3Qgc2VxX2ZpbGUgKm0pDQo+IMKgew0KPiDCoAlz
dHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gLQljb25zdCBjaGFyICpz
dGF0dXMsICptb2RlLCAqcmVnaW9uX2V0Ow0KPiAtDQo+IC0JaWYgKHBzci0+ZW5hYmxlZCkNCj4g
LQkJc3RhdHVzID0gIiBlbmFibGVkIjsNCj4gLQllbHNlDQo+IC0JCXN0YXR1cyA9ICJkaXNhYmxl
ZCI7DQo+ICsJY29uc3QgY2hhciAqbW9kZSwgKnJlZ2lvbl9ldDsNCj4gwqANCj4gwqAJaWYgKHBz
ci0+cGFuZWxfcmVwbGF5X2VuYWJsZWQgJiYgcHNyLT5zZWxfdXBkYXRlX2VuYWJsZWQpDQo+IMKg
CQltb2RlID0gIlBhbmVsIFJlcGxheSBTZWxlY3RpdmUgVXBkYXRlIjsNCj4gQEAgLTM5NTUsNyAr
Mzk2MCwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfcHJpbnRfbW9kZShzdHJ1Y3QNCj4gaW50
ZWxfZHAgKmludGVsX2RwLA0KPiDCoAllbHNlDQo+IMKgCQlyZWdpb25fZXQgPSAiIjsNCj4gwqAN
Cj4gLQlzZXFfcHJpbnRmKG0sICJQU1IgbW9kZTogJXMlcyVzXG4iLCBtb2RlLCBzdGF0dXMsDQo+
IHJlZ2lvbl9ldCk7DQo+ICsJaWYgKHBzci0+ZW5hYmxlZCkgew0KPiArCQlzZXFfcHV0cyhtLCAi
UFNSIGVuYWJsZWRcbiIpOw0KPiArCQlzZXFfcHJpbnRmKG0sICJQU1IgbW9kZTogJXMlc1xuIiwg
bW9kZSwgcmVnaW9uX2V0KTsNCj4gKwl9IGVsc2Ugew0KPiArCQlzZXFfcHJpbnRmKG0sICJQU1Ig
ZGlzYWJsZWQ6ICVzXG4iLCBwc3ItDQo+ID5ub19wc3JfcmVhc29uKTsNCj4gKwl9DQo+IMKgfQ0K
PiDCoA0KPiDCoHN0YXRpYyBpbnQgaW50ZWxfcHNyX3N0YXR1cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0s
IHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHApDQoNCg==
