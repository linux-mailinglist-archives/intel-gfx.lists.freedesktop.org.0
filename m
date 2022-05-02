Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E13551779D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 21:56:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 187E610EEFA;
	Mon,  2 May 2022 19:56:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE8B010EEFA
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 19:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651521400; x=1683057400;
 h=from:to:cc:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=Xi5O+A2xjk0810cbDV6xsZGC/uuhwEcPGOFRT6dYDpw=;
 b=EAN0dciMx+4gGBsPUbWKSwFmzXCVwqxOYUiwWKEZTD7aR/ciGOJcKY5G
 0pYsDcavDc3UqoG8JXw7eqODTv4yYels5UlHK7hSxvkx7wflUJfYt3e1x
 3KLweJ87LGYeCFzTiJCHdLhNFYbFENzCaRly1DepeA6buZwBV1nJn1L5j
 7SUTKl2UMYiBj71OUJRkxLf8mCp9kww8f7lNW+lUfMNTZnhdqHOYOrigw
 RbIqKqeHXcqaUaWqOnQld+gjcRCP8l4D/ApcdVp9zzt9ipbmKtCHW6wsR
 /PC3h6Ma01YAtRrlFd9G1/RIO5cmDyxPIwtSys1FOmZUJl5NaQKqa2fUs A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="247222685"
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="247222685"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 12:56:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="583877666"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 02 May 2022 12:56:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 2 May 2022 12:56:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 2 May 2022 12:56:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 2 May 2022 12:56:39 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 2 May 2022 12:56:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WAEPEId6OHqU5QdLVal7SYz64GFF83EWwp+HiV18zFpk0jvUSGo7fQoL1kZqMctPEqxaBoQpbGuIVle6dkXPb/UH8CoOfPRbbkb89cweYTg5RDN4ZQKUkZWbRQXXC7w+/W1WfR2e/cGb+x07DmHY9mnioucLM4Fp6z7PrFSfUP8QLdw5w8sFnjO5VQU5Mc7OdgzQJYXFTSBCtGY1UUCLlw6JJvLPwVJlSidxcrw9iu9ibAll4QHcySNmNGDLzeQy6J7nHIY+zOGQnpQWIV68Th6Oq2PBEwLsr1bCJxYB20U16DlLggGLPMupW8R+rn3Q5tdjClcsiUPtHE1QEveSEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xi5O+A2xjk0810cbDV6xsZGC/uuhwEcPGOFRT6dYDpw=;
 b=n7VzQvJIZkeWfuOSjCqGjU82ckGUS58QPzGgtUNsLOabM0has8AQZSjMe+AnK8jOfK7BYH8V6uRRsmUDupA44JIXRggt+jEPnJL9SxJHKuhdeBoFDblMBdCWe8a9AuMzx+D/KkO1VAZ4LrmN3Ga0DzowIII4P2gk8izl6YDG2cGz7aRMTifh+DhobxpD5anD6fLlSVEb9E91x4mAiOzv8WFEeXZWK1B6yoXO55hgQjag/7xcFqN3VhqZQONztTR2DtNeGTZt7N1QuK4nlZXooIONRT7MtYv4Uibp3qYW/+6BtOgO8sEpXpI7S0Xwb95SY6OitNkjTmWX5EKrv1KNtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by BN6PR11MB4164.namprd11.prod.outlook.com (2603:10b6:405:82::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.19; Mon, 2 May
 2022 19:56:35 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::ec95:b7c:857b:120c]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::ec95:b7c:857b:120c%5]) with mapi id 15.20.5206.014; Mon, 2 May 2022
 19:56:35 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Thread-Topic: i915 Updates:  DG2 DMC v2.06
