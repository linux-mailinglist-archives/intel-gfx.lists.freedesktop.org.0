Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4D890E2A2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 07:24:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97FF310E0CE;
	Wed, 19 Jun 2024 05:24:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MhwGrfkG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A61110E0CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 05:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718774682; x=1750310682;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=wm5caJeF816dNLyzYYf5MekBF2m69tqorADklgWYZgs=;
 b=MhwGrfkGSmKMVzBET8St7MR0Gk7oDq2a2hvjxpVBepQAPF/UuyyzA6jS
 3p0mlgLJoUSWiezbBfvsy33C53f7YLOqWe/J/uD8R+hoJPkFASAv9Xff7
 klP7LEQVH4AWwJRvsDYv+dWy9ibQhQgBMcRgfcucb35yaGuTYfXUGu9hl
 tD0rSbOKaf+EN7dR+8QeTgTlLUdaKzjMaAtFrIMBokSkizoQivvTjCeZ8
 3iU4YLdRHPjFJ1vz3VbWnRdzYtp1H1VV8K4k0Dz7cGGLhmc8EHQePu+88
 YIa0vITL25/JMkJGdzbb0wR/PTWx41Q6daJ8nz6KX2VJr3FhUOmt4sWH8 w==;
X-CSE-ConnectionGUID: 3S26IygWQwiNwJJzO86gjg==
X-CSE-MsgGUID: TpbY94lkRaKw32Vp891nfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="18606444"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="18606444"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 22:24:41 -0700
X-CSE-ConnectionGUID: ms9jE2eqQCep+sbNtkLBhw==
X-CSE-MsgGUID: rvCak0ZBTMSHFIgD0WAC0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="79262755"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jun 2024 22:24:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 22:24:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 22:24:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 18 Jun 2024 22:24:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 18 Jun 2024 22:24:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YQnCjUp22MLHZbkKvXzGmNHzPq3/2/Mfldl2TMfLLApAwdQUp0N6V5osBqmtbwyKtPATOUFOXNSR+0GbC5X9pl2OvF8XVFw6N2z4SEHBS7LeS2YQ1sHjDZzaiIg9kbgvba74yT6UqSgvzOA0nhV7iIuizdnfVMAYW4C1d/5G3hweIRpjipogWDVZ7l4n9msDzc5DyOflqTwreL3ZTWYpokE9/AqWdGb7d5OYJkGwiF/lnc56CMEzhGZ9qN6arMMB5VJVCfddvSBdXUzDsJ21Lb3cDnjRYmQQd+gGrY8LHmqKxo8b8tCucaZEjsrBdyFr0RgCRAgTdKkKZEcm4iWQYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wm5caJeF816dNLyzYYf5MekBF2m69tqorADklgWYZgs=;
 b=CnCn7vXuSeSDQo934RDECQNOMd1kPD0qHtYPxi36xWZu/nw1ZusjM7cirQ6Dt+Og4AHthMmjb12QYGAs/hLZm1ZPwKoTBZtLju9QDQs5Ay2ewUbpBHOY4Ka2/7J5eBZHFJEekrTVdfTNpHrlt+VJbhuLRTfZKu89aN3WX3rJXZVU9b1deS0oMg4GH9qzq0Q6UbNu0wLxvYom/+kez1e/WBFq+n9ICacceygi62+kF2s+bR2vEdtKC0kZvrdkGGKMscQ9ZJht/eXmPhc+ASJqv3iTx3xI5QJHu9XTpFolVwUXGHXPP5Lu4U+Bgg5+K12VXloDWbmRw3zbzcn3JYGbjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA3PR11MB7980.namprd11.prod.outlook.com (2603:10b6:806:2fc::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.19; Wed, 19 Jun
 2024 05:24:38 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7677.027; Wed, 19 Jun 2024
 05:24:38 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>
Subject: Re: [PATCH 0/9] Panel Replay eDP more prepare patches
Thread-Topic: [PATCH 0/9] Panel Replay eDP more prepare patches
Thread-Index: AQHawUC2sUanY031mUiFlkKyWV4iZbHOj3KA
Date: Wed, 19 Jun 2024 05:24:37 +0000
Message-ID: <33a86951360023e657e289657def70ef55d79ae4.camel@intel.com>
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
In-Reply-To: <20240618053026.3268759-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA3PR11MB7980:EE_
x-ms-office365-filtering-correlation-id: 306ea013-9316-42db-3304-08dc90201d02
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|1800799021|376011|366013|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?NzRCa05WbGFHRzdDSm11MHlKNTcyTnZUbDdVeG9ubmhYOU5jKzF2elpnY1ZQ?=
 =?utf-8?B?b29uN0YyN2NWYnNDL2xBSkJzeGxVdGZhUC9vcnUwb05wenQwbitkS25PR1pv?=
 =?utf-8?B?LzRTTHVwc01rY2ZLck5TdERtTnRTbGJ1TGNsWk9uZ2grOS92UjhWbzY1MWhM?=
 =?utf-8?B?OS9wanpsak1WM1BDQWlMVzQva3Yya2tBTEhYV2JYMjRha2JUTy9wWUF3ZmhR?=
 =?utf-8?B?Z0syK0ZBUEtGR0RiVm1kN3BuVFRaLzYxUU4ranhIb3l6RmljaVhCNmRtdjFa?=
 =?utf-8?B?N0pqYXRkRzkyOG1jTUcvdytDZ0h4alJkZDZFSjdxSFYwZ3EwZW4xdktIMjZE?=
 =?utf-8?B?blRFanpxaCtodWw1UFFSMldOc0hkOTgzWFlPZ2hCWExNWFhuYW9KenBKd0tz?=
 =?utf-8?B?UmJYM0c3cFpHZDlMbWpPdVpZQmJBWnZSYklBclZJMTVISlJtVjNDS0o0K0dx?=
 =?utf-8?B?QVl5ZysyYVQ1eURIN3F3RFFqR0NmeGRPbGtCTmc1eGZMVDgvK0l0eDlNMTl1?=
 =?utf-8?B?N2d5bDVCdGRKWmk0UzhpbDhFdHZaaytROHFid3JIUUZSWW5rL21LOGxvZ2Zl?=
 =?utf-8?B?RXFyWkZLV08zcVZZekdBaTd6ZEtkOHhrUVJCV1lSb29tb0I0ZWhTNkVac1B3?=
 =?utf-8?B?bHQ1SzYvenJubGRLNTQxQVo3Z0l1WFNsVlU0YmhmSWgvSWh4WjRoY0FUNXgz?=
 =?utf-8?B?T2sxa3VTNVJTeVdQY3FBTWpPWjNUYWFvWUFXWjVaT21Xa01MY3RMb01IbTJB?=
 =?utf-8?B?c2QwNU9oTnlHQzJseGRSMlpIM2RmeXVrMWNLQkRKYmJGZngxeXBlNmJVRTFK?=
 =?utf-8?B?eHY4Sng0RXpxbVlQSDZsRGRxdlFCaFYyK1JLTUE5ZU1yK3hFUXo2RWl3eith?=
 =?utf-8?B?RXRCakY2cko2eUM0UFUxa01qRlJFSklJWnhhL2lvcHBLRFM2SExDVEtuQlBJ?=
 =?utf-8?B?Z1oxY3FFU2hGam8xVExvUUZYR241WTlpQ3p4YUlhcCtRR3VxdCtGWE1BK0hT?=
 =?utf-8?B?K1I0T2doVWhVQmFkamxVUGFobzVTMHErbTJ5TXpmWnlpdTZLc0VQWi9wTXJT?=
 =?utf-8?B?bUoxMzRJTzF6anhLRnZsK2NoTG9qbkdtVHFtR0g0enNpTkhGRGNWSkRBYXhH?=
 =?utf-8?B?NFlxUVd4NENGRFl2bmdzK2l1Mmc2Lzc3TWc0anovVTJhNm9HQU9OcTN4Nkx1?=
 =?utf-8?B?NStKYk9CVkFOakFjRVArbDQxRHo0MmROME10WENGWkNsYUJnbGZsYk9Xd0hs?=
 =?utf-8?B?bXJKLzI3andCUVQrQmhZMDNqdUgrODE3dSs3dlUzamVUc1RjeEZzU3FsQjhY?=
 =?utf-8?B?R253Yms5SUxpM3hRTklQZXd3YXN1Mm1PQUNtOVpVWlR4MlNKV2FZOUpZc1NR?=
 =?utf-8?B?cUhtTDBhZDU2a3dBZVdCVTlGeksrdUl6RDhBdGFjQldRRGxwODRidjlKL0Vw?=
 =?utf-8?B?OTdEVG1CakgxQmFlWlRReWwySDZHM3N5dlpKblgvUnU4U2t5b2JsNzE1L2FK?=
 =?utf-8?B?MlUybHJ3VWdoK0Qwa0plei95NTR3NkNla2pEMW1vUWhHNnNYemN5ZmNJU3Bi?=
 =?utf-8?B?Mmx1UDg5c0hiSEMvazhDRm5EdkJmckJ5NU1abFZtSnhoZC90eHZFUzc4bG9T?=
 =?utf-8?B?c29ZbW9LUnYxOG9ScXB0dDJFeWxiK1VEYk1qem0wQ0FKRU5uUXVlZkNIK2lX?=
 =?utf-8?B?WlFzTWZ1SU1oaWQrVU8xbkh1Z0EreXQ2L3BzekdkOVJhSEZ1SXVBbHlLNCtC?=
 =?utf-8?B?d2trVmdDQ29rMUI5MHdndWMyUXYyd0huc1JXNXIreXFyOWRxUlJBWW9NaTkz?=
 =?utf-8?Q?iaWsJ3wuJAvecWQmh8JJi095qEneujNfsaxPk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(376011)(366013)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SFhoZlhFRFhvMXgxVXo1K0NXRDdhT2J3VWpDd2lRanZnbWhNeW9RZjVmNFZR?=
 =?utf-8?B?WFVZcDFkbDF6YTRzdXR4SlEycHdacnkyTXBQTTlDQk9xUXFldzJCS0Q3RllZ?=
 =?utf-8?B?RU9KRVBadHYwRUtjVVQzd1RZUFNxQnpLaUx0MEk1NnZkWThmUURLZXg1OWk5?=
 =?utf-8?B?c3V4K0VDREpObUNFNWtidHFIa1NEOWczQXRwV1dvYkdQYVN5QmpwN0N1VUlO?=
 =?utf-8?B?bnlMZ1VMbjU5bjBuWFB5aVo3OHpXRWFtMVVUUGE1YzhmaXVHSk1qQkY3OVUr?=
 =?utf-8?B?WmVTR041RkE1MVRSdjF2NGZ0QmFkdjhnalV1U0l1OXA5bnlSc2tVYUhSNGJu?=
 =?utf-8?B?WUhYVkF1aDNubWxKbUtpQWdxbjMycjkwSWkvTmpOdElUWTZwRERTdGdDNmdm?=
 =?utf-8?B?bDFLenF6eGp2UkNER1BwN01zMlZCZWJzQmYybzJpNDFpMkZsQXU4Y0lEVU1a?=
 =?utf-8?B?bi93TUtHUXhNendZVkVFR3pyOFUxTGZkN1VMTHJ4UjJUN1NMNHFvV0lHeVNM?=
 =?utf-8?B?clhJaVhXaGVNT0tEYmtNUGQ0TDlCOXpOL3NnNmpDVjRQbmNpOE01WnpWbXhQ?=
 =?utf-8?B?cDA2SktWdWcyM3l4aVZRbGp1Q2VQUUppM0h1cXBtNG1rTjUvUTU4OFZNMjJw?=
 =?utf-8?B?TTQwbEZJZjc4cU9Oa0NGUzZOSm9nb3l4TVEweUNRKzRWa3JtVGRGRVEya2Ri?=
 =?utf-8?B?YXppY3VNNTU2VDhrR3IzcUMxdUhGbW1xaTU2TGdsNmd6T29ndTBvcyt0U2Zy?=
 =?utf-8?B?ZXJibmEvMEFNVzdoTlh0ay9zYkppWTV0MWh6cGtaVTQyY2hrakJnaGw4bk1t?=
 =?utf-8?B?c1p4VUJFbU5OUlpoendFY25Lek5EeTRXRGZFZS9uSUtseGNkaHR3alBQSDR0?=
 =?utf-8?B?VUU2MkNmdEtqYjVVOFh3UnJydm9YT2ZtT1BVYWk5UDNXY2lNUXRGUzBkQk5U?=
 =?utf-8?B?NnFsOHdkaWlSK1VBYlN5cm0vTEZ4RmtIbkdIdGtKYmRhN01SRHhDeVdNRDdB?=
 =?utf-8?B?NFZaekJxZytMWnhLRmpoZmZTaEk5bFhjbDgyUmVuTjlyMHh4eTNoaGl6WWI2?=
 =?utf-8?B?UkVKd1g3RmV0ZTl2enlyWkJxZW5kelR2SGZaQzNMV0hGUE9Yd3BzZ3VyYklK?=
 =?utf-8?B?bitHU1FLWE1DeXBibTg4K2FlT2cvV01nN0tmS1hweVc1QlJOZTRxWFZCWnhV?=
 =?utf-8?B?Ym1HcnNLR2NwNFlCVWxkOXUzdjI0YmNpRTdaaUxRWGluUHVzNmNJMzVMSHpK?=
 =?utf-8?B?L3dpOEVYQ0FZZEx2a3VIUUNLRVdaWGVYNUpLeWE3V1p6RTlEaWRRQVdsUElx?=
 =?utf-8?B?K2VVYjkrbFNtdll5YzUzNW5SWnpDUFBRTDUwMG5wZmF0T2JhL3hNWWdsTWNX?=
 =?utf-8?B?b2EzOSt1Sndxbmo5RWQ1Z2k5Y3V3MW5YWEZsQlhrcG8zeHRRakF2ZjBGdC8w?=
 =?utf-8?B?TXJub2JCUEJGdk9jYStzNzVnclVoby9yMkRpMDVlNmJsamc5TjBvMnZMSVpu?=
 =?utf-8?B?WDhiTDB5ZGNyV05CWXdjQjNEd2xZSWw2U3RuNSt2MG1nMlhkUWJQMWdiMitD?=
 =?utf-8?B?MnRubXIxajZLL2d3OHhCQmtHcFdjR01xcWwyUmxFQnkwTWh0bDNGYk9DbzlD?=
 =?utf-8?B?SkM4V3FjOHpkb2NKaVJxMndvK2o4Q0FVSXBVZ05NeGx0MXd5ckJZaG5YZ0RV?=
 =?utf-8?B?Z0RiTzk1YkhQOHB4YWpnTFdodHR3T1hDRFh4WVNwcWY4MC9PcXFqeFJQVlJz?=
 =?utf-8?B?M29JTHM1NUdla2FnYzZDamNBd1ZLbFNVZkNrdEZCc0lZd0FTejhzdXRYZ2V5?=
 =?utf-8?B?aUQvWExxMVI4T3c0V3FWVms2eUNTWU1GQjhrbGJuZ0hXRXgyU1BGY1VBYWR2?=
 =?utf-8?B?YzE1Rk8vSC9jY2dkY0ttRmxPMnVZWlVJQ0wrSGNsU1NCYUhSbGZJVWthd3B4?=
 =?utf-8?B?NUVaQnZFWnNGOFFRZHNEcjRBb3FtdFVPK0FjSHQ0TUJOVGZXcEJHNTRlMEhl?=
 =?utf-8?B?RWpqQTFjcXkyUHVuM091emxUMUl4bGQwSVFvNXRUWTJPcm15SUN3cEs5VjN2?=
 =?utf-8?B?WGo3OWpIelpSQjFCUGZCdnQrK2QxOFFEdStuTVQxampxc0dOUkdzQWl3azd0?=
 =?utf-8?B?UDhBamxMRzB4OHZwZGxVSVpqZCs3MjN4WEpWais2OERiMHN5STVhL0UvUU9C?=
 =?utf-8?B?Mmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <56A7088747C24644A523816859BCABF1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 306ea013-9316-42db-3304-08dc90201d02
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2024 05:24:37.9285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aXCXbbBW1DGXXTR9IjCSDg1T+6cpyMSMo1FhLgN+JArCk1WD8DBraiCOIHM5U3UkreLaaRKR1iNGYHCj2bGsdcS8dpsPlU05WmaRhbDEDBc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7980
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

T24gVHVlLCAyMDI0LTA2LTE4IGF0IDA4OjMwICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IFRoaXMgaXMgYSBzdWJzZXQgb2YgIlBhbmVsIFJlcGxheSBlRFAiIHBhdGNoIHNldC4gSXQg
Y29udGFpbnMgdmFyaW91cw0KPiBwcmVwYXJhdGlvbnMgYW5kIGZpeGVzIGZvciBlbmFibGluZyBQ
YW5lbCBSZXBsYXkgZURQLiBUaGVzZSBhcmUgc2Vlbg0KPiBhcyBzYWZlIHRvIG1lcmdlIG5leHQg
YW5kIHRoZXkgYXJlIG5vdCB5ZXQgZW5hYmxpbmcgUGFuZWwgUmVwbGF5IGVEUC4NCj4gDQo+IFRo
aXMgcGF0Y2ggc2V0IGlzIGFsc28gY2hhbmdpbmcgaG93IGVuYWJsZV9wc3IgbW9kdWxlIHBhcmFt
ZXRlciBpcw0KPiB1c2VkIG9uIEx1bmFyTGFrZSB3aXRoIGVEUDEuNSBwYW5lbCBvciBQYW5lbCBS
ZXBsYXkgY2FwYWJsZSBpcw0KPiBjb25uZWN0ZWQ6DQo+IA0KPiBlbmFibGVfcHNyID09IC0xIDog
UGFuZWwgUmVwbGF5IGFuZCBTVSBSZWdpb24gRWFybHkgVHJhbnNwb3J0IGFyZQ0KPiBhbGxvd2Vk
DQo+IGVuYWJsZV9wc3IgIT0gLTEgOiBQYW5lbCBSZXBsYXkgYW5kIFNVIFJlZ2lvbiBFYXJseSBU
cmFuc3BvcnQgYXJlDQo+IGRpc2FibGVkLg0KPiANCj4gQWxzbyBQU1IyIFNVIFJlZ2lvbiBFYXJs
eSBUcmFuc3BvcnQgaXMgYWxsb3dlZCBub3cgYnkgZGVmYXVsdC4gVGhpcw0KPiBpcw0KPiBzZWVu
IGFzIHNhZmUgbm93IGFzIGl0IGlzIHRlc3RlZCBvbiB0d28gZGlmZmVyZW50IHBhbmVscy4NCg0K
VGhlc2UgYXJlIG5vdyBwdXNoZWQgdG8gZHJtLWludGVsLW5leHQuIFRoYW5rIHlvdSBBbmltZXNo
IGFuZCBNaWthIGZvcg0KeW91ciByZXZpZXdzLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoN
Cj4gDQo+IEpvdW5pIEjDtmdhbmRlciAoOSk6DQo+IMKgIGRybS9pOTE1L3BzcjogU2V0IFNVIGFy
ZWEgd2lkdGggYXMgcGlwZSBzcmMgd2lkdGgNCj4gwqAgZHJtL2k5MTUvZGlzcGxheTogV2EgMTYw
MjE0NDA4NzMgaXMgd3JpdGluZyB3cm9uZyByZWdpc3Rlcg0KPiDCoCBkcm0vaTkxNS9hbHBtOiBG
aXggcG9ydCBjbG9jayB1c2FnZSBpbiBBVVggTGVzcyB3YWtlIHRpbWUNCj4gY2FsY3VsYXRpb24N
Cj4gwqAgZHJtL2k5MTUvcHNyOiBEaXNhYmxlIFBhbmVsIFJlcGxheSBpZiBQU1IgbW9kZSBpcyBz
ZXQgdmlhIG1vZHVsZQ0KPiDCoMKgwqAgcGFyYW1ldGVyDQo+IMKgIGRybS9pOTE1L3BzcjogRGlz
YWJsZSBQU1IyIFNVIFJlZ2lvbiBFVCBpZiBlbmFibGVfcHNyIG1vZHVsZQ0KPiBwYXJhbWV0ZXIN
Cj4gwqDCoMKgIGlzIHNldA0KPiDCoCBkcm0vaTkxNS9wc3I6IERpc2FibGUgUFNSL1BhbmVsIFJl
cGxheSBvbiBzaW5rIHNpZGUgZm9yIFBTUiBvbmx5DQo+IMKgIGRybS9pOTE1L3BzcjogQWRkIG5l
dyBkZWJ1ZyBiaXQgdG8gZGlzYWJsZSBQYW5lbCBSZXBsYXkNCj4gwqAgUmV2ZXJ0ICJkcm0vaTkx
NS9wc3I6IERpc2FibGUgZWFybHkgdHJhbnNwb3J0IGJ5IGRlZmF1bHQiDQo+IMKgIGludGVsX2Fs
cG06IEZpeCB3cm9uZyBvZmZzZXQgZm9yIFBPUlRfQUxQTV8qIHJlZ2lzdGVycw0KPiANCj4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uY8KgwqDCoMKgIHzCoCA4ICst
DQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuY8KgwqAgfMKg
IDQgKy0NCj4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jwqDC
oCB8wqAgMyArLQ0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aMKgwqDCoCB8wqAgMSArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuY8KgwqDCoMKgwqAgfCA3OCArKysrKysrKysrKysrLS0tLQ0KPiAtLQ0KPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyX3JlZ3MuaCB8wqAgNiArLQ0KPiDCoDYgZmls
ZXMgY2hhbmdlZCwgNjcgaW5zZXJ0aW9ucygrKSwgMzMgZGVsZXRpb25zKC0pDQo+IA0KDQo=
