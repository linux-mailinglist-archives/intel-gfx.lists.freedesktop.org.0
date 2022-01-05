Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD99485744
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 18:30:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B87810F561;
	Wed,  5 Jan 2022 17:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4D8910F561
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641403833; x=1672939833;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=6Vd+NDLhcRNqWDiQcjwZz2EIbxoZCserAVxYlM8lGOU=;
 b=j2VNuvRQXHIN7oWipJLOnQYsZJkmUIVqp/mYKniELXBgRS8VGr0Ahebk
 sCyW7LkrXrBz2KXLRB6kMW9qSdbR8XTtm1QMrOJV7Ppn0HHurSF5q1/Ri
 XM4a7CWW+8UH8cCMVjcMkFZSyWUpZUyjSUl6a650b46BBydobUX+5EE78
 eOBU1qghjXFGikanBBQuWWASzNwkMeczv1BOjYyhHeevtCaaj63/0bbmS
 NF7Tq65Cw+5Q9kYUSBh18IQW3Snj8J/vNdvZ1JMwYN3rUkNDPqf4NKynw
 Pa03bIqgMFhDHmprKJCY4T+qiUwnFuu3v4+kON+0eqZZorGxef7/FNOco Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="229308034"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="229308034"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 09:30:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="689074576"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2022 09:30:33 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 5 Jan 2022 09:30:32 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 5 Jan 2022 09:30:32 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 5 Jan 2022 09:30:32 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 5 Jan 2022 09:30:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S5PONOcdZhGZmjkzIY9w/Ru9XvWjotJBdmexktVJdZe4gs8odIjcPcoYyfjmD2FSyQHL2Odad/APj0nmv9xuXf1kW2eDDijaZY/vGlmKqLt4PSaIJFNsfI7wKO0vtFj+IjtWIlF0Rtn0dGpp4wpjqnA0xfdfca+W9JIWiwG1+F4WXHd5puLNRnn39dY25cPnRvueJMpBk9uGzr2o73cpZiJlbXHcC2H5sJ4EVsuuVzi8pfksJsKxBE1PtHdLeMgFIN7Qu3hicDKl2bb1XqtIRT8hHXB3O7Jx5geF76Y3qUGbLb2lAfMUsBKkzAZp2MNBXc+jbAaXMXwjg8CP0KMeZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Vd+NDLhcRNqWDiQcjwZz2EIbxoZCserAVxYlM8lGOU=;
 b=XWUSKCA1ME9mlQJyl9qgWJ25Ajq+BsmSIaDfykNeEL2d0elgkO7tWwI6RVe2fCcu/TEMgOQQh1F1d5c4qnP0XsHvLkAC7KkixVCUojI7jJ+b+HrS2k6XpOIIVMyBZbS9g2IUlG0GiJnJmXYdin9IPYVeclFdMKQmToUnlKpLDklCwgiv4Q1cpo/M4/213eFt/z1ldxPJ7mmryGZtxE2yl/xyEMFt7XbL3fb/RcDr6uRHCp2KvK/klC7PKoJQyCO8O8e4P2F3ylevaumTZq2Ej6Adn+shRXvEHjmxq+o5ix8KcjoLGuP7qTx+hLeZGDKrcJF1m9irw5zmLQGGdCiOtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3786.namprd11.prod.outlook.com (2603:10b6:5:142::33)
 by DM6PR11MB2905.namprd11.prod.outlook.com (2603:10b6:5:62::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.15; Wed, 5 Jan
 2022 17:30:29 +0000
Received: from DM6PR11MB3786.namprd11.prod.outlook.com
 ([fe80::1456:4aad:3dcc:79fe]) by DM6PR11MB3786.namprd11.prod.outlook.com
 ([fe80::1456:4aad:3dcc:79fe%3]) with mapi id 15.20.4844.016; Wed, 5 Jan 2022
 17:30:29 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
Thread-Index: AQHX3/Ueewn73SRF5061jq6P87GJy6wn02QAgABnhACAGGKigIABIMoAgAAYIICAEU9sgIABzo2A
Date: Wed, 5 Jan 2022 17:30:29 +0000
Message-ID: <0267e249fbc650069e4c6d29438ce32289d535cb.camel@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-8-alan.previn.teres.alexis@intel.com>
 <20211208002215.GA17960@jons-linux-dev-box>
 <bf9b1af14a700959ca58e615d7d15cb9300ab56f.camel@intel.com>
 <fb0f6eace4bd1c243544a0804ffa9fa5b16159a6.camel@intel.com>
 <c0fa7466-ecdc-4768-0584-6937e7f0d71a@linux.intel.com>
 <baaf6bcf51c487817392142913f31655138b6596.camel@intel.com>
 <8257f42f-7bbd-c033-28f1-f43f21cc81af@linux.intel.com>
In-Reply-To: <8257f42f-7bbd-c033-28f1-f43f21cc81af@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 96edee0c-13c1-4c06-3843-08d9d07111d7
x-ms-traffictypediagnostic: DM6PR11MB2905:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB290591BDD01A4B7A03FB14508A4B9@DM6PR11MB2905.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L5E5On/MGSgLFiTUquOPN3/5/u2oDJthwSndmlgVGNVXACyjFKhxJ6WVQInuil6r7+TgMRxVy72MUIt50DSkam63PuEfgMmIlgJmEN0bIaHmFwMYUxnPYGZp8lZkZzGYiEI4y4N1UMzgFhT3dS+NQbADqQG/GoPPSu1Pe4hHG5eXGmfMB0RLfxwzgy6rk3NNfv6ax5nHN+Oa4qvbWhczuj2SHYPyhNf7elS9g54QhPuHRmsmYSie7WqDT8O739tct8U2Qomd58dYWkefwNDzjmU9VC9bbTfCHfxMC57zcTFxNFuKsxrfzIC9yW4R0L1GER25V3M/o1R7eVs3tqZXVSMF6fjCeqjZiQH5iJNLgfkGLTfxWX+jArqaeLR4A3Sx+tc9qlq/OzPEr5ys0ax8fazXK16KD/+qtyrt5eLKBRx3I4guUE7+ZKSRq6OvBhqJBR8WcGvREwGDPAxctIi9VbeOehSwkOzH4nCQPBy+IdangOfKvux3awF3f+OiO5upGosjhlC/WQNQUQPY/7cGVbxizbJdUKZQx4SDtIzMG9LjD7r8kfG8yfoCsXv4zOW7FCgmTmzX6OjB8Y9xHxI78cEKw+5fOJsghm8Vy42V47Ok7uOM7CLkil+EpSU66MnJ+++cHWBIXTSkL73tJbeqGXrtOBk3IbJKzQAYJ76/ijaiLkGDevpYwVpysWjqtbJJ2nkRDOputs/ZloH6wcjfDA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3786.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(6486002)(66946007)(36756003)(2616005)(38070700005)(186003)(26005)(8936002)(71200400001)(6512007)(122000001)(5660300002)(76116006)(6506007)(4326008)(83380400001)(91956017)(8676002)(508600001)(66446008)(110136005)(316002)(2906002)(64756008)(66556008)(86362001)(66476007)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y0xaR3dFSHJnMWtHMktuUFpVdThyYjFYd1JVTDhZYldIV1dEZm9ObGtDRHRp?=
 =?utf-8?B?MnJsT3JlYWtQL2hJL0VBRE9FMm9mWVhpOWFEb24rZ2lVcGJmOEpHc3dnY0hJ?=
 =?utf-8?B?MXg3T0ZkQjFhdlJnU281aDNITFFaQXhZdGR1b1ZZaE1FdExIdmpCNi9PY1ZO?=
 =?utf-8?B?RmpDZXB6RmJRUHdubGZNbHExblFSc2Q3NWx4SkJCY3FmQ0trWFpxWHZrMFdS?=
 =?utf-8?B?cFZ4enZ4bmFzY2NhaGd6cDdza040ZUZYdFExcUxmNUw5TkNxbTNDR20yOENk?=
 =?utf-8?B?WFJtOENyMlRwNk4zMUZ2OUdTWWZNZ29idHYrdVRlUFpON3Y2UHlDcDE1NWo2?=
 =?utf-8?B?Vk4xZUQ1SjE0cUlIeDZ1RUZLNUx6RHR2cHlLeXBUNzdjS01DaHZSWDZaTURP?=
 =?utf-8?B?OU0wVjdySVJLRGl3R1pSL05xenJDZ0tzelZXK1VXU01vTjVQRzhpZ1FYdjV4?=
 =?utf-8?B?NlhLVVJSZjMrdFR2Rkw2T0xXbzh1c2VmWElLSHRSTm1TSTdyMVg3eE8zdUh0?=
 =?utf-8?B?VllFbXc4d29hNUhIK3prenU0UG82aE1HbExmL1JMSGtFNVcwcDE2THUwYW5z?=
 =?utf-8?B?bUZ6WHZJOWo4cnNodVcvem5XaEcvM1RocVJvdGFvR3hSMWZ6bmdQWTZNb3lM?=
 =?utf-8?B?cEt3cjJreXpXV0ZYdjJWZmM3L0VaQlJkYit4VmtRSjM5ZlBQT0NWR3BUcjVo?=
 =?utf-8?B?RTRQTk5pS1VJbVVKdGhkMkp3b2dRS3pkeG5uK210U3ZHVjNuNjdWMjc0RTVq?=
 =?utf-8?B?bWVLK2N2bVpEemtWREZLQk94bWtiN0tZZlBaKzF2NERGYkxtU3FnNDhqTXF6?=
 =?utf-8?B?d3d4b1lBS1dlVFFINmR5dUswbStYTUE2MmFETXE0WEZOaXVMaDkzSVpYakFP?=
 =?utf-8?B?cU9HZUp1WjBoRkd6Y2J3YTNWRmV5akQyamx0S0NrL1R3Y1g3cngvMTJSbTV4?=
 =?utf-8?B?UW5lS1Q0aDlBUHhOZXQxSkZxRVg3UHZjS2ZxVWJSL0MrVW90S2lpK3RYaTAx?=
 =?utf-8?B?dWVkWjFVaHk4bXNiS25RWWNtYlVZNlhRUWp5RVBuenYzTkxqUEQ4cXVwRElY?=
 =?utf-8?B?dHA4Y1JCRWhEMEx2K1lJbUZ3dE05R3BrTmk4N29HaFNWeDBQRHNIWGppdFVk?=
 =?utf-8?B?NFhISG84Vm5PeXNZVWR1TnBPOGovVG1ZeGUxM0pINDZlVklnUlpSTE95dEk2?=
 =?utf-8?B?SVRBcWk1b0k2RUUralF4UUZBMTB1Y2FNWU83aW5VQllBM1R1NEpBMWRGbkJQ?=
 =?utf-8?B?VzFGVVZDVGlhSC8rcFhQc0c4YXpBZW8za0RBVkUrNWNBTHJwbDVLSXA0QUdr?=
 =?utf-8?B?SzJ4VmV6NjhrSFgxNTBZQjExc1psVVNYQ1JxN1N5dkRVNFhlQndMRFB6Sys5?=
 =?utf-8?B?TnpSUjczUUcyUE5Ic2EvRmgxMGJiUXhWS2Q1Q1JJRnFiZiszYTdrZlo3N1pW?=
 =?utf-8?B?WXphWERiejIvd0VIb2FYN3d1dkM4NlBnekNCUTZnZmFDczNia0JrbDdJWWZS?=
 =?utf-8?B?TTRrRmN5OTVoTGZ6dFBFbGk2Q0ZqWXR3b09HWlhyYVYzRUdDVW4waXVoM3pB?=
 =?utf-8?B?VHpaTGMrVkxMVFpjOHBPbnYxNDF3MG5uL0t6UFYvN3RHQTBORnU5anNkOEhJ?=
 =?utf-8?B?WG5TQTFPVGp0K1ppZWVNYWk1MUVTaGkwVkhuRjRMQ25QbVN5UEwvNmRaZk9I?=
 =?utf-8?B?M0hJZW1NdHNwUzdLQjc0dWZIWjA5VE92akNrNzEvdytZQUF0L0xTbmMwMC9F?=
 =?utf-8?B?dGNSNlN4WlhudGc4aEZrdE5zdVFnM2dOb1JLTDRCT3hkYmlHdWZhQVlXQXdI?=
 =?utf-8?B?MDBXMU5aM2xUc01FUzIvYWpaT2R5OVA2eWI3NEFSNGJVVnQrYlNkb2g2RzNW?=
 =?utf-8?B?WkVhbkFwUmNHOFhuSUtCRDNyNWpOenJCMk5IeDdZbWVadUllaTBoUnJiVlJV?=
 =?utf-8?B?UkRVTnk2c3hjRmRod0d3Nk9XM2Z0UFlOL1kvWW5vSDZnTGNFeTNFeHlMM0dQ?=
 =?utf-8?B?Y0dlZ1V1MWNiVnVlbTN4RS9pMXJGMlFrUHp0WGhGekxSSmh6a1BiSjdiakx2?=
 =?utf-8?B?aDQ1bXB6d2h6amFOZ25nZDZJY3dPZHFYVHIzY1RzYWFIdkx0bDNqRE1xRGty?=
 =?utf-8?B?SmdCTUhJQ0huU3Q2TGdBS2JpcTBGSEh0R1dYdWg4YkFxTTJMY0ZoRnlSUXI2?=
 =?utf-8?B?YTZaZm16dytaRkRiTFJ1QVcyaWZOTzgvSFVZVXIzRSsyc2hWekpvd3k1Rk51?=
 =?utf-8?B?L0doMDR3KzZXNzRGYXNyRG9lSVBNcmltdXZYOGc2bEc3d0J5cXpPTmNxZGVy?=
 =?utf-8?B?Y2hhbk1vdlVGNDA0cXc1dCtTNENjQVkwZkJyNWZiVy9RaUd3QWdtUT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B80DEE1FAC2B7F4991A375E3E0E719B0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3786.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96edee0c-13c1-4c06-3843-08d9d07111d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2022 17:30:29.7897 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7pI+nBNQv4UykVGhACcfFatdfudiWh3W7wS/Qb+wbgd3cnwdaMkZmFQRldOmkM/8Q0fc0Q8qyosal9xCN/fz+/SfJRYfk9kWTMMyykblGVep0W/BwZV+indQVDwyy9zL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2905
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQpPbiBUdWUsIDIwMjItMDEtMDQgYXQgMTM6NTYgKzAwMDAsIFR2cnRrbyBVcnN1bGluIHdyb3Rl
Og0KPiANCj4gPiBUaGUgZmxvdyBvZiBldmVudHMgYXJlIGFzIGJlbG93Og0KPiA+IA0KPiA+IDEu
IGd1YyBzZW5kcyBub3RpZmljYXRpb24gdGhhdCBhbiBlcnJvciBjYXB0dXJlIHdhcyBkb25lIGFu
ZCByZWFkeSB0byB0YWtlLg0KPiA+IAktIGF0IHRoaXMgcG9pbnQgd2UgY29weSB0aGUgZ3VjIGVy
cm9yIGNhcHR1cmVkIGR1bXAgaW50byBhbiBpbnRlcmltIHN0b3JlDQo+ID4gCSAgKGxhcmdlciBi
dWZmZXIgdGhhdCBjYW4gaG9sZCBtdWx0aXBsZSBjYXB0dXJlcykuDQo+ID4gMi4gZ3VjIHNlbmRz
IG5vdGlmaWNhdGlvbiB0aGF0IGEgY29udGV4dCB3YXMgcmVzZXQgKGFmdGVyIHRoZSBwcmlvcikN
Cj4gPiAJLSB0aGlzIHRyaWdnZXJzIGEgY2FsbCB0byBpOTE1X2dwdV9jb3JlZHVtcCB3aXRoIHRo
ZSBjb3JyZXNwb25kaW5nIGVuZ2luZS1tYXNrDQo+ID4gICAgICAgICAgICBmcm9tIHRoZSBjb250
ZXh0IHRoYXQgd2FzIHJlc2V0DQo+ID4gCS0gaTkxNV9ncHVfY29yZWR1bXAgcHJvY2VlZHMgdG8g
Z2F0aGVyIGVudGlyZSBncHUgc3RhdGUgaW5jbHVkaW5nIGRyaXZlciBzdGF0ZSwNCj4gPiAgICAg
ICAgICAgIGdsb2JhbCBncHUgc3RhdGUsIGVuZ2luZSBzdGF0ZSwgY29udGV4dCB2bWFzIGFuZCBh
bHNvIGVuZ2luZSByZWdpc3RlcnMuIEZvciB0aGUNCj4gPiAgICAgICAgICAgIGVuZ2luZSByZWdp
c3RlcnMgbm93IGNhbGwgaW50byB0aGUgZ3VjX2NhcHR1cmUgY29kZSB3aGljaCBtZXJlbHkgbmVl
ZHMgdG8gdmVyaWZ5DQo+ID4gCSAgdGhhdCBHdUMgaGFkIGFscmVhZHkgZG9uZSBhIHN0ZXAgMSBh
bmQgd2UgaGF2ZSBkYXRhIHJlYWR5IHRvIGJlIHBhcnNlZC4NCj4gDQo+IFdoYXQgYWJvdXQgdGhl
IHRpbWUgYmV0d2VlbiB0aGUgYWN0dWFsIHJlc2V0IGFuZCByZWNlaXZpbmcgdGhlIGNvbnRleHQg
DQo+IHJlc2V0IG5vdGlmaWNhdGlvbj8gTGF0dGVyIHdpbGwgY29udGFpbiBpbnRlbF9jb250ZXh0
LT5ndWNfaWQgLSBjYW4gdGhhdCANCj4gYmUgcmUtYXNzaWduZWQgb3IgInJldGlyZWQiIGluIGJl
dHdlZW4gdGhlIHR3byBhbmQgc28gY2F1c2UgcHJvYmxlbXMgZm9yIA0KPiBtYXRjaGluZyB0aGUg
Y29ycmVjdCAob3IgYW55KSB2bWFzPw0KPiANCk5vdCBpdCBjYW5ub3QgYmVjYXVzZSBpdHMgb25s
eSBhZnRlciB0aGUgY29udGV4dCByZXNldCBub3RpZmljYXRpb24gdGhhdCBpOTE1IHN0YXJ0cw0K
dGFraW5nIGFjdGlvbiBhZ2FpbnN0IHRoYXQgY290bmV4dCAtIGFuZCBldmVuIHRoYXQgaGFwcGVu
cyBhZnRlciB0aGUgaTkxNV9ncHVfY29kZWR1bXAgKGVuZ2luZS1tYXNrLW9mLWNvbnRleHQpIGhh
cHBlbnMuDQpUaGF0J3Mgd2hhdCBpJ3ZlIG9ic2VydmVkIGluIHRoZSBjb2RlIGZsb3cuDQoNCj4g
UmVnYXJkcywNCj4gDQo+IFR2cnRrbw0K
