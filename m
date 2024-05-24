Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2058CE14B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 09:04:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BB5910E3D8;
	Fri, 24 May 2024 07:04:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I6YIsDdk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED3F10E3D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 07:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716534241; x=1748070241;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=7xC17zKpCSufo5QssnWWxKz0LoNhgNfffjxNXvyIlyE=;
 b=I6YIsDdk0Iw/T2L/DPjVnLZNDf+/qFpImkh/jK8F+oFZHSTzAOCdsvYV
 wX+idPQJHQiGcj3xLUvO92glhx2O7iExchcQAhbxZ9UlR5awFrdJ2HrK1
 wCyRWoMANS5X/KL2qshmXRPDfkGrELwBN6FFi8du1Q7Ng/mp7IBRyCwBy
 P49rmFfybo2aIkExRBusymNZ7HVCdo6ahfTDCOWkGW5S7jn7njXqOwAjL
 WZ9tPwPVjEJrikfExqPYzvDIOME/5IG1YKXcz20QpZYFvvEcTroQGl4Ur
 +EH0UmttR0HJih+wzU+YSkfA2CtNTJHW/IhDzzi0Gt+Pg7CKa5jp+gXjK w==;
X-CSE-ConnectionGUID: +9cfd0sKQ5O7GiVtQkHa2Q==
X-CSE-MsgGUID: Y0o1jS4qRXmhXzGKUmv6sQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="13128326"
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="13128326"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 00:04:01 -0700
X-CSE-ConnectionGUID: E1PR44S6SsqRi/8CWtC0Jw==
X-CSE-MsgGUID: kaSQvAaVTC+f7lZk1HruNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="64743252"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 May 2024 00:04:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 24 May 2024 00:04:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 24 May 2024 00:04:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 24 May 2024 00:04:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 24 May 2024 00:04:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HXaeqAoFKu8sPhBNR6k0ddqE5VrbLMJ5OrC+e6GSQhjvs5B3APeqdESTDulqcgLKNjCK10bp4g+VNk4at3HtjiQe+hFXC6BI8dGDHNXwUmrr2R/JzTrkgsuyyNI32OG8N3B6IFHkg0qqdluWNenxBs8DLZ1W8D1tIGfmh+BP7S8Whl8RJjjbc7EPIy4yD8xFn+LUql3MziNjsTSB+NxKnxweXj8dqEO8mOtzBmhQARxMWHZfAYMHgu5E9GG5Nk4Ep9Kyrdnxa669vzRqPZLdquWu20PuAvyJeBDFrQIGxsFCmIiBVJFS8qe4mOh4sQJ2td34YImM0rnazyHFz9Jmsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7xC17zKpCSufo5QssnWWxKz0LoNhgNfffjxNXvyIlyE=;
 b=UfYiKvuz9VQDGLuagizxVLRhMmY56O+n+yc7vx1W7qRlGeY9MciKKlqrOm2Il/OPTKcaBAl7hfyF1ffCLT5CMYhrUDRZiU8EA5pp91ecseLqbBS6/azlYsh/vIae29PrDGIW2UXIpiouQE70UQxLEVJZvtYk4YBKUO21RXMlTq9lRDvdNLhuE2LDQ64hWuQgt9GoFFNYLmnunwsrUpMuxZWJyvL4Hd1ZbTln0HDbiRM+MQ6QqHntEjBOJBj4ncfh3W67f3HA8edJoUvguq59lOiXamOHOUdfiSd52U8Vt6V4T8p0ofbDkOP5fqus3ARiOLBPjGyYcHICxxJUoy3JHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB5311.namprd11.prod.outlook.com (2603:10b6:5:392::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7611.22; Fri, 24 May 2024 07:03:59 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 07:03:59 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH v2 04/17] drm/i915/psr: Move printing PSR mode to own
 function
Thread-Topic: [PATCH v2 04/17] drm/i915/psr: Move printing PSR mode to own
 function
