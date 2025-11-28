Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA2EC92585
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 15:40:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F14810E00F;
	Fri, 28 Nov 2025 14:40:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X6kWh3wo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C71B10E00F;
 Fri, 28 Nov 2025 14:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764340832; x=1795876832;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3BuOZb/qvCBwH+CMqvelx102f/000wRHI014IMPXqI8=;
 b=X6kWh3woK4ZH3T/Ih5iUhAfUE2bVPjK1DJkFfFUDv94o7ReX/trNJABB
 HUk9SqVl7z5nEDPq4ECMKfnFsF/435l7wcYQQ0tJcmBydlwWSVv0DxKaM
 zvpIelMRn2dCwi6Flf73NG5LlYFHjZs/eP7PNAY/6Tno5lOGox7HIHxaa
 TeimpIQmwbu4ND7iQMU+du7QPuoSEGRi1t9Tr+SGNPFM2mSV5REkkNRBw
 DgXHTnDfb0XPxY/hdcwCcKf601AIQLfcEzpdjHBGDj4dTA+qUqa/+gLFK
 HOJ96NpDL0meW1dzrWye4RtAEkKqbNBTFrh3BqHaamghQCp2S+Wl/huFD A==;
X-CSE-ConnectionGUID: fez5BUYkTyOFwa/bcMBQsQ==
X-CSE-MsgGUID: oXD/M5y4QG6zplEWZehH2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66539173"
X-IronPort-AV: E=Sophos;i="6.20,234,1758610800"; d="scan'208";a="66539173"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 06:40:31 -0800
X-CSE-ConnectionGUID: bWDgoWcCQOex0D91i+n8dw==
X-CSE-MsgGUID: KLWPMlt8R+ueDcWv6Zu+NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,234,1758610800"; d="scan'208";a="193262303"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 06:40:31 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 06:40:30 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 28 Nov 2025 06:40:30 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.63)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 06:40:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hskZMfNNarBxuS6aJxdbreQuihL2HOTk/sI/OObxZmO9yqVcHVobXwtoHAaiySmlDko0Y9e1cBm1Q7aXF6aHucK590VTHh1kd0LQT23/Hk0LyB2aIMubPpPU9fl2RFL3O1BMwZ9/el5KMHyACf5Nf4xCQ5TPMnJSIJOsc3BqWGxQvFHSmJC/QEf0lHKQlqnORsg8S3j0HCuM6sSVAbCyEcvE+Ffv8iggXVpLjTRkfj8q3WznG+iQV/EMN3JbpcOe/t9BMcLcWfytEE8KpYljW9D9le/peMKvU0DOSnvHV29YDiEi23IKUMyoq0BAkbF6Aa94+kDrmUJ9oPxsrENhDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3BuOZb/qvCBwH+CMqvelx102f/000wRHI014IMPXqI8=;
 b=t0m6a5d4BuDnmDFAHDLs7qNwSfmOkHiR2pZTF+AnPduNzUGi7Oq1U68J53TX4lCH4AnJd7bbX3x2yhHQ4tG9OUvYvDjJnV8iv1vfh5hnoN5o+wQW4qoOIlcKX9T5/WGLzpspR6M4soB8eItx9CivPpBazwsUQ5WkuFgU4JQBtRfHc0vJU2eTc46nDx9O+RzvYzPnVwVomCu9+2GQELm/DZyhKnv64Tojoiq+xAVN8fMX1A5frTMOlomIEF/SC/gW7tQvyxLkGP3tqzZdMaKz84XMfXDk4S5hD548UYjNG4gSfQHpEsKaCBDKC5bZboumFm3nVkjC2ul2iMZOlrQAyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS4PPFA08475C7D.namprd11.prod.outlook.com (2603:10b6:f:fc02::3f) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.16; Fri, 28 Nov
 2025 14:40:28 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 14:40:28 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/psr: Perform vblank evasion on async flip as
 well for PSR
Thread-Topic: [PATCH 2/4] drm/i915/psr: Perform vblank evasion on async flip
 as well for PSR
