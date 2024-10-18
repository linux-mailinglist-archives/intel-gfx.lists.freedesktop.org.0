Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD459A3ADB
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 12:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92B9610E8CD;
	Fri, 18 Oct 2024 10:07:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X6L8Qg7q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD3D210E352;
 Fri, 18 Oct 2024 10:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729246034; x=1760782034;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QpC7u8MpgOtqOmH8PJUmWobmVdD/RHDsjFa30on4/ck=;
 b=X6L8Qg7qV5J3A8CRODY2LsrI+KLpoNQ65GvQtEFFMWsrAyC9hEO6aU4s
 mX112kBjX8BGVfE8ADTrTRcUJMxIVyvgJddO+bhzAL/9mihwCHKNO1tEo
 0szapxQ8PjJj/aKChTq95U23Aw0GTFOPn68c5ZR3h2+lSWlLstUOIv+GM
 iEuNw2x1l0bORkINZRArTAkIWUxu8D7YwKXyJcbqsZbOlNbZEvO3tCDox
 0Rudv1G385DYq3NeIfznBBejf7/kElF29OltKs9/zthHtJIVSUmaaaT2P
 5ISAJpoYSp2UWBt2gFhJuXWF/HA9XGMa44hEoza81202fLmJWUWTMKjAM w==;