Thread-Index: AQHaq1uFw5SOco1veEmWY9SIbrW6F7Gl6E0AgAASFAA=
Date: Fri, 24 May 2024 07:03:59 +0000
Message-ID: <411b437d35ca4f97920a1edf8ef8b1b45d3518c4.camel@intel.com>
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
 <20240521084648.1987837-5-jouni.hogander@intel.com>
 <PH7PR11MB5981DAFE17919361964D086BF9F52@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981DAFE17919361964D086BF9F52@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB5311:EE_
x-ms-office365-filtering-correlation-id: 3c040b4e-87b4-45b0-cab7-08dc7bbfaf92
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?dlZlRnpseHhOTSt2WTRZbnFyQ1NJcTduczdxRnNVd0FRWTZOaEZWeVBpME00?=
 =?utf-8?B?T2F5YkhHa01sNjRtRXNEYjJ4VG1lZ3B2dU0za1IrbitoczFSYllteEFOM21T?=
 =?utf-8?B?MHdOTXU2LzZzQlRQckJ4cFYvbHRBMlRPeDR1Y3NWbG9UU2F5L00wWElsSEVO?=
 =?utf-8?B?dDZPbDVxL3J5R2cwb3BDYmZKWWJ4cXFFWXluT1dMM3dHQVRUdHhPcmw0R2Jy?=
 =?utf-8?B?MmJNWjNHUGRXTWtrZExSS015T2toRFVlTFNCYTEzUEFhUEQyTGxKaXN5dkpp?=
 =?utf-8?B?Y2xXd1dHWFZQRlovTTJmTTZGZFBiNWJnbkFUYmhCT1RZZkJSRjUwQ3NQU1Nh?=
 =?utf-8?B?azVkTmM5M2hUUHVaTnZjbDYySUEwWVFBWmJYb1BRZ2QxRmRwNVowTGl3bFlQ?=
 =?utf-8?B?a0RNeml4ZHI2elo4d1ZiamlQbFEwZXFjZUNxak96dkx3WnRDdDMyTzhuL0R3?=
 =?utf-8?B?QnpUS0dGNUp1QkJTY0hteGs5eFJJUkVJQnhwMjFXZytlcGRPcmJ1dXBEcTRT?=
 =?utf-8?B?TnRjaDlOU2FJSVMzYWRtd0NtYmhNTnJGYlYrckN4MmlBNDl3Y09SR3M5MjUz?=
 =?utf-8?B?TEpYNTljSGRMbzk0OU5HaUFEc3k2Q1dJb05VU2UyRC9JZGJENklaZW9iVjVa?=
 =?utf-8?B?V2U5Uzdmbi9keFRwSmxrN0x4d0dhMVQ3dVNXcGVTNWEzbHlaVjdKV1pMQkNB?=
 =?utf-8?B?bDh4Slh1dzRUdmRwSkozZGZoeG9QcGhhMitvdHc0NU1RYUtRQ1ptSVdQRnBO?=
 =?utf-8?B?MVlUWWdadzlhWUF5WTNMblVucDAvOThKb1hvMGxnSXQ0NHoxSUhTcm5odm5s?=
 =?utf-8?B?Y0dnQitlaUdRVnRIUmEyVld6bDJUeUdpOC82bUROckhFY1N4eFZBbFZlRFRL?=
 =?utf-8?B?d1ZnM1M0U1BidFBGNE03ZmpUUG9ZeUVZS0FBamppbFl2Rzh1YmFMK013VnhJ?=
 =?utf-8?B?SEF1Y1Qvc25pU0ZLNFNPUkwwSVIwVnc3ZjZvdkZmdnZEZXZVM0d2ZmFPZVJr?=
 =?utf-8?B?Qnd5K2FoQ0RJVFdsb2Y3eGJTZ3hlRmRuZzN5bXJkbXRSQXQ2c25HN2crUW9U?=
 =?utf-8?B?Vytqa2lpQmt4Q3FjSzBtYzg2V3duYjhPRzZhOERiQjl0TjFrN1lhS3dsMG9O?=
 =?utf-8?B?T2dBNHliam9UTXpkcTVSMjRWdHkwSXIyWGc1RGRQZmxGRW82WG5uZTVLdUxl?=
 =?utf-8?B?L2I0SDBJeFR2dTYyTWJ1WkNJbS9uMEZVZ1JqcXc3WnE0WXNLcFAvcFlkQVpm?=
 =?utf-8?B?R2R2NlJZYXFPY0pJMEN5MVVPZnBLaVlITXRMVng4Zi9MNTdSUzZUcXFIYmJx?=
 =?utf-8?B?MGlGR2dFMkVSQThMQ0h6QzlVS21HSFdZSTBmeW1XakpYQlp5bWdxd0RCZmtU?=
 =?utf-8?B?ckFDbHQ3OGZuSnc0eXp1R2tUYUM1ektKc0FNS0JjRWJxOFljSTF5ZCs1NTBX?=
 =?utf-8?B?eVFDeEhidU5kZFBpVG95dm9XYzByb05RZXdDcGtJdjVOdDhiME5qTTVqVk5F?=
 =?utf-8?B?YitOL2NJbWdqUWk0c2gyOThJVFpEUTA3d2Y2d3NjYVQ5SDlsbGswMjhQUlov?=
 =?utf-8?B?dHRqdXh4bUZXK2FNc3NXWit6SzB3cnovVmRDMHVXMWtVZ052ZGtSSFNtcWFD?=
 =?utf-8?B?UnQxMDRyS2FHa0RsZ3JHMVYzQ0phSnNjQVBaUysxRG54dlJpYjM4dFg4dWZi?=
 =?utf-8?B?ZnBqbUQ5L2Z5d2tnb3FkUGMyaWtzZjZ3Q1N3QmNMZ253b1RCOFFRTWtLMlFm?=
 =?utf-8?B?SjI1bnltRGFLS1BJYzRQMU1rWGRsY1BRNmkwWFp2WTd0WHJiaEVWZFcyQmc1?=
 =?utf-8?B?MlJibzM1Z3VQc0lmL2VtQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OWhjc0FWTkFjOVZTelBFYzlOTmVJMFFPS3FxYUpld0hPYjlkNEYwOEljMFpr?=
 =?utf-8?B?S0xKSVlYTzh0c210NjAxTGRlTkR1NndOcVZITXFjTThWVGlLM0FJaldJTHhq?=
 =?utf-8?B?Um9yU2U4VytkRXcwMWl4WVNycE5kMFNoUnBPRG53M1lGcGI2ZDJGWURHZ3NZ?=
 =?utf-8?B?dy94M00rMk5OVDEvYVRVcWJYL2xNWjFGclFsMGZOdjFJRWVtaVhTZWFxTUZn?=
 =?utf-8?B?dW9WcWRWZTc2bjdEVE84U0pjN0JtRXIzZGtteGNxT215SlEwbjg0WmNrYmhX?=
 =?utf-8?B?c3dCemwxQ3lMSDBybmFiVW0vTDhwTERWdTFxK3VlckE3L1ZmdFhHQzZBR0pZ?=
 =?utf-8?B?c0ZmMEYrNkdsTTRmcmJ4OHNmbmdJRUtLYndSZmZVd0R3cmNnVExmQ2x3QUpG?=
 =?utf-8?B?Y1dDeEpBcUxMM3A5aHJhN1ZKaXBLeXNLUFdrbzFaLzQ4a0xsSzNKTlUvZ0JI?=
 =?utf-8?B?cmk1enBGK1Z3LzZET3loUnVseHVEaHI1K0tlTGsxcHc2L0h2WDFneE1Md05R?=
 =?utf-8?B?SGY1TmhLT3RWZ1JCdGZTMWVtM2VSZnVyZ0RTSDJ5Q1JjVWxhTzgwUStPZExJ?=
 =?utf-8?B?dTJXL3JvY3hTOWFJdlMwNVZQejNqZVU2V2JrTjR5WmY1QVdQckkvZmRDTzhl?=
 =?utf-8?B?SDU1MUhtYXc2aWdiUWM0Yk1xNXdyYUtUZVJJdE8zRjB5cGdzdHRERFJ4RTJZ?=
 =?utf-8?B?V2xwbzJrdXJ5L2lwZVVoOERVRlV6TGJjdytIektBMGF3a0p6elMrSnI0ajZS?=
 =?utf-8?B?TU51aG93bThrd1JraHZrNTJVaUg3cDdZQVA1TEtHN3JKa1VCeUFBUmIvZWZq?=
 =?utf-8?B?R3MydlFOQUE3QlI4VkJ4aG9lOW1sdEJsdXR6RTNWU0lXQXFNQlJrb1VCYTAr?=
 =?utf-8?B?UmZxbXArQ3dIZ1J5R3pBYjFOQU5YaGJ0MVUxM1N0UVFMOGIzNFF6T3UzaWZB?=
 =?utf-8?B?OWI5OS9oUzdXTlV3U3d4bGxjVzJoWGE5NURLbTNMZ0lUQmpMOTQzbjFTeFA2?=
 =?utf-8?B?MitVMjhtWU41NVZ0NlhrTlBNUEFHUkFCc2pTemlqK0lEK1Mxc1V2d0hXYm85?=
 =?utf-8?B?TTY3TncvZHc5MlI1RG45SitDVTh5L25ibTdWZ2RtK1dvVEJ5cE03UXNKS0RO?=
 =?utf-8?B?c1EyRmRBem56eUd5WWVXYUI1aXVDQ1NXNzZKUkFsS3BYRlFUa3UreUlzM3Zx?=
 =?utf-8?B?VnZRek41emZWT2Z2UUgrSk9pa3FpdWJIVmpKQ2M5M0tkRUsrUnEvVWJtRTdx?=
 =?utf-8?B?TlV3Z3ZtMWJLampsOTYvN2M2NGxObmRtOWEwYmNFOXZhZGgyYkluSVR6dmVw?=
 =?utf-8?B?cWNHMGYxbTZPSTR0Unk4Y2MvZ1ZpRVdnR2pJYWp2dXpsNGlzTzNjRlBvNmJN?=
 =?utf-8?B?MTZsdGM4dTlyeGkwaUJOVGZSSlU4ZTVKNUhDbjNXQnBURi9HM0lGUDIwWExm?=
 =?utf-8?B?bjZOUlBHVmxLRlFVN3JyelpMTlBpZkJ0cGo5Y1dZMkJyWkhSR1Z0aGdHdTM0?=
 =?utf-8?B?ck5PVEY5UllUWEpQQnVFcmhOd2VTUVBUZnM2UVRReUYyaDR1ZXlhdVlvQTA5?=
 =?utf-8?B?dDBPZXlvT0tvUFFua2VuL29UVHJPSFhOcmJjVk53UWtCQitiQmJXYWhnQUtG?=
 =?utf-8?B?SGl0aWlVYzd3d21xbm5rT0tNSXJndUN1aW9RYjlUaFRLY0FPMDQ5eUpQT2Ex?=
 =?utf-8?B?eVJKZnI5K2Y1YUZmWkRsSHdjZkViOElVeFZyWmtqUDZrOVNwTFpoSnltN2gr?=
 =?utf-8?B?bWV1ZlRqaURScnk4NVQwZ1ZCL3RPYU1ZK1FjRWVadDlCN2hBUHlOb0daTlBN?=
 =?utf-8?B?U25jUlo4MnR1NkpzWE45R213QmVjd1V0Z2h1Y1dNN2YwdVZuR2FGQm8xTGhr?=
 =?utf-8?B?WVZweCsvOGx5emJNTkVZdk5JS2Z5SUpoOUJ5STM4WmNzS2ttRTlJRDloVVhX?=
 =?utf-8?B?SmRRL0VSQXF3QVNRQWU2dnZDWHArVUNBdW5nZXFtL1lZcTEzaCtRenJIaFUw?=
 =?utf-8?B?cGw3S2FiRy9OMVBtNzNGU2l2T0t6a3JOVGx5R09zVWVCMmVKN2Q1bjFzZUE1?=
 =?utf-8?B?RWdTTXg5Q1FycXBNam1KNmJyRlcwNnBMZ0NIK3hHbXl1Ky9RMjNTYXMvTm5h?=
 =?utf-8?B?eS9LdFF5anQ3N0xuQUdocS9BTC92M2xVRTJjR29NNzI3TjZtdGlmMi8zNFlp?=
 =?utf-8?B?ZUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <66CBC21AA7C08F45A4524A48F6913A96@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c040b4e-87b4-45b0-cab7-08dc7bbfaf92
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2024 07:03:59.3911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0PhCAXZjY3r1iAWwb5M0msOxrSifnKYV5UWQ8tLpda5kzUExs4lFehHtCmWiEGG+77qYlbG6FbsiNsZKJJurqGjKXCsCvMyrVEZVk+3eCMM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5311
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