Thread-Index: AQHcXdVjFBCb/eQwwUmLJzTAbHIGE7UD5rGAgAJ2yICAALnTAIABFucA
Date: Fri, 28 Nov 2025 14:40:28 +0000
Message-ID: <5419dc1ec817f18fd569b4d02365db1991dad75f.camel@intel.com>
References: <20251125063253.328023-1-jouni.hogander@intel.com>
 <20251125063253.328023-3-jouni.hogander@intel.com>
 <aSYdX7eGVOMapiJ7@intel.com>
 <dbaa6e77740c23604420d9ff5031cddc4bd37108.camel@intel.com>
 <aSjKZA17cooYM9Uv@intel.com>
In-Reply-To: <aSjKZA17cooYM9Uv@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS4PPFA08475C7D:EE_
x-ms-office365-filtering-correlation-id: 8e39ce6c-c77c-4a67-2b06-08de2e8c12f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?QVloTWQ5U21xVTV3Z1Jid2tpVHVyVENPbWY0SmcrelkxZnJRajVJdVRrWURX?=
 =?utf-8?B?K21zVzNaT0xmYml5dTlVaWFZUFRJbDA1cGpsVEUzU0dBZm5aZ1FnM3IxREky?=
 =?utf-8?B?TittQkRBdDlhYjZPdTE0TnNCdExZcmZEbkJLbWp3OVVIakFiTXIvUWw5L2Ji?=
 =?utf-8?B?d2cxeWtBa2VIZWtkZUtXNzMyWndpd0VVNnRtWkEwQUszQTZVNWVRaVkwQ2lt?=
 =?utf-8?B?eGhYeHdZc3Y0c2Y4eWlaVm43Tkc1QmRkU2V1cEJNbUdPdzl0U0cyTXRvVUdl?=
 =?utf-8?B?Y0dhWmR3YlQyREJjanlpdW5SMXpVRmRLL25xK1pKYUtORTVjaHhhNVdDWDlq?=
 =?utf-8?B?elNoUjNNNVZ3YjNGSTVNcnpzUWtFald3NS8yYzdlRUxVc2JmaXhWY2ZERStk?=
 =?utf-8?B?bWtmYmFqZkJQQlBsSHdSVGFvait2T3I3a2RXY2Rtbzh2a1NubmFidjNrV0d1?=
 =?utf-8?B?djAxaWtxR0N5OWFjMnpmdlBWcDBGUG9QUU1hbTBqWjMzMGgwQURJRGtOeWha?=
 =?utf-8?B?M1NhaUlaY2gyOWpwUjJEWjFhanNHL2xOSUU1cmtzbFBjQ3pxbjhXRlhXTDR0?=
 =?utf-8?B?b1d5MXgycGVlalg3YWNLWGF4c2dzdUdJaUt2RjZ1S3h4SDhIcTk2ODRuOVNt?=
 =?utf-8?B?NWVYaWZJQUU0UFhGb0JjK2dFVFBqRXF0T3NKeFYycW11SXp0UGMxZWJ2NUNL?=
 =?utf-8?B?VTdidnpnazJKcUtZc1NnTjVBZlMwSjBOUnZpcE9FQnFXaU95ME0yNkVkZk8x?=
 =?utf-8?B?b1I1Z2VWR2V0RVprSWZWaDNNVkYyTkxyeCtkUm5KOXhiaGpmellIZUNKWHFC?=
 =?utf-8?B?Vncwd1hnMHEvNjQ1T1Y2azV5VHlJSmpjR1hSeldkMUdPUXpldUQwcE9zb0Vr?=
 =?utf-8?B?dHUzWlhHSFZnU2YyVjRPcE9mQURlMVNwWDNaUmJOYVAvYm1aWUtLemlucjJj?=
 =?utf-8?B?c3UvbGFBL29TbkUvUWZKSUZNajFCSE90ZTRueGVPSksrT2lUTWl1dXg5T3Jz?=
 =?utf-8?B?aUdEdXV3Mm1DQ0NoejNIcGdyanlnVXFFQW9GTVpkZzM0dldPNWs4WlIyUEJY?=
 =?utf-8?B?U1VsN0djLzIremRWVEY0UWdoaDdPRXJBVDdqSGRQQkxuMDI3d2FlZnYyVFRL?=
 =?utf-8?B?cG4rQzlOcjZURkpGL1lVa20wZ0w2V0xrK1JnNmVaWjlyL2Mva0Y3ODRhTWVV?=
 =?utf-8?B?RmMzM2t3U1ZlU080MzMvVjV4Z09mR1BOcXVlMEJldTZ0RG1EU1YzdVRMQ2Qv?=
 =?utf-8?B?OW5XbDZYcjZiekF4WXNYY2RiQldWeG5pR09hRkRlVzFtTGFpeUoxcW1seDhH?=
 =?utf-8?B?TlNxbmE0ZHA5aGRqTjdFQTllZ0hKSjFTV1lCNXVneHV1ZlVuWWFnRHlEeUEz?=
 =?utf-8?B?REF4KzUyN21DTVhZdmIvYXVnVVFzallGeWZJTEZ0TWNsVnNVaGZRQldPT2R5?=
 =?utf-8?B?ZlJHVjNWN2JsbVRsa2prRDhqMXFJUkxRTVVuaWl2endvSUdzbDVVNEROU2J3?=
 =?utf-8?B?S05HUFc3SWozVkdrRm1RMTl6MnA4YXg5dTNoYmJvZERyNU9EcEZpYkM3NExQ?=
 =?utf-8?B?NSsvTjU4K0tqKzRoWFcvWGZrUmd6OE4rQVMzWmlIM2NEWFVhTGVMeGczd3dx?=
 =?utf-8?B?cjJjV2lta0tGYW9qZllleUgveEgzWG1oNUZ0alV1MWZnbGszMGVsN2k4RVRO?=
 =?utf-8?B?bXRhelU0VjZGL2tFQXYwU0REY09ZdXRiMFhMQmRMYzNEeFpRdTByMHhvZHps?=
 =?utf-8?B?RURpNWNrMTlpSHRWTkxkVFFoN0tzTjNvQTgxc1lNQ0tFcWhxU3F6K2hPaEZs?=
 =?utf-8?B?azlhUGNabGJzb3JJTlNnQ0ErTDkxVkZRNEg3K0p2Q0Z5Q2xjSzVyNWh6RFhJ?=
 =?utf-8?B?NFIwRmdmWCtOVXc4cFE5RUJXOFFQVmVQdmYrUHY0cWZRdm1uN0FIZWhBRWtN?=
 =?utf-8?B?U3A5WFdYSFBaSXhLbWhJeUIzamhQay9NUmZKRlpuMnUwSStLbnlKQWN3YWFt?=
 =?utf-8?B?Mlp6U0tMSkxFK05iUndHMlRZb0llT1ZFeGdlZER3Slp4c3FGOXZLTjNlOTJu?=
 =?utf-8?Q?c/FhJH?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UVNYUGlKTVJ0UGt6OEJlNWVlalB3WHRMZmhaU29Id0pzV2VJcU4rL1BseGxR?=
 =?utf-8?B?clB4OHN1Y1d0Ty9OeFo1bDdZY3BjSjZhaGZCWVE2TkgyaUtYNnRnMndneDN0?=
 =?utf-8?B?aXRqcWdWYkdzcm9zUE4vWU5oQ2dXcHpnTGFiWXEwMmhUMmNKNElFcGhydHFh?=
 =?utf-8?B?QWU0TENvcWFLcklGSk9RUGFJZ3FUV2thSGE0R1cvRytBVk5yczBGZzF5Um45?=
 =?utf-8?B?dEZOTVZ6STJ2dHpNNEs1YVFpWDAyVzJIQ1ZXQU4zVjUydmhkcFkrcVo1M0pG?=
 =?utf-8?B?cmV6MUl6T2VQNHpwUnBtOXd4cXg2anNJUEp5aDBhMjF4SXl5d0puVDRXZ1pu?=
 =?utf-8?B?VlhjRGNKKzZMMUR1MEtMWWRXcmlHZzZOMEFZWDNPdmNveVVxanI5LzRZWFdL?=
 =?utf-8?B?bGFZZ0VZZ3pRbHBPdjZGdkIvOUt3WVZWc2RZU1ZGaGUxRjNlRmoxTWpwdXN6?=
 =?utf-8?B?TkkyVjJZMElSbTdFSHNySmM4N0RDTHY3SWgwVUN4V1RndXdudUpnOU45YUs3?=
 =?utf-8?B?dkg5aG1lNUlUMHl0TnY0aXA4WE9hbThNVjZZcXR5UHpQYlAvUFg0K2VLWldm?=
 =?utf-8?B?aFdFRW5hQy9PQmhRcUdIbUpIaUdsN0JZZDJTZzBBbDJzUHRLSnl5azJYMXpy?=
 =?utf-8?B?L3hrUGd2em1wdFEzeFdKUjhQTXdhOE1SY0JDMDNUUUx0ZkxlcjhjbVA0ODQz?=
 =?utf-8?B?VEZsa3NUVnJLcllxMGRzemVTTkJwVXhFQy80RldaMDRMQjF4bXBIVys5ak1G?=
 =?utf-8?B?eGtwMm55SXovb2M2UUVBMk1aV2V2S1RpL1l6WE9zeTAyUHZqbmEyenN4SEcy?=
 =?utf-8?B?MXNYZ2dqRWYxUmJGWHg1QTM3UnlYL1MrRVp2bEFCRlpNT0VyS0JpQ1BhbUNH?=
 =?utf-8?B?ci9LazhEbjhtZlpoaU9wV01uTFNYNlI0REppcFlMampoR1YySDQzL3N0UnMx?=
 =?utf-8?B?RmI4VzAyMXNRME1NbFhtM2VZc1N6SmY5N2M2eVlESVcrRTZ6MHJ4NnF4VUs5?=
 =?utf-8?B?Nm82T1AxMElPZy92UDBQVzhFNjVEelF0dzBNQ2tieVQrT0M3dEc5RW5FY0Ry?=
 =?utf-8?B?Yk9TOTBiSlNFSDZjTlN1WWdaZVhLWmE4SlNpN1JTZmdnSlRERjFPdDI3Ynhp?=
 =?utf-8?B?NzVLZnFIaytlMFpjcHZ5SURmc2VxR0JoclQrazZFWENpRjlJRmtiNkROMU50?=
 =?utf-8?B?bU56QUh6ZDRocWRTZkRjSVVaUG5Fd3RVRnVhWmJTejU5V2lMQmV0OXlmSE9u?=
 =?utf-8?B?SmRoU21Db2RreXI4Y3dkcVIzQWZXT0JuQkFHaWtqSktWNU05eU9NbUMvd0F1?=
 =?utf-8?B?Wnc5Y1hocU5wUlBqZUtZWDlCcnR3VDk5RFNPOFp3ZVJoUzdtZkVBdHBvZ1c2?=
 =?utf-8?B?SzlEWmRsbyt2aitlK2tuSklnRGpTcWhVVGhqUG8xa1NFTTlxRnF3QWRYVnRl?=
 =?utf-8?B?SUNPOFdSZUxPUCtiWmFyUmVpTzkzWDBlb2Nza09TeEdhUFI2RVJPZUw2dEVO?=
 =?utf-8?B?dC92QnlaLzFMNVRxZk42bEJpRm1oM2dOOEg2YlZsU1NmMVd2Y3RtN1d2UWow?=
 =?utf-8?B?U0tkSSsvMExmZlgwOG10QnpGTmNjTUt5WHlpeHhnVjVIYzZFd1JkTEl5ajQr?=
 =?utf-8?B?Zi9MQXhrbGxpTGhHajRwMXVzRm1FU202MkVEZm9CcC9INWJvU2dvQ09zRW85?=
 =?utf-8?B?ckgyc01kTFFkZC9KUlg3RnFEYXFUblJRMkFrcFZlKzFrajdVdXV0OHF2NWFM?=
 =?utf-8?B?RmlZU2NBWFl0aEVsK05JcTN3QlAvbmdsY2tFdWhWODRPbzNMajA3aUdKRTdE?=
 =?utf-8?B?d1lXSGlTME9PNGlwWnZjWWNhczY3Z1JwSU1QM0ZxWG9wckdBdGR5T3VoZS85?=
 =?utf-8?B?RzZXOVZTaUZoSG1TR1FxZzlhUmEzbURlaGRaaTMrTjlEaGttbzlIN2ExcUt2?=
 =?utf-8?B?ZWorMEl6U1FVdjc4ZlViTHpYKzFtV1VYVTlWQURsZ1Y2N0JqQU42Q0ZzWkJt?=
 =?utf-8?B?STRNTGpEZUQ5aTRGZjlHYXgwbCtjTjNidnBVb0Q0RklYMWZxa3pHVUpKZ0xu?=
 =?utf-8?B?V1VaNkpNTE5rRkdEZC9YSHNCZHFsUHJxNTMzRmFZVFZxdXllbjFuTjBnVWM3?=
 =?utf-8?B?bHpBcUJlUXhKdUpQM016dFQrWHZRczJIcXhIQkdMMkF3WkhpTHBVdzRiT0sy?=
 =?utf-8?B?aUdXQWRCWWJobllPblQwMnl2TlFiQkxJL0huN1NHYmFKWmR6elM3eVpCY1BI?=
 =?utf-8?B?enJPMWhFMGozVWRQOUU2OTdSMUdBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A5982263D9F3BE47B622179D6A7EA921@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e39ce6c-c77c-4a67-2b06-08de2e8c12f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2025 14:40:28.1210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B0kO/r6IVBEmWHiyyI8JaMA3vf7Ha+H9x8LfaFTb0uv8BHEJxhEQX2CuQaP22ymxlWy1I6fdZ7e1e2d8keWZB7lh0XnNQEQOBIQQR03NeAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFA08475C7D
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

