Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QMopLsYmOmpS2wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 08:25:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 923576B476A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 08:25:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SDEPacZ8;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26C9A10E605;
	Tue, 23 Jun 2026 06:25:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18E1C10E605;
 Tue, 23 Jun 2026 06:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782195907; x=1813731907;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cGiEMf+2qc9Wu3DoaHWwX1zf+DzX4arzqouobggjNNI=;
 b=SDEPacZ8576E8dWH8h52quFekL3EYVX7O2d/wOVBUlSrS6ga3Nv0aB39
 gCcK7M7esXxHsCgPPFQo9UHQH5dp1ytmBVGtpf8dZTin0weIFwBlsSuKw
 5+E8zJkRlqjgLdfrpHdRiPtGbQPVrJbNV2KMfg8B+4Zb76BZoo61y6Vd0
 PNsEp6e6RmGMdY62C6gp6C3B9SBqszI5ZaHKG9lTpwBMXXs2rotq1c8ga
 rD23TccZ0QRIOlkrmBOrtrVuqhsI4SBIqmi0Bgl4XXXTV2ySE67bIjshp
 6fax85J5tZae9GI4IlIDp/D8TiOUOZRUNErof5LJJGjLw1ClahIU3p+oq Q==;
X-CSE-ConnectionGUID: +QDdbqQ8TSqyXAf6B2jAYA==
X-CSE-MsgGUID: ILGyaVCQR5WY8Q6whfMFOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="85481652"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="85481652"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 23:25:06 -0700
X-CSE-ConnectionGUID: mBTgrcbqTZim+42bsH738A==
X-CSE-MsgGUID: VvfmD5tGTAqgT4nL4XkNCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="279609428"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 23:24:59 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 23:24:58 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 23:24:58 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.5) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 23:24:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RY9j/F4CzjWoOrDU538KWZZHDDacs//Nm6ib5c0LHr2t7zDgn5T0YAiQdRA4qyy9QpxmdXUYS0j7FfhSTYMQ23Ao66519VDqE0qTerEyzBimTj/o2WquSdZ9Tl81VIBFyZ+/gUjSWBK0dNkNc9bxjHz5RKeDyPo4gc3S7lvEA2khdbdFx4AbvMgz4FhWpQpKZ+0bqT1Czp1ESLctBiE4+eQAmyqyacJjASe4+8B+BS7cc/DzGQv8ynooZGyhG85aBU22OWQ6D8kbRsqarzcty5xGywFxvsMFWZYfbQdyb0viomNG81JogMXZKbPG7JEx2PwqHnwO6JOdMgCyGSB/cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cGiEMf+2qc9Wu3DoaHWwX1zf+DzX4arzqouobggjNNI=;
 b=pSY/vVAu1e6mZl18tnroOVuK9CIj3vozGtAie5M0g+ND/yUE6FdAk79A3s88zAEkhP5Lt6DH1xnXDRAxOojCrY7LG+AyeRB+qPPlTflVFp0bxOzZhJns57hNWk3SpARCDDV0iCCe9NSjJY5OinPKT1FkGvBPXFwoiC6D5PwM376dqCsd9a9XRnt5Qty8OuOG58twbuy6ervnnQmmbbIwaS0ag4oiGbihhoJkuKtH5KmFl/Ay7fkG1kBkvJpe6qurU2ZJtG/KeZC5HURZtJOR31S7gAF4HTkPJdJryKPKpH5+9323Wm3O8+2/EbtusUFSlaUfJ/+T1PnV8Qjl0/D85g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SN7PR11MB6972.namprd11.prod.outlook.com (2603:10b6:806:2ac::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 06:24:50 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 06:24:50 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2] drm/i915/psr: Force fastset on debugfs write for each
 connector supporting PSR
Thread-Topic: [PATCH v2] drm/i915/psr: Force fastset on debugfs write for each
 connector supporting PSR
Thread-Index: AQHc/wg6SpckmeWD0UW1fqc3NG7xc7ZLqZfQgAAJISA=
Date: Tue, 23 Jun 2026 06:24:49 +0000
Message-ID: <IA1PR11MB646798C1E944E91275464961E3EE2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260618095210.853339-1-jouni.hogander@intel.com>
 <IA1PR11MB646760B05826CB3EE6901F59E3EE2@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB646760B05826CB3EE6901F59E3EE2@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SN7PR11MB6972:EE_