T24gRnJpLCAyMDI0LTA1LTI0IGF0IDA1OjU5ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToK
PiAKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBIb2dhbmRlciwg
Sm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+IFNlbnQ6IFR1ZXNkYXksIE1heSAy
MSwgMjAyNCAyOjE3IFBNCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
ID4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwg
TWlrYQo+ID4gPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmku
aG9nYW5kZXJAaW50ZWwuY29tPgo+ID4gU3ViamVjdDogW1BBVENIIHYyIDA0LzE3XSBkcm0vaTkx
NS9wc3I6IE1vdmUgcHJpbnRpbmcgUFNSIG1vZGUgdG8KPiA+IG93bgo+ID4gZnVuY3Rpb24KPiA+
IAo+ID4gaW50ZWxfcHNyX3N0YXR1cyBoYXMgZ3Jvd24gYW5kIGlzIGFib3V0IHRvIGdyb3cgZXZl
bi4gTGV0J3Mgc3BsaXQKPiA+IGl0IGEgYml0Cj4gPiBhbmQgbW92ZSBwcmludGluZyBQU1IgbW9k
ZSB0byBhbiBvd24gZnVuY3Rpb24uCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAyNiArKysrKysrKysrKysrKysrLS0tLQo+
ID4gLS0tLQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlv
bnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Ywo+ID4gaW5kZXggMmFlNWNkY2E1Nzg2Li5kZTBjZTVmM2EzMmMgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiBAQCAtMzYwNSwxMyArMzYwNSwy
OCBAQCBzdGF0aWMgdm9pZAo+ID4gaW50ZWxfcHNyX3NpbmtfY2FwYWJpbGl0eShzdHJ1Y3QKPiA+
IGludGVsX2RwICppbnRlbF9kcCwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBzdHJfeWVzX25vKHBzci0+c2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCkpOwo+ID4g
wqB9Cj4gPiAKPiA+ICtzdGF0aWMgdm9pZCBpbnRlbF9wc3JfcHNyX21vZGUoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBzZXFfZmlsZSAqbSkKPiAKPiBwc3Iga2Vyd29y
ZCByZXBlYXRpbmcgdHdpY2UsIGhvdyBhYm91dCBpbnRlbF9wc3JfcHJpbnRfbW9kZSgpPyAKClll
cywgbWF5YmUgdGhhdCBpcyBiZXR0ZXIgbmFtZSBmb3IgdGhpcy4KCkJSLAoKSm91bmkgSMO2Z2Fu
ZGVyCgo+IMKgCj4gUmVnYXJkcywKPiBBbmltZXNoCj4gPiArewo+ID4gK8KgwqDCoMKgwqDCoMKg
c3RydWN0IGludGVsX3BzciAqcHNyID0gJmludGVsX2RwLT5wc3I7Cj4gPiArwqDCoMKgwqDCoMKg
wqBjb25zdCBjaGFyICpzdGF0dXM7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAocHNyLT5w
YW5lbF9yZXBsYXlfZW5hYmxlZCkKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBz
dGF0dXMgPSBwc3ItPnNlbF91cGRhdGVfZW5hYmxlZCA/ICJQYW5lbCBSZXBsYXkKPiA+IFNlbGVj
dGl2ZQo+ID4gVXBkYXRlIEVuYWJsZWQiIDoKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIlBhbmVsIFJlcGxheSBFbmFibGVkIjsKPiA+ICvCoMKgwqDC
oMKgwqDCoGVsc2UgaWYgKHBzci0+ZW5hYmxlZCkKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBzdGF0dXMgPSBwc3ItPnNlbF91cGRhdGVfZW5hYmxlZCA/ICJQU1IyIiA6ICJQU1Ix
IjsKPiA+ICvCoMKgwqDCoMKgwqDCoGVsc2UKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gK8KgwqDCoMKgwqDCoMKgc2VxX3ByaW50Ziht
LCAiUFNSIG1vZGU6ICVzXG4iLCBzdGF0dXMpOwo+ID4gK30KPiA+ICsKPiA+IMKgc3RhdGljIGlu
dCBpbnRlbF9wc3Jfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IGludGVsX2RwCj4g
PiAqaW50ZWxfZHApCj4gPiDCoHsKPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKPiA+IMKgwqDCoMKgwqDC
oMKgwqBlbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+cHNyLnRyYW5z
Y29kZXI7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX3BzciAqcHNyID0gJmludGVs
X2RwLT5wc3I7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4g
PiAtwqDCoMKgwqDCoMKgwqBjb25zdCBjaGFyICpzdGF0dXM7Cj4gPiDCoMKgwqDCoMKgwqDCoMKg
Ym9vbCBlbmFibGVkOwo+ID4gwqDCoMKgwqDCoMKgwqDCoHUzMiB2YWw7Cj4gPiAKPiA+IEBAIC0z
NjIzLDE0ICszNjM4LDcgQEAgc3RhdGljIGludCBpbnRlbF9wc3Jfc3RhdHVzKHN0cnVjdCBzZXFf
ZmlsZQo+ID4gKm0sCj4gPiBzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ID4gwqDCoMKgwqDC
oMKgwqDCoHdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldCgmZGV2X3ByaXYtPnJ1bnRpbWVf
cG0pOwo+ID4gwqDCoMKgwqDCoMKgwqDCoG11dGV4X2xvY2soJnBzci0+bG9jayk7Cj4gPiAKPiA+
IC3CoMKgwqDCoMKgwqDCoGlmIChwc3ItPnBhbmVsX3JlcGxheV9lbmFibGVkKQo+ID4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0YXR1cyA9IHBzci0+c2VsX3VwZGF0ZV9lbmFibGVk
ID8gIlBhbmVsIFJlcGxheQo+ID4gU2VsZWN0aXZlCj4gPiBVcGRhdGUgRW5hYmxlZCIgOgo+ID4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAiUGFuZWwgUmVw
bGF5IEVuYWJsZWQiOwo+ID4gLcKgwqDCoMKgwqDCoMKgZWxzZSBpZiAocHNyLT5lbmFibGVkKQo+
ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0YXR1cyA9IHBzci0+c2VsX3VwZGF0
ZV9lbmFibGVkID8gIlBTUjIiIDogIlBTUjEiOwo+ID4gLcKgwqDCoMKgwqDCoMKgZWxzZQo+ID4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiAt
wqDCoMKgwqDCoMKgwqBzZXFfcHJpbnRmKG0sICJQU1IgbW9kZTogJXNcbiIsIHN0YXR1cyk7Cj4g
PiArwqDCoMKgwqDCoMKgwqBpbnRlbF9wc3JfcHNyX21vZGUoaW50ZWxfZHAsIG0pOwo+ID4gCj4g
PiDCoMKgwqDCoMKgwqDCoMKgaWYgKCFwc3ItPmVuYWJsZWQpIHsKPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgc2VxX3ByaW50ZihtLCAiUFNSIHNpbmsgbm90IHJlbGlhYmxlOiAl
c1xuIiwKPiA+IC0tCj4gPiAyLjM0LjEKPiAKCg==