T24gRnJpLCAyMDI1LTExLTI4IGF0IDAwOjAyICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgTm92IDI3LCAyMDI1IGF0IDEwOjU3OjA5QU0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBUdWUsIDIwMjUtMTEtMjUgYXQgMjM6MTkgKzAyMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIFR1ZSwgTm92IDI1LCAyMDI1IGF0IDA4OjMyOjUx
QU0gKzAyMDAsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiA+ID4gUFNSMl9NQU5fVFJLX0NU
TFtTRiBDb250aW51b3VzIGZ1bGwgZnJhbWVdIGlzIHNhbXBsZWQgb24gdGhlDQo+ID4gPiA+IHJp
c2luZw0KPiA+ID4gPiBlZGdlIG9mDQo+ID4gPiA+IGRlbGF5ZWQgdmJsYW5rLiBTVyBtdXN0IGVu
c3VyZSB0aGlzIGJpdCBpcyBub3QgY2hhbmdpbmcgYXJvdW5kDQo+ID4gPiA+IHRoYXQuIER1ZSB0
bw0KPiA+ID4gPiB0aGlzIFBTUjIgU2VsZWN0aXZlIEZldGNoIG5lZWRzIHZibGFuayBldmFzaW9u
Lg0KPiA+ID4gPiANCj4gPiA+ID4gQ3VycmVudGx5IHZibGFuayBldmFzaW9uIGlzIG5vdCBkb25l
IG9uIGFzeW5jIGZsaXAuIFBlcmZvcm0gaXQNCj4gPiA+ID4gaW4NCj4gPiA+ID4gY2FzZQ0KPiA+
ID4gPiByZXF1aXJlZCBieSBQU1IuDQo+ID4gPiA+IA0KPiA+ID4gPiBCc3BlYzogNTA0MjQNCj4g
PiA+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3J0Yy5jIHwgNiArKysrLS0NCj4gPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ID4gPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gPiA+ID4gaW5kZXgg
MTUzZmY0YjRiNTJjLi40MmM0Y2UwN2Y4YzAgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ID4gPiA+IEBAIC00MzMsNyArNDMz
LDggQEAgc3RhdGljIGJvb2wNCj4gPiA+ID4gaW50ZWxfY3J0Y19uZWVkc192Ymxhbmtfd29yayhj
b25zdA0KPiA+ID4gPiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGENCj4gPiA+ID4g
wqAJCShpbnRlbF9jcnRjX25lZWRzX2NvbG9yX3VwZGF0ZShjcnRjX3N0YXRlKSAmJg0KPiA+ID4g
PiDCoAkJICFIQVNfRE9VQkxFX0JVRkZFUkVEX0xVVChkaXNwbGF5KSkgJiYNCj4gPiA+ID4gwqAJ
CSFpbnRlbF9jb2xvcl91c2VzX2RzYihjcnRjX3N0YXRlKSAmJg0KPiA+ID4gPiAtCQkhY3J0Y19z
dGF0ZS0+dXNlX2RzYjsNCj4gPiA+ID4gKwkJIWNydGNfc3RhdGUtPnVzZV9kc2IgJiYNCj4gPiA+
ID4gKwkJIWNydGNfc3RhdGUtPmRvX2FzeW5jX2ZsaXA7DQo+ID4gPiA+IMKgfQ0KPiA+ID4gPiDC
oA0KPiA+ID4gPiDCoHN0YXRpYyB2b2lkIGludGVsX2NydGNfdmJsYW5rX3dvcmsoc3RydWN0IGt0
aHJlYWRfd29yayAqYmFzZSkNCj4gPiA+ID4gQEAgLTUzOSw3ICs1NDAsOCBAQCB2b2lkIGludGVs
X3BpcGVfdXBkYXRlX3N0YXJ0KHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLA0KPiA+ID4gPiDCoAlpZiAobmV3X2NydGNfc3RhdGUtPmRvX2FzeW5jX2ZsaXApIHsNCj4g
PiA+ID4gwqAJCWludGVsX2NydGNfcHJlcGFyZV92YmxhbmtfZXZlbnQobmV3X2NydGNfc3RhdGUN
Cj4gPiA+ID4gLA0KPiA+ID4gPiDCoAkJCQkJCSZjcnRjLQ0KPiA+ID4gPiA+IGZsaXBfZG9uZV9l
dmVudCk7DQo+ID4gPiA+IC0JCXJldHVybjsNCj4gPiA+ID4gKwkJaWYgKCFpbnRlbF9wc3JfbmVl
ZHNfZXZhc2lvbihuZXdfY3J0Y19zdGF0ZSkpDQo+ID4gPiA+ICsJCQlyZXR1cm47DQo+ID4gPiAN
Cj4gPiA+IEkgZG9uJ3QgdGhpbmsgd2Ugd2FudCBoYWNrIHRoaXMgaW50byBzdWNoIGxvdyBsZXZl
bCBjb2RlLiBXZQ0KPiA+ID4gYW55d2F5IGNvbnZlcnQgdGhlIGZpcnN0IGFzeW5jIGZsaXAgdG8g
YSBzeW5jIGZsaXAgKHNlZQ0KPiA+ID4gaW50ZWxfcGxhbmVfZG9fYXN5bmNfZmxpcCgpKSwgc28g
dGhhdCdzIHdoZW4geW91IHNob3VsZCBkaXNhYmxlDQo+ID4gPiBzZWxlY3RpdmUgZmV0Y2gsIGFu
ZCBrZWVwIGl0IGRpc2FibGVkIGFmdGVyd2FyZHMgYXMgbG9uZyBhcw0KPiA+ID4gYXN5bmMgZmxp
cHMgYXJlIGJlaW5nIHJlcXVlc3RlZCBmb3IgdGhlIHBsYW5lIGJ5IHVzZXJzcGFjZS4NCj4gPiAN
Cj4gPiBJc24ndCBhc3luYyBmbGlwIGFsd2F5cyBpbml0aWF0ZWQgYnkgdXNlciBzcGFjZSAodWFw
aS5hc3luY19mbGlwID09DQo+ID4gMSk/DQo+ID4gQXJlIHlvdSBjb25jZXJuZWQgb24gdGhpcyBz
ZXF1ZW5jZToNCj4gPiANCj4gPiAxLiBhc3luYyBmbGlwIG9uIHByaW1hcnkgcGxhbmUgKGZ1bGwg
ZnJhbWUgdXBkYXRlKQ0KPiA+IDIuIG5vcm1hbCBmbGlwIG9uIHNlY29uZGFyeSBwbGFuZSAoc2Vs
ZWN0aXZlIGZldGNoL3VwZGF0ZSkNCj4gPiAzLiBhc3luYyBmbGlwIG9uIHByaW1hcnkgcGxhbmUg
KGZ1bGwgZnJhbWUgdXBkYXRlKQ0KPiA+IA0KPiA+IElzIHRoZXJlIHNvbWUgcHJvYmxlbSBpbiBw
ZXJmb3JtaW5nIHNlbGVjdGl2ZSBmZXRjaC91cGRhdGUgb24gc3RlcA0KPiA+IDI/DQo+ID4gUGxl
YXNlIG5vdGUgdGhhdCB3ZSBhcmUgbm90IGRpc2FibGluZyBQU1IyIGF0IHN0ZXAgMi4gV2UgYXJl
IGp1c3QNCj4gPiBwZXJmb3JtaW5nIDEgc2VsZWN0aXZlIGZldGNoL3VwZGF0ZSBpbiBiZXR3ZWVu
IHRoZXJlLg0KPiANCj4gVGhhdCBzZWxlY3RpdmUgdXBkYXRlIG1heSBwdWxsIGluIHBsYW5lcyB0
aGF0IGFyZSBkb2luZyBhc3luYyBmbGlwcw0KPiBjdXJyZW50bHksIGFuZCBJJ20gY2VydGFpbiB3
ZSBkb24ndCBoYXZlIHRoZSBjb2RlIHRvIHVwZGF0ZSB0aGUgc3RhdGUNCj4gdHJhY2tpbmcgdG8g
aW5kaWNhdGUgdGhhdCB0aGV5J3JlIG5vIGxvbmdlciBpbiwgd2hhdCBJIGxpa2UgdG8gdGhpbmsN
Cj4gYXMsICJhc3luYyBmbGlwIG1vZGUiLg0KDQpPay4gWW91IGVhcmxpZXIgbWVudGlvbmVkIHVh
cGkuYXN5bmNfZmxpcCBiZWluZyBlcGhlbWVyYWwuIFNvIGNoZWNraW5nDQpib3RoIG9sZF9jcnRj
X3N0YXRlLT51YXBpLmFzeW5jX2ZsaXAgYW5kIG5ld19jcnRjX3N0YXRlLQ0KPnVhcGkuYXN5bmNf
ZmxpcCBpcyBub3QgcG9zc2libGU/IElmIGJvdGggYXJlIGZhbHNlIHRoZW4gd2Ugd291bGQga25v
dw0KdGhlcmUgaXMgYXQgbGVhc3Qgb25lIG5vbi1hc3luYyB1cGRhdGUgYWZ0ZXIgcG9zc2libGUg
YXN5bmMgdXBkYXRlIHNvDQp0aGVyZSBjYW4ndCBiZSBwZW5kaW5nIGFzeW5jIGZsaXAuDQoNCkJS
LA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiBJIHN1cHBvc2UgdGhlIGRpc3RpbmN0aW9uIG1pZ2h0
IG5vdCBtYXR0ZXINCj4gdG9vIG11Y2ggZm9yIHRoZXNlIHBsYXRmb3JtcyAoYXNzdW1pbmcgaGFz
X3NlbF9mZXRjaCBhbmQNCj4gbmVlZF9hc3luY19mbGlwX3RvZ2dsZV93YSBkb24ndCBvdmVybGFw
KSwgYnV0IHdlIHNob3VsZCBzdGlsbCBrZWVwDQo+IHRoZSBjb2RlIGNvbnNpc3RlbnQgdG8gbWFr
ZSBpdCBlYXNpZXIgdG8gdW5kZXJzdGFuZC4NCj4gDQo+IEkgc3VwcG9zZSB5b3UgY291bGQgaGFu
ZGxlIGl0IGNvcnJlY3RseSBieSBjbGVhcmluZyBhc3luY19mbGlwX3BsYW5lcw0KPiBpbiBhcHBy
b3ByaWF0ZSBwbGFjZXMsIGJ1dCBJIHN0aWxsIGRvbid0IGxpa2UgYWRkaW5nIHlldCBhbm90aGVy
DQo+IHNwZWNpYWwgY2FzZSB0byB0aGUgY29tbWl0IGNvZGVwYXRocy4gSSB0aGluayB0aGF0IGNv
ZGUgaXMNCj4gY29tcGxleCBlbm91Z2ggYWxyZWFkeS4NCj4gDQoNCg==