Thread-Index: AQHYXl66yLiLOrvIGk+w27AhZn852g==
Date: Mon, 2 May 2022 19:56:35 +0000
Message-ID: <8593a140a0ee01998d28cdafa5a10aa5f8e44380.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.4 (3.42.4-2.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bebaea4c-c2f4-45e8-916e-08da2c75dd02
x-ms-traffictypediagnostic: BN6PR11MB4164:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN6PR11MB4164F13C3C5D7E528EEDFE9AC7C19@BN6PR11MB4164.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vxaYxLnlu4eCpQcKCnApDROKy573zvE7rsiZpRD/D/kTS2sYaXBn8T5zNyiPj5d45GR8Jgr3LfPX4UznnVbPi/QDPTA1TcM9LLfk12XGt3s+Sp/2QMpf1VKTazLKKloXQ8ZESq85lbRgvx//qbvofDM6XTkUtFomwEJViPn1MuAW/6qPN1qN0kE55B8oXr+HPA55XfaZ3m14h5V4C4FpMa7uBiGNOxijaw2SrJY80icGoWyRvlOJJHGu2WMpQ+hPVr/11AKGPP7iOW3x8G/HMhPD0w1QitiiGrqL3u5r2XfslRvvA/ISdRmwOvC1DML5DnbgcypgZDxYfP0eRRDilMU0RERawv2y6D1L3nqI79o5vbxBeUL/VnSH188MaC0ojiSyvJAdjCdGfdmmnvfFHMnxnSkAITLCfLvX3G7MRP/jpuU85q73VQc7BTjA5YqI3hahZ6XJ8wkyfSs8haBTYVPgt1vJKZIXw8cgK/mXPeeMgxSAa+1YgXd7DqR6BQOIJaIR0iGCiqcuGzyCaNiuq7o8AODGgKFiqgSJX42wDbz3kzr4UqvpN5I2L8dYwS+4XPKJC9GnbV/97zkHD+uJmbbJGkjCkWrU72ECpbLuaFfS11ULvhwZ65YlpKrp5qaZRx8xg3F+uYvsaF90JkSg4qqv/qvr7BgnMaxsEUe2ZU/nFW/qOZ+kE4D5OKScMfgz1YIFsEKNyW0/e0rhWfwCMQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6486002)(36756003)(508600001)(66446008)(66476007)(66556008)(66946007)(8676002)(6916009)(64756008)(54906003)(71200400001)(4326008)(91956017)(76116006)(8936002)(4744005)(5660300002)(316002)(2616005)(186003)(6506007)(6512007)(2906002)(86362001)(38070700005)(82960400001)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WHhtcXV0TWtsOXdSTXZtM043TFVSUEZHQUU4Q3lXSHBiVHZ3MGxuWlVZd3B1?=
 =?utf-8?B?SDF5bHRyZU5OelVOcVppZjU5U29ramFNVU5QUjcwTkxaM3ZJYUJMOWtnZnFS?=
 =?utf-8?B?ekkzK3BkYktidTBMcTNPSkQ0Qk9HU2hvUUNtNDVKZG1JYzZ6RERjbXF5aW8z?=
 =?utf-8?B?cHZRMVVVd2dJL01ubTM2R1BYMnRXU2N0YXlFMUpkMllVTkdPamFnU1ZVcXAw?=
 =?utf-8?B?RWVXNnpaK1p3bzdnM3JHWjYvNkxDR2U1em9aNU9wR0FCQmlwWkJSelRUQ0dX?=
 =?utf-8?B?VnVtWk5IWE9IdHl3U29PM0w2TUJKckZoeDdDN3BzTEZsVHdHaEdUbGpvbUpN?=
 =?utf-8?B?RmNlZDFnbWVIVFdJeTN2YU9FV1laVnZFdHl6L0JBVjNKNm40YkoyYUtuYzBB?=
 =?utf-8?B?eVRnUDcvelErZytWWXl3OWFCK1R5TlFEeU1SUTJCNDJwR1ZMMWJkckpkYTRD?=
 =?utf-8?B?aHE4NysxUTR3OHM4ejExWU9vNDRJSFcrWFJXd2VNNmM1Zk1IOTloOVhZa0ha?=
 =?utf-8?B?VWlHbVdmN25YVE1Wd1A3VVVOaUk3aURmQ2c2M3ZLWWdzTFVUcVFQQWNhc3hT?=
 =?utf-8?B?VElQRTB4V01UTUlKZEk0MVBOVlpmNWNrOGZnSXNKZi9ac2UzS08zSTVXam1W?=
 =?utf-8?B?TzYzMk1ETHQ2M1NxN3VxYm5sVUwyZmhJWWtCbmxaQjZPY25mdkVlbDJ6cHNr?=
 =?utf-8?B?aE5iWFdWL0xoekdhS3lXL2pKY0FacGRHaVp1SFBxamNuejZxZ1pHVVIwSzhW?=
 =?utf-8?B?aFJ2M0Z0SEdtMXpLSWpXM0VlaFJqRGtVV1lFZE5vbDcrWFhHMUVFYkpsSHlB?=
 =?utf-8?B?UjlRZC8zb1RLbXQ1MU5CTWQzQ1R3eGQ3SExIZ1BkTyt1Z1pYODRnNDhRWXZT?=
 =?utf-8?B?ZzlqRTNjcGFmVGZqUXVuT0lldFR4eXhGUThqbVRLbWNGQy9JNXROMjY5dkxm?=
 =?utf-8?B?U2pjQTdteVQydjQ3ZTR0b3R0cEljQlJQdnVuRWZtSW9tek14STRYNlRMaHhU?=
 =?utf-8?B?cFFKWlFSa0ZoL2dyUm9wU0U0cmloV21icDlReGJMRUlJZFI3ZmwxdzVhY3RN?=
 =?utf-8?B?a1NJK2xjNXByWWI3NitmZ0tmaTJ1Q21VeGoxc0kvdkFKYXErUGRIMTZWTTVh?=
 =?utf-8?B?aXZNbERRQTlaVzZUWU02QndCTnUrSmo1Y05jcy9nTmVGa2x3UUVKb3lMTEpa?=
 =?utf-8?B?cG13ckIycnBqRlhQMUxFOEM4SkVjdW5lTjAydE40MmZRM0RGR0c2RFFENDNk?=
 =?utf-8?B?VjlyZ0tRZmQ5ZnFoV3BLbXpGQ1JNYVdSQTZCNVFWTmpQdDFOM2cyU3Fua0tp?=
 =?utf-8?B?MnNiOVlUYzVQYzVyb3ZIbVFGOCtTcWhqRnVEaTVleUNNQzNsNVBOYVF0SlVU?=
 =?utf-8?B?YWc4eCtqVWZqUXRJbWg3U1NqdTQvNWNVZ1R5bGdTUzFDU1hKeHlST0lPcEF0?=
 =?utf-8?B?ZjhuK21SRTRvcnU2QUt4MFg0WmZOd1pZT0lhQklodXkydFJXcDVKMTdvNWlk?=
 =?utf-8?B?N3Q0dm1IK2xMZW9iR2twSTFTMng4ODBFNVc0ZTZIc2pCcjNuWklpYjl2eElL?=
 =?utf-8?B?UUVGSVBNT2hCcEpYdXJ5RHZvcXlha3VmVU5DNXhwZGVPbUkzK3VrZ3lRR1Z3?=
 =?utf-8?B?RnhDc1dEY0JKSmx0YUpTQkoxZHpoQUlGZUZVVnA0MWY2Wkw5aWQzenIrMDZD?=
 =?utf-8?B?cWlPWDRGZDlvMGh5SHkwa2QvYnd5ZTJ3dUwyZTJhNUt2OHMvRUs1QjE3aUhZ?=
 =?utf-8?B?ZjBzaW95SENTSXd4M3FLNVZ6WUJxcDJPZWJ4RFFNS0dFK2ZycTFuVCtiY3p6?=
 =?utf-8?B?RnhFelFrbHdvb3NORXNidlNUVGNFRkhlcDFRTkdpTVRuYlErMHBxZGEvNDVn?=
 =?utf-8?B?d0ZDU0JUOVV2ZGtLbkRHRDAzMHJCeXI5Z1haRjluSGpwRi94aHdhYkNTcUda?=
 =?utf-8?B?MHlyV253YlhSV3dzdnhxQmU0MVQyb1lLaXpCRmxwSmpLR09zVll5RnZLTGVo?=
 =?utf-8?B?OHpyQ1VmZDlCcFNQbmlVVG1Ja0J3OFp2TTNCL2xJNEVlbDBFYUloVUFSSmo1?=
 =?utf-8?B?RzlJNDAvdmlQNlI5YUdJOUNxMFo2R0FsNEYxZWFycDJvbEo2M3E1d0NFREVk?=
 =?utf-8?B?YU5HYk1mYURLQzVNZk5mdjF3R0syU3hMc1NpY3NPK3EzTjZsbUFlUlBmaGNX?=
 =?utf-8?B?d3BwWmlycTMrUHkwNXlGY3A5SlVkQmdzVjI4Y1phZDBWMisvazdBZTdvN2kz?=
 =?utf-8?B?a28ybWIrRjRnakpmVUNieGhpaVl4VVZmWm5hbGM2djNzWXBUYkx6TW9pRlBH?=
 =?utf-8?B?eEJobXQ4dXdUN2t5aGExTU5oYUxqc0dCZnNqWjhuLzZDMUpvUXBqeDdicVVD?=
 =?utf-8?Q?UqS/2OUGRNuoCsqIhu+AmNntkmgxUXFmY8DKYDKDNUDRV?=
x-ms-exchange-antispam-messagedata-1: lJQDdZTLLuj8YP7uTNtJq1ROKLdwiwvNh0vIbMyYeFRsL+itMSOuR7dMMIQnIofTRPG6wx9weopLPA==
Content-Type: text/plain; charset="utf-8"
Content-ID: <BC2E1299A06E8D4C9CD6D3ADADA04FC2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bebaea4c-c2f4-45e8-916e-08da2c75dd02
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2022 19:56:35.6606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FHHRsOLpDvKDQJvmPYjhvky6qKcvvM4udIN7DW57ZUMSWcV+G68946A3RsrujcJ7GMPjs0D/z23gjYFFZqacbP5S23JKB7tiFLfI+3d5Nifw9P0G2FOmdWqEuFPDT05aMtocleBNKNocII1LbgZa9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4164
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] i915 Updates:  DG2 DMC v2.06
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
Cc: "kyle@mcmartin.ca" <kyle@mcmartin.ca>,
 "jwboyer@kernel.org" <jwboyer@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hutchings, Ben" <ben@decadent.org.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBjMzYyNGViZDY3YzY4NzIyZTBmYWJj