x-ms-office365-filtering-correlation-id: 768ecdd5-fecc-47cb-f173-08ded0f02135
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|4143699003|11063799006|3023799007|56012099006|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: xqhr981CtuePV1SckXmpQW1mu5aIWCybo1z6KAUC2eCNRNLg5AGRWTfmeBMalQiPc3q6Ro80yyBDkR5z7B2VkkHuUQaeENJPZxcBeAtAX8waNARfP6iqMdEd7v7t5+e5EPsoxEdhULJ9Omdz2wLMcXsuNgNGLZLhMcHOxip9SDA9CjfR9JQJI3IFcrxMFSbz2LBg4OW7VwjFzFWEl61u35ZwLpIjq82iNvWggzippAqlQnzNsqvK2rbxAkIIsrg5mJZsqimyxOEn5VdqosN36O2tFBAFVjz1fZRwFS51uWmH/LWUHZIybrbjgnBiDbTyWHlIerIHdd41yro/FlvMCUw+QZ3NKX2WvBmPvXxuSsgVBBbkl0DvfPyVko9jSWZ6EJc+GkASkfDG8UbKPqxcnNjVmmJPJqwfIg68/NnJCD7HdShw0iPES0BCHwfdA1B4qliYtJ/nzsIsJVFv7FwnOvEUmh7+lhokL4vtVBqDZROLqqVSgXhpMuYSe3rTA9x5YNMCjeAdmyYy/M3PsdiXF3aJkqusJtRf5rOLDm/fGYlQO3pgTAh6uMhEHGHdmBYQVKkG8HITrtHcBuWaXan/QPmaOhXbOu+Ez0JJ0VpX9veJ2AyJdbzrVv/TmFfMEOlNBE/i7ZK8W3HTtCqXNr32UizsBmopMuWSWXIMskfDuzylYcgAhGk3q6ylDqBgu+0Jb7Q14CmSlZ1s6igmpGbkmKMGzfQ2ibB4acwaPXLOqlc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(4143699003)(11063799006)(3023799007)(56012099006)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UTVQRllzTUR0RVp4Rk1SWjNIYWdvNnhsZUQrZkd1clozOU1zOU41bGhlQ2xh?=
 =?utf-8?B?aUoyNUtScXA4cE1XVWRIVktIcURBVXNRdm5yQlNGZXR4ZHVQL29FZFF2QnZy?=
 =?utf-8?B?S0NLb1ZUcnN4RWRoRXlpZDRrVzF4bno5OENKSm81TkhDWnNXR3JpUFEvbGkw?=
 =?utf-8?B?WHBBdGszU2pTaWFQdEtyNi9saGNkcVlrSzhwaHNZNm84TUhickhVdjFSQXUr?=
 =?utf-8?B?TDJQZXExQmdwelFrbXpwMENNQ3NTa3QzNkNEZ0hvRGZSSlRYTGNIa0xWL1R1?=
 =?utf-8?B?aWc0bjRmRi9LNFAwdTVTaE1WSjhOYjlNdU03MklIUFlhT0JxbFhkQzZpZk9R?=
 =?utf-8?B?OW5PckU5OG1JNVFiSTN3bm9McWVQelpIZ1I4R2dUbFdwUjdJUnhybWlLUUMv?=
 =?utf-8?B?cWdpSE5mWVVaSXZHV1pCRm9UUGRTOTNLUUJEbjI0SEhybk1UQ01jVXFNWjRi?=
 =?utf-8?B?SWxvUWFTeEE1UUZ2TGZXYzQrMldhTURQakpqSjQ4RDVRdUR4UWZoaUJ5SWl4?=
 =?utf-8?B?N0o4L1dETjNEU2RmYTZ1Mjdzc3pySkhEY2JscDN5UXhZZUdMZk9IL3hTeENJ?=
 =?utf-8?B?ZGlRSEc0R2k3YlhaR0UyVkF1bmRMODdtUkFwTFVqYUMxcVBxUTVyY3ZlU1JP?=
 =?utf-8?B?cDNwSENKQ3ZtTU5mQ2JoUDBMeXRpL0dyR2FzcjN0ZnhYSmV2cmRLREVXcUdk?=
 =?utf-8?B?aHR3NlVodVEvcjU5bXA1WVhYYm1YenE2RDBsU3FLTjllNitQK1lCcWxhbU9R?=
 =?utf-8?B?Q20zZk5YWFA5cGRSdDR2R2pveUpNUFJqWnlGNkIzRkVjTjY0WnVzU2orUVg1?=
 =?utf-8?B?Qy9OZG1zR2wzNmhyOWVraHdkR1hPTDN1amV5cXIwc2liQzRud0M4aEZpVFVQ?=
 =?utf-8?B?S0p2UVJia3pKUU1oK0M4QWpsQ01JT1NkQUJzaldyQ1NhVlhOVlNoSG5CZmJ5?=
 =?utf-8?B?YkxtRjJrMXBOejZtSmgyY1FpcTNRZHpudllLcVZoOUc1WTIwb1JHRGdmaFNz?=
 =?utf-8?B?eGF2TU1OWkdjaEFRZmxYWEQ2R3BvcGNDN3ViR3pQK2Zxa3BQc3pKYjM3d1NF?=
 =?utf-8?B?TWpudlNaWkZDRHRXRDJFa2hnYzNqMnZMVUk3NXVaUWdqeDFMenhpMmJjdXlU?=
 =?utf-8?B?eVU3ZTkxZlJSK3VIc1hOMXNUN1g3d1I1WXJnT0tSY1lBTUc5Z0Vpb0toY0Rw?=
 =?utf-8?B?RW1tRUFHWWZjK1ErQ2grS1JacVlybzVhcFMvWkRoZmc2enYrWmZFMkhqN1Bu?=
 =?utf-8?B?QldIWEdxam1yTGt1aXZFZy9zTWlCMWhEdGZOK2NPWGZwQWtTNm1xSVA4UHZI?=
 =?utf-8?B?eGl1ZkZwODZxM1NxekFUelB4UmhKQlBHNFI3NVJ3OEVKcUlpek14UEF0dkM2?=
 =?utf-8?B?TWh1QXNwamo2VDVIQ2QzQWE2c3dsaEpIZkV2Y2EzY0huc2dPZVVKUXhDcTN1?=
 =?utf-8?B?dStvV1VEbEk5VzArYk50VmExTG42d1JsQTV6V1J0Z3JZaVYyQWpSbEdwcmFJ?=
 =?utf-8?B?OFVPRmtWd2tIUVRETVVxUjIvRW9JQWNpendOL0YzSUZYT296dEw5ajM1c3pv?=
 =?utf-8?B?QVBwMDVPbExTb3JXZklIbU56SVRDQ2h2b1RyTmJ4WFJUSXpjdFlHVklEUTY2?=
 =?utf-8?B?UGRHc1JyUmV4K2VocWR5SHh5cHY5MFU0c3ducFIwMGRGMlZscjJJYnRxNHFY?=
 =?utf-8?B?WUVHMlhZWmVWTjdZdWlkNEpvU2FINkNoT0drN3d1eTQ5azZzY3dWc0thMGl1?=
 =?utf-8?B?MmRCUFFCaW1VNmJlS0tsbm9LWnlSMllsT2RzbGpENnRqMGlLU2xlY0NWVUx3?=
 =?utf-8?B?eXpncmx2M1dTaEhUUU4wQTA2aEx4Mi9TTk5GTzQ5SXZvNkNDL3ZscytxZDZP?=
 =?utf-8?B?OTlsS1EvS0JHSXA4dnhEZXZnVEg3MHJXT0VXSjRNTUtYZ2pnSUIzUjFPaytP?=
 =?utf-8?B?MjExWUtYcGE3RlEzMVcveEoxbVc1Nm9lWGcvWkFpa1VHV3ZiUldIUFRGS3M2?=
 =?utf-8?B?VndXbFZWQy9pNm5mRjZzUW1JOFlQb1FMT0k0NU51VlJYeFowMHg3ZkZFMU9h?=
 =?utf-8?B?RTFtUkNPQ3M2TEtvdVc1TkRxN3EzbTBRdVdieVk2cCs1eDFMc3VTVlBuUytp?=
 =?utf-8?B?OW9WWWhwaFZlb2I5Q2FnYzBLTDYyTlNJR3EzVUNNNzk0YzQwTmZ1cGpYR0Zv?=
 =?utf-8?B?bm9OWm5NeXBMa21mMUZ0cWU0ZFVzUXg3a2hoZEt4NXZuQ1NBa04xVVJYR1hl?=
 =?utf-8?B?Q2VNMlFKa2hWYmhVMHhJOWZFamdGV1ozYklkSGx2bkliTEg1aVluaGZ2b3Mw?=
 =?utf-8?Q?uJHmCJ2/neLeJGwC92?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KlZcb+Y0QbDmPuSUgEdZ5URPtXtf+vh2wZszDpqgysUjqt5iMpLaixUlnOHJrym6hZbT3lB7nxp+SE/9pvZtmfxsBfDjIM/ajUD2q9p4dgxOeNi56H7elPsc3oPOtTUSe50TR1DZVMdO303hc/RanpzQGq4Zsd6wD4B/OkLn9sdK7C4akSLB8o9p6QJqVbsjoWfNAdBoRNoTfVXFtcW/b9RZFEVuaWI/LeC6rxL7XRKL6rbs6VSmLGWSuX6hTuayc2A1z4xAcJPqJEuIIycsUoSzG5iUUf749ulxIzgC/dqVmrhln1odp3fNW1CaIzpT0KYAeTRxb7QaCUaF4YvQmQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 768ecdd5-fecc-47cb-f173-08ded0f02135
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 06:24:50.0494 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PRQOO3FqMgsSJRqPzE7SCP11ugk7kuOEf+TWdZHQYWypbCrzdBhcVIVav1LtLj3dfiBIQ+0r7Wtc5K/R62KjhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6972
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:from_mime];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 923576B476A

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR2FyZywgTmVtZXNhDQo+
IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjMsIDIwMjYgMTE6MTggQU0NCj4gVG86ICdKb3VuaSBIw7Zn
YW5kZXInIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBIb2dh
bmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogUkU6IFtQ
QVRDSCB2Ml0gZHJtL2k5MTUvcHNyOiBGb3JjZSBmYXN0c2V0IG9uIGRlYnVnZnMgd3JpdGUgZm9y
IGVhY2gNCj4gY29ubmVjdG9yIHN1cHBvcnRpbmcgUFNSDQo+IA0KPiANCj4gDQo+ID4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3Vu
Y2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+ID4gSm91bmkgSMO2Z2Fu
ZGVyDQo+ID4gU2VudDogVGh1cnNkYXksIEp1bmUgMTgsIDIwMjYgMzoyMiBQTQ0KPiA+IFRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+ID4gU3ViamVjdDogW1BBVENIIHYyXSBkcm0vaTkxNS9wc3I6IEZvcmNlIGZhc3RzZXQgb24g
ZGVidWdmcyB3cml0ZSBmb3INCj4gPiBlYWNoIGNvbm5lY3RvciBzdXBwb3J0aW5nIFBTUg0KPiA+
DQo+ID4gQ3VycmVudGx5IGludGVsX3Bzcl9mYXN0X3NldF9mb3JjZSBpcyBmb3JjaW5nIGZhc3Rz
ZXQgb25seSBmb3IgZURQIGNvbm5lY3RvcnMuDQo+ID4gUGFuZWwgUmVwbGF5IGlzIHN1cHBvcnRl
ZCBvbiBEUCBhcyB3ZWxsIGFuZCB3cml0aW5nIGk5MTVfZWRwX3Bzcl9kZWJ1Zw0KPiA+IGlzIHNl
dHRpbmcgZGVidWcgcGFyYW1ldGVycyBmb3IgZWFjaCBEUCB0cmFuc2NvZGVyIChzdHJ1Y3QNCj4g
aW50ZWxfZHA6cHNyOmRlYnVnKS4NCj4gPiBGb3JjZSBmYXN0c2V0IGZvciBlYWNoIGNvbm5lY3Rv
ciBzdXBwb3J0aW5nIFBTUiBvciBQYW5lbCBSZXBsYXkuIFdoaWxlDQo+ID4gbW9kaWZ5aW5nIHRo
ZSBjb2RlIGFsc28gc3dpdGNoIHRvIGZvcl9lYWNoX2ludGVsX2Nvbm5lY3Rvcl9pdGVyLg0KPiA+
DQo+ID4gdjI6DQo+ID4gICAtIHVzZSBmb3JfZWFjaF9pbnRlbF9jb25uZWN0b3JfaXRlcg0KPiA+
ICAgLSB1cGRhdGUgYW5kIGltcHJvdmUgY29tbWl0IG1lc3NhZ2UNCj4gPg0KPiA+IFNpZ25lZC1v
ZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgOSArKysr
Ky0tLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ID4gaW5kZXggOTExYWZiOWNiMjRlMy4uNjIyZWRmYjZhN2ZiMiAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC0zMzc1LDcgKzMz
NzUsNyBAQCBzdGF0aWMgaW50IGludGVsX3Bzcl9mYXN0c2V0X2ZvcmNlKHN0cnVjdA0KPiA+IGlu
dGVsX2Rpc3BsYXkNCj4gPiAqZGlzcGxheSkNCj4gPiAgCXN0cnVjdCBkcm1fY29ubmVjdG9yX2xp
c3RfaXRlciBjb25uX2l0ZXI7DQo+ID4gIAlzdHJ1Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHgg
Y3R4Ow0KPiA+ICAJc3RydWN0IGRybV9hdG9taWNfY29tbWl0ICpzdGF0ZTsNCj4gPiAtCXN0cnVj
dCBkcm1fY29ubmVjdG9yICpjb25uOw0KPiA+ICsJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29u
bmVjdG9yOw0KPiA+ICAJaW50IGVyciA9IDA7DQo+ID4NCj4gPiAgCXN0YXRlID0gZHJtX2F0b21p
Y19jb21taXRfYWxsb2MoZGlzcGxheS0+ZHJtKTsNCj4gPiBAQCAtMzM4OSwxNCArMzM4OSwxNSBA
QCBzdGF0aWMgaW50IGludGVsX3Bzcl9mYXN0c2V0X2ZvcmNlKHN0cnVjdA0KPiA+IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkpDQo+ID4NCj4gPiAgcmV0cnk6DQo+ID4gIAlkcm1fY29ubmVjdG9yX2xp
c3RfaXRlcl9iZWdpbihkaXNwbGF5LT5kcm0sICZjb25uX2l0ZXIpOw0KPiA+IC0JZHJtX2Zvcl9l
YWNoX2Nvbm5lY3Rvcl9pdGVyKGNvbm4sICZjb25uX2l0ZXIpIHsNCj4gPiArCWZvcl9lYWNoX2lu
dGVsX2Nvbm5lY3Rvcl9pdGVyKGNvbm5lY3RvciwgJmNvbm5faXRlcikgew0KPiA+ICAJCXN0cnVj
dCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlOw0KPiA+ICAJCXN0cnVjdCBkcm1fY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZTsNCj4gPg0KPiA+IC0JCWlmIChjb25uLT5jb25uZWN0b3JfdHlw
ZSAhPSBEUk1fTU9ERV9DT05ORUNUT1JfZURQKQ0KPiA+ICsJCWlmICghY29ubmVjdG9yLT5kcC5w
c3JfY2Fwcy5zdXBwb3J0ICYmDQo+ID4gKwkJICAgICFjb25uZWN0b3ItPmRwLnBhbmVsX3JlcGxh
eV9jYXBzLnN1cHBvcnQpDQo+ID4gIAkJCWNvbnRpbnVlOw0KPiA+DQo+ID4gLQkJY29ubl9zdGF0
ZSA9IGRybV9hdG9taWNfZ2V0X2Nvbm5lY3Rvcl9zdGF0ZShzdGF0ZSwgY29ubik7DQo+ID4gKwkJ
Y29ubl9zdGF0ZSA9IGRybV9hdG9taWNfZ2V0X2Nvbm5lY3Rvcl9zdGF0ZShzdGF0ZSwNCj4gPiAm
Y29ubmVjdG9yLT5iYXNlKTsNCj4gPiAgCQlpZiAoSVNfRVJSKGNvbm5fc3RhdGUpKSB7DQo+ID4g
IAkJCWVyciA9IFBUUl9FUlIoY29ubl9zdGF0ZSk7DQo+ID4gIAkJCWJyZWFrOw0KPiA+IC0tDQo+
IExHVE0sDQo+IFJldmlld2VkLWJ5OiBOZW1lc2EgR2FyZyA8bmVtZXNhLmdhcmdAaW50ZWwuY29t
Pg0KPiANCkp1c3QgYSB0aG91Z2h0IHNob3VsZCB3ZSBhZGQgYSBsaW5rIHRyYWluaW5nIGNoZWNr
IGJlZm9yZSBmYXN0c2V0IHRvIGVuc3VyZSB0aGUgbGluayBpcyBlc3RhYmxpc2hlZC4NCg0KPiA+
IDIuNDMuMA0KDQo=