X-CSE-ConnectionGUID: Isd1S8IoR/KpiH/Co8Oukw==
X-CSE-MsgGUID: 1Z4gS5vdSNC8EaafXqG2iQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28561138"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28561138"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 03:07:14 -0700
X-CSE-ConnectionGUID: Em+HcA2nT+qIFtCAlLmVcQ==
X-CSE-MsgGUID: FMWBk99hQMeSIYFjZCzaeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="79247690"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 03:07:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 03:07:13 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 03:07:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 03:07:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 03:07:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GyHLJ3O67kRsg4EwbJ9NTOn6HRjitluUA+0xY0XGtDKUEFEZFpa8dHyUkAzVOdtX141z03PQW3sQlTqQC+qX0DY+1q6D5i7IUTLc1EXpwnopQ9ujrEP52gV/U0ZZBc667sAyS5wz80sFfJuqNY1ThjrZHU/8qvBMg56rtFTZ+lsK0+8WdZMHfcw6oYSTgpx9IyOWKEalCUUFwwKoQjub1l//rR+8hnz1C2D0keaEVkCo728MIpMg8LWdZmeAQwA/1VNO8z2ZWIHEjDp+I1yeYdBBisoMnoFTIjxui6qSxoyucgPu6SUR0rbpmOM87tYhgk1YaKYetlvsSQKCVjTd/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QpC7u8MpgOtqOmH8PJUmWobmVdD/RHDsjFa30on4/ck=;
 b=Lp19LrqoBEWhxbZJfbS4mMtXYjwRcUJqTKqeE2lDzblIaRLVVZZG250QGfrMku3wM2IoB1wUxJyziQ4ESoPyE5guDD2AmzhRVjHSyLjgMwjIx0hTdLII5n9PHnSWusevrkjTlKeXVnyYNO707qk4bt5AL47eDSqexcmXYJiA2dkX+OvtVQl27rebjKdob+DFq+6+DdvroMinKShrsaD0eyd3hWwfp8TR2FMWTglS8hmciDknqxiBHykMOlBsTzyKPfIIjoZXTalXMcA8Gozneoc1lIoUzJNgkg3K2pCwBbqo07oj0BtmtSE/g5EO6bSgJ6jK9VKAZ18DrmfjP27ZqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS7PR11MB7835.namprd11.prod.outlook.com (2603:10b6:8:db::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.17; Fri, 18 Oct
 2024 10:07:10 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8069.016; Fri, 18 Oct 2024
 10:07:10 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Atwood, Matthew S" <matthew.s.atwood@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>
Subject: RE: [PATCH v3 7/7] drm/i915/xe3lpd: Add condition for EDP to
 powerdown P2.PG
Thread-Topic: [PATCH v3 7/7] drm/i915/xe3lpd: Add condition for EDP to
 powerdown P2.PG
Thread-Index: AQHbH1eievKXUxpmkEO0QQGvDjzumrKMTCxQ
Date: Fri, 18 Oct 2024 10:07:10 +0000
Message-ID: <MW4PR11MB70545E01CAE6E0A3546B9B08EF402@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
 <20241015231124.23982-8-matthew.s.atwood@intel.com>
In-Reply-To: <20241015231124.23982-8-matthew.s.atwood@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS7PR11MB7835:EE_
x-ms-office365-filtering-correlation-id: 4e7e5ecf-a67d-48b2-3c17-08dcef5ca143
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?c09tK0RRQzJ0SzRkVmdPaE5ZTituazRmZW9aQXdkVk5wdE84TnRBVUdyd2JJ?=
 =?utf-8?B?YnFVdWwxeVlpNWZrbXZPZlI2bDJILytqRVFsR0E2T2oxT2Zwem51ZjM4T29a?=
 =?utf-8?B?QmxJT0xUeVlqd2QxakhDa1V5STFoeHZpc285amNFUHgzQ3BMcW5HbXpwdGsv?=
 =?utf-8?B?TGllYi9uUVhSNEVrNW9OWWMwalVPakZ4ZHd3aGhuNjB4YWI3OU45RzRVOHBS?=
 =?utf-8?B?bFBBdTZpTTlYWkdncGwxcnJHMW5nNGlneWlVUmdiSXI0WDBJN1R1V0prZ2lj?=
 =?utf-8?B?MW9LRnh4RjFuVnpVaklmcjYzSmR3dXJleEwwUVJiUDNFc1FiWXgwMDdmNlVB?=
 =?utf-8?B?Q2MwZ1ovK0pXV01HdFg1YzA5QlVFRE1CUkdiRnhvaFVsTmQyTEQ3YXM4cHJR?=
 =?utf-8?B?bjdBVUhXRE5zUWpWaTl5RkYyMStvS21vMnB3VXlNTnlEUlVKYU15LzVycXNq?=
 =?utf-8?B?d2dpcjM5bjhFQnA1bVp1cGdZNURWVGdKTW5ITEhZZ2J0eUYwMjVibndnbVY1?=
 =?utf-8?B?eU5GSlYrZjg2M2swTm5nbFducWdTaDhoTFhvS3kraXNxdGpIR0I3SkhDTFdI?=
 =?utf-8?B?Q2tQSG0yRVVPMCsxR0MwQWJISG1JNHBacnhNU2szN2FTMTFGM0RjR3V3YnV1?=
 =?utf-8?B?Tkt6MzRlNTliRnRaUzlhWi91bnArNFBKdmtIUEttcWJiMytZZEFEK1NrYkl5?=
 =?utf-8?B?MEJLQThaczQvdE10Mm8yQzFpb3F0VUpJd0o2K2tzSHpJWHQydjFuaGpCcE5C?=
 =?utf-8?B?UVhpWWlOUWtDQjBFZUJjODZBRUZjNVQ3SitaV1oxaWZFZ3dtTm02d1ZaK092?=
 =?utf-8?B?dS9McllXMHQzc0ZTcldaOWhqcG54RkRHYUwvblNaY1UzUlZvWUp2TFM2R0VK?=
 =?utf-8?B?UlJaaENCVncvMlI1YlJ6QUtHTWpod0pZUnFkVHhCTnlMdVBpWW43SDkyTEFs?=
 =?utf-8?B?dVFUNjNYaFR1anhpTjZUdFN5eTFMclVrd3RVcmwzYTF2eVlieUJickZiZHlL?=
 =?utf-8?B?cDN2WGFLSjN2b1VkS0QyZm1FcjFPWGJyRGhrVUVQOVI3TncwRktoU3UzalNs?=
 =?utf-8?B?bkZOeGpReXpSbjVTb3hoNHFtL1lZYTdEMXRhTlVBb2duSlBscjBXRlpPb1Zi?=
 =?utf-8?B?T1lteHhmVEtyaXNnVFNHRGEvYmhyRlhqMzlIc3ozR28xK001ekpmY3ZpRkhE?=
 =?utf-8?B?QU9WWE04YlN3M1daS0wzS0xXWWNIVmxENHJpZVlGNkpmeDgvOE5EOFAwaVVs?=
 =?utf-8?B?bXFRNFo0TVd1ZkhMeVVhZytPb0tBc1BySDhHbS9XUEdmRVQvT05zVFhNU1BX?=
 =?utf-8?B?UnpmTGRzczNTR0ZRVGdQdTJWcXJFU3EyVEozb3lWaDdsVjRHTCtqbFhJQjY5?=
 =?utf-8?B?Rkh5VVJzM2FtM01pbng1WTZDSFk4S1VIendhQ0hBNXNlQ3F3VHR5RkJleXUy?=
 =?utf-8?B?anUxUVRRTWxicU52QWVPbnMyZ3gvOTlhSVFYbjdlV2NjYXFraWVVWkN0bHdS?=
 =?utf-8?B?anJJK254cFd4ZTRWL1JYUFU4d0c2SzEwS1c5dVlUMllOaHRMUHY1c0JrY3h3?=
 =?utf-8?B?NktGN2ZEYlBqTGt6OGxlbVlsS0c1Wlk1eW8vL09RMjJkZUszR2pYSGhicWdD?=
 =?utf-8?B?SkhPTUFpUXl2QnBBRzRaOXB1RWF1MVYwbEFiajVBRWVQb08zS2tuVUNwZUZ5?=
 =?utf-8?B?a3l6Tk1Jb3E2TVo0QWtXbFdzTlo5QlBPMWdTVThscnRtbXRNbXgyVzRqckZQ?=
 =?utf-8?B?Ulc2S3lLVG40TUJGUkF1R2liK0FacjBUWkp4Rmt3MEp4TzBFRWJETUtXblZt?=
 =?utf-8?Q?/+XnAIh1B/j2ImF1P+KCLhb4EbmmAqxaySUx4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RThPL3FOcTRDaFZjdHptZ3MramI5Q204dUtLNDJPalBLZzBrVEl6bFZlLzZF?=
 =?utf-8?B?eXhtNk1wTXRKb0xaV0pFeE9GUzFGSEhPSGZ0MHl3eUduZ3h6VmQwODZRRE9t?=
 =?utf-8?B?SkFWS3Vlb0MrL3ZscjJxMmREZlFZdkdSUjY0elJLamxuaWFDM0hXaTdSNDEx?=
 =?utf-8?B?UmJMZFJMUVlraHNQNDFCR1VnNVltekhmMVVNcnMwM1I1cGNKb0NnRXhtcGo5?=
 =?utf-8?B?L1VFY0M4QWo3aXR0WGVOQUkzYmlIYS9CRTRDOTZOQzJpaXJOY1lWczllUFc1?=
 =?utf-8?B?QWs1NWdDbjUxMTltcjltdnk1TXczUzYwT1B0dEdXWjV1dVUzK3hWdVNUNGtl?=
 =?utf-8?B?RzBNclRodllmQkMvcTQxbWhraXMvQzdjdmc3Qk9wL1RuWmhLcW9rL2RaRXdU?=
 =?utf-8?B?eFhvVVd4amJJSy9NWklRdGRyWWt1YXd4MU9yMkFTQ0JjYzFFVGNVbE8reVht?=
 =?utf-8?B?MHRpRms5Y1laT01kNWljdjVDQ01TdWlLM2JLVkJ1Z1RJL3lJS0lMZzhXa2I2?=
 =?utf-8?B?UCtZVnErbFZMeDVTRVBmaVkyR0ZEdm5nem5Rck1IL1FIWG1JSkxEMHA1Mi9k?=
 =?utf-8?B?bExUMGpTS3BUSjJxRXRhbldvaVp0RmRoUmx5elJ3YnYrSnVUM3FPNWxtMUdm?=
 =?utf-8?B?V05Nb254YS9Ic1J2NVZ0enhxaDNKY05PTWYyNHZ2dFh6dzdZRVFVcnY5dllR?=
 =?utf-8?B?YnJKUkpqK1FOU1M4dmJ6MzEwRjUvWHZHUDdHOHFSTUYwU1JvYStHeTA1Z1RU?=
 =?utf-8?B?OHF2MC9aaFR5SjgvRHVBT3lRalBjdFViNnFNSFhzUHVqLzh5RjJhUkw3U1I1?=
 =?utf-8?B?alBvQWdWbnlTcTgzb3NwdUQ3TmJ2eFBCU1FreDhFVXZXL2FVTUZlR0dmS3JS?=
 =?utf-8?B?alphUEZKdXVTQlFZODZDYXMzdkNDNHJxcmFMRU5zZWNCOTNNUXRyblo2Ky91?=
 =?utf-8?B?dXNxYS9LRko4QzFHdVpMSGRBWm5yUWJySXFXVnlNNCtiMlNMckk3TlVSdzVz?=
 =?utf-8?B?K3pYVWpkZjBVYUtpMURPMnVNOUZLVzBhNVBYSDhDSDFxWVZwdVN2VGwyWE1m?=
 =?utf-8?B?cmFXWGdkdmdHOTdpWW9zMjBQVEtMN0RXVmFoRktvMG1BWm13MzZBbjh3NmFP?=
 =?utf-8?B?R1BYU0F0QitReERXclZWYUVSbkVQQVJURGFHTVFNeTVrUkJzOEp6U0xPWXRo?=
 =?utf-8?B?Z2I0L2toZDhKOHo5TlR2NmpIbGovNVU0clpRamU2VzIwSjhQRXlMcldBT3g1?=
 =?utf-8?B?LzlpSnRJdnNKR3pneHZoVGR1aUgyR0xpRFBEYzlMRTJNMVlFb3NRczMyZy84?=
 =?utf-8?B?djB2cmZHVTl3Yjl4ZEhYS0FuNnhNMWN4bHZMeGQrOGRLN0djRWFDcFg2RHdt?=
 =?utf-8?B?ZEYrNlNQZTVGZGJTVlpKcXo3b3VsQ0hCK1RIZUFWcktmcEc0RzArNGpJMnVT?=
 =?utf-8?B?cHFSZVdldG1Bd1BDZTFKY0VGZXJmeVNLMlo2QVJWbkVFTW5MMkdwNUJQSGlh?=
 =?utf-8?B?VkFzS2g0Rm5mK0Vxb3F4Nktmcm0vM0Q4S3E3dFc3Qmk5QUduWU1hbEhHdm43?=
 =?utf-8?B?ZWlaNnNrcFBsWEVNcnQrUXRsT3lTRGg4dUljK0dUSTNXNHFVY0tCc2J1YUlQ?=
 =?utf-8?B?Q0liSEZNeDhNSzZXcGJIMlBkdWQ1dkljK0diM2N1Z3pRdnU1aEFzSzBqYXRw?=
 =?utf-8?B?d2EwUjljSTBQZmxMdTQ4M1BmL042L2J3YXdpdTkxMFYvRkZQZUN0am8vWFJU?=
 =?utf-8?B?TlhDQmw5dnhRY0pIdGMvdTJUcWgwbERKeGIvYWt6bU1qVjFISlRNaWh2dzlM?=
 =?utf-8?B?bXEzSHdNS2F6a3VUZFZueFFVblh5UVowZTNpWlNvRy8yVUt0SGxmQWFNQTlE?=
 =?utf-8?B?ZzlhbWtkeG9ZeVlmbmcvM3IxbWR5aFVyT1FteFZuM0lSb1d1VE9sMDFDRjcx?=
 =?utf-8?B?VlA2T2tRQXNhUDFQZUpqZlBxWUg0eXJmRnFsYml5aWlpT1NCNHVuSEs2T1Z4?=
 =?utf-8?B?VTZBRDBpZFZMZmppTmVRT1I4RjFQUGdveXJLRnp6eU5rRHFyVHdxOWxnZjNi?=
 =?utf-8?B?Y2xOdFh3UE5YeGd6eVpPVFNsVzI0R2diUmhxdHQrRjlVRnFqWFVGck1BMDBV?=
 =?utf-8?Q?qsu/aHFGtWiwuEU44jOYfDyHN?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e7e5ecf-a67d-48b2-3c17-08dcef5ca143
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2024 10:07:10.0904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kw5LIcLiVSGgH9pDDeCKkkyubWsNS6cazkjM4nsunLb8qBBL3iGZ9RHMgZj9EYXaaz3yZT8n/TalQRlJw39OXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7835
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBNYXR0DQo+IEF0d29v
ZA0KPiBTZW50OiBXZWRuZXNkYXksIDE2IE9jdG9iZXIgMjAyNCAyLjExDQo+IFRvOiBpbnRlbC14
ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT47IEF0d29vZCwg
TWF0dGhldyBTDQo+IDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BB
VENIIHYzIDcvN10gZHJtL2k5MTUveGUzbHBkOiBBZGQgY29uZGl0aW9uIGZvciBFRFAgdG8gcG93
ZXJkb3duDQo+IFAyLlBHDQo+IA0KPiBGcm9tOiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFs
QGludGVsLmNvbT4NCj4gDQo+IEFkZCBjb25kaXRpb24gZm9yIFAyLlBHIHBvd2VyIGRvd24gdmFs
dWUuDQo+IA0KPiB2MjogY2hhbmdlIHN1YmplY3QgbGluZSB0byBiZXR0ZXIgbWF0Y2ggcGF0Y2gg
Y29uZGl0aW9uDQo+IA0KPiBCc3BlYzogNzQ0OTQNCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xh
IDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogU3VyYWogS2FuZHBh
bCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgQXR3b29k
IDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYyB8IDMgKystDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiBpbmRleCAzN2M2NmIzMjMyNWQuLjEz
YTk5ZjQ5NDY4MCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jeDBfcGh5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jeDBfcGh5LmMNCj4gQEAgLTMxNDYsNyArMzE0Niw4IEBAIHN0YXRpYyB1OCBjeDBfcG93ZXJf
Y29udHJvbF9kaXNhYmxlX3ZhbChzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlcikNCj4g
IAlpZiAoaW50ZWxfZW5jb2Rlcl9pc19jMTBwaHkoZW5jb2RlcikpDQo+ICAJCXJldHVybiBDWDBf
UDJQR19TVEFURV9ESVNBQkxFOw0KPiANCj4gLQlpZiAoSVNfQkFUVExFTUFHRShpOTE1KSAmJiBl
bmNvZGVyLT5wb3J0ID09IFBPUlRfQSkNCj4gKwlpZiAoKElTX0JBVFRMRU1BR0UoaTkxNSkgJiYg
ZW5jb2Rlci0+cG9ydCA9PSBQT1JUX0EpIHx8DQo+ICsJICAgIChESVNQTEFZX1ZFUihpOTE1KSA+
PSAzMCAmJiBlbmNvZGVyLT50eXBlID09DQo+IElOVEVMX09VVFBVVF9FRFApKQ0KPiAgCQlyZXR1
cm4gQ1gwX1AyUEdfU1RBVEVfRElTQUJMRTsNCj4gDQo+ICAJcmV0dXJuIENYMF9QNFBHX1NUQVRF
X0RJU0FCTEU7DQo+IC0tDQo+IDIuNDUuMA0KDQo=