OWNhZTAxMzk3YjE1MzEwMjM5Og0KDQogIE1lcmdlIGJyYW5jaCAnYXRoMTBrLTIwMjIwNDIzJyBv
Zg0KZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2t2YWxvL2xp
bnV4LWZpcm13YXJlIGludG8gbWFpbg0KKDIwMjItMDUtMDIgMDg6MzE6NDAgLTA0MDApDQoNCmFy
ZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0Og0KDQogIGdpdDovL2Fub25naXQu
ZnJlZWRlc2t0b3Aub3JnL2RybS9kcm0tZmlybXdhcmUgZGcyX2RtY192Mi4wNl9yZWJhc2UNCg0K
Zm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIGI4YmQ2Y2NkOWM0MDk1MDhhMGI0MjQ0OTI5
ODE3MjFiNDVjNTUxMjc6DQoNCiAgaTkxNTogQWRkIERNQyB2Mi4wNiBmb3IgREcyICgyMDIyLTA1
LTAyIDIyOjUzOjIzICswNTMwKQ0KDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpNYWRodW1pdGhhIFRvbGFrYW5haGFsbGkg
UHJhZGVlcCAoMSk6DQogICAgICBpOTE1OiBBZGQgRE1DIHYyLjA2IGZvciBERzINCg0KIFdIRU5D
RSAgICAgICAgICAgICAgICAgICB8ICAgMyArKysNCiBpOTE1L2RnMl9kbWNfdmVyMl8wNi5iaW4g
fCBCaW4gMCAtPiAyMjQxNiBieXRlcw0KIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
DQogY3JlYXRlIG1vZGUgMTAwNjQ0IGk5MTUvZGcyX2RtY192ZXIyXzA2LmJpbg0KDQo=
