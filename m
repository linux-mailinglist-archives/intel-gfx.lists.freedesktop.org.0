Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sI0cLQU6vWkN7wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 13:13:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5AE2D9F64
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 13:13:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED89210EA9E;
	Fri, 20 Mar 2026 12:13:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ncYVVbTL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D1710EA9A;
 Fri, 20 Mar 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774008833; x=1805544833;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LTaKE/+9nhHEfMZWeNG0D5Fg3s1o70+ShQa6BIx3F8A=;
 b=ncYVVbTLK65HNjqFRXycWL4q/4BDyZlXJPIjcpJ+XQIThGtepUMBekGp
 chsXOA7If9lMMkBACE+1XRwWqhCTVM5qHPfQzRvGyMRkwhjO1R6negYQX
 JtAghcmDTVzF78wHbhB1yElVZihh7WQnCIi6FUdTrCxe766/x8La7zazb
 cMBclkl/Q1r41HTaQUFlKE0lZzDt7us3Epku1u4YWHqal4tptmXEBYg4m
 5DIUYobWoF7x/zZ8knWIJh2ssEt19mtd9wd3RvATmQfOQLCwWyQt8fJcv
 ApRJe7ZVaymtxumYIeGVwBlvuI/brqnqpWQZjzcDLyaIYBO6yOHSdHgV5 A==;
X-CSE-ConnectionGUID: YjfproubQcGAn5GN+ZYXpA==
X-CSE-MsgGUID: 3GmBL1trS6WI7lH+L+vbfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11735"; a="100546794"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="100546794"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 05:13:32 -0700
X-CSE-ConnectionGUID: 4fU8eMFuRTKSNA1bHE6hwA==
X-CSE-MsgGUID: Lp3iiSZRSPaO8ZhqhrLoSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="223293312"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 05:10:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 05:10:22 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 05:10:22 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.23) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 05:10:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SiR+Uc11WA6REImoUHEOIig3aZ/nfXSnz67XdOd0XswOtMU3HqCXhJ/zFP3yuW+0xVHO5brPtqPhChg2LjjQccp3IkJEE3xAVMQtGD2ODnZKHLgj1zp6apPsWvHN6+LZMSnJhievynFEtw8NZh1aoa74jKxBG7otyZYxIH+h74hC5MsZ7rO9j0S+D2llCrTlK/0BECxlQBDLQ3TVTDQmugk8V2nl9m4LWkxBFDHRQkIYYUOODqwIHJI5GU++Mkz8FSJNgWicD4KgxjuRacX04bemlxEIocnJBJ6QU4ToXPQln8mHFqWp04Tg1ybcMsjF7y9lXaGo1dzy3JgS5F8MNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LTaKE/+9nhHEfMZWeNG0D5Fg3s1o70+ShQa6BIx3F8A=;
 b=XtToMYmjGLgG286ZnyNjPK767zCIth8kiCCgFaHV6waNQdNjVbp/cuWQMPoFCxSRdzRH/13yYPR3HhVWD+dSjcmckDzMw+bZiJ8kLoG5OolvDjUFZON7Z+ducJzG49GH3uAQEEvoJgG0pLBTVLCU/bLmew6Zf9xHsdTWvHaMSZChZSx80zSjtItIxySXcpjMipG1IAu94uCtxDR8E4zsyTssSPebCLRG37hO1TDR15AuEiIcdEaBxgKhrh3qMkgGdsMFcZtG5iqi8pcTg8jJcGLEVTBx4aPjisDLvOzr0RcW0UbmoDAI12/VRr32y7zW9Gof6U6R3jb0BMW6PYGFrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB7562.namprd11.prod.outlook.com (2603:10b6:510:287::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 12:10:12 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9745.007; Fri, 20 Mar 2026
 12:10:12 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
Subject: RE: [PATCH 3/3] drm/i915: Skip redundant NV12 plane unlinking
Thread-Topic: [PATCH 3/3] drm/i915: Skip redundant NV12 plane unlinking
Thread-Index: AQHctWOeXtknwWH1p0KbUa2c2Au9Z7W3WglA
Date: Fri, 20 Mar 2026 12:10:12 +0000
Message-ID: <DM4PR11MB6360D25DC17CAF21D1C1374DF44CA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260316163953.12905-1-ville.syrjala@linux.intel.com>
 <20260316163953.12905-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20260316163953.12905-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB7562:EE_
x-ms-office365-filtering-correlation-id: d8ac9e02-afe2-4637-a67b-08de8679a36d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: 0Z18T9JwUIJ/KAJ9lNiWE+LJKJ1bbYfKq3MKd4em7+czwNCDH1juFdxL7nrZjG8rNu4plRW3K5KJyehh4B6zaxlHjQ+6rmdkBogchDS189J1YfMhjPxmXZOnBmMTAGzerLxMpJ634voxfW45fNoBCk27dqpanzWWbOe5hH2jFhBjL3F2O/CByNfa3oDF0Lw+m/7OKwbGJxu+BiWcLlK0TZHRaOMdCV2eoGSBzOxhgakD8JRPYv4hrSj5k+p1ugpGWszP3E2BUhRgCPTXSnqtHTRLtQYdMeeq4aw6u9AvZyN8fI1SqETD1hR9pTat6JhYb4Ok6mVp2YHOG0cQgrL+9QyWZwH0im0sbBJYF7Oacc+awm1iNnozF2jA1796lG/iR+DUf1YK8HDv9FfoSpCDV86N4si2hHISgbBdNyknpt5fIXrIdkRAEPShSohp8CvHJxvrZU1qYlGT6jt+s+xhmmMDD1qJqgkeVsAiCyI/cBRK58gnU34LK8JhpyZAVedQN+apoHpetz1G/Twqd/6SKjTSDYOxbAP/r+gauRjSXp8Z6CrTPeA7PDQyowC59cV9ZUB+CHA3PynEB9Si7IP5nlTevGYDxRTba6zkxoZVeYphU25zE0Xh5hQMxhRBOySg31hag0xLvpoy7Gd0FHFdcIDAoY7VlG5xEsqzzF4T+eYo9aBC7sceWvlQane/ZWIjn/lpGAkN/wOmERJOymvblt8rqLdqlr8hQcbUClsYO05FfTX+hqq/dnV4AXwI5uWtfyy+jbY6yGfDaRC/mauCi/8Y+vPX7aNVimIuUXs4MUY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Uit3cVJMa2l6aHhmVW5abG92VmxVbGVFMFQ4aW0yai9lc0I0MUVYOFFGenNs?=
 =?utf-8?B?eDJRQWpCTmMzZ2lLd1lqK0dmeFdQTzgzUFYxd0FyY0t3MWRTczhBdFZRRzZR?=
 =?utf-8?B?TkVKMXp1Y0M0T1h3NnlGVG15cGg5NmUwWTVXVnNvcUZwSkoxUmZWYUhjWEI3?=
 =?utf-8?B?WkNXcy8yQk5weWxIeHpoV1Y0K2NqK3hOdXNsVkZXRE8rUW1oQ1ZTTlB2S3dZ?=
 =?utf-8?B?dmk5azdybzVWOHZWeGdnYjhtVHdvMEZVVm9OWFFEeHptUFFCbGIwSFVXTUow?=
 =?utf-8?B?TzhDYjQzVHM3SVEvMjkxVVhJNjJabEtRMi9SbU9uRUVJcW1sYThCcUFSbVhu?=
 =?utf-8?B?bmJZeWY5WC9lZDVFQUtlWjlzbGlCVVNCRDNXMkQybnE4TVpYenhYbVRtTXBO?=
 =?utf-8?B?WURHQUtraHd5SWs0L08xU3lYdnRPK2s1OUtycEZXU1hMRWJ3QVZVdXFIZ1Zy?=
 =?utf-8?B?YjJoaDhzVFFIakxiTit0TDN3ZnF6RkpnUy9FYXl5K3NKa1RPblFPdGNGNWx2?=
 =?utf-8?B?WnhTUUdKTlNiWC8vL3dSZll0TzZHSElBYytPVHllNEFId3B3VExMRm1XY0FB?=
 =?utf-8?B?dnluQksveTZlZ0hKZVFrOHhFKysySk1RWTl2OFQzWXJzUHRCd2FuMHhzL2M3?=
 =?utf-8?B?SHVNMnEvV3Z5TnZhZFZqOElBZFVyU1ZlWjZMNWsvQmplY1UyaTcwcC9xUXEz?=
 =?utf-8?B?UloybkFOSC9ZVHlBcjdScU85Tzd1cTBFNm1RaGlPcktQSkdhK2hNb1VOaG1n?=
 =?utf-8?B?L0VPM0VEYUxLa1E3MktoRi9nZmFkNGR2Mnl0aVBCbVhBM1VkNHVKMXNEQ1g3?=
 =?utf-8?B?WGZBRitwVjVPUDhGQzNYQVNFY3lRT0laZkI0NzJzNlkzZllkUmI5U0FoQVVh?=
 =?utf-8?B?SlZlR2VUTmRwK2UwblNvOTk2ZjhUck5haVlEN3RxRGVCNHpielh2MEpjRjJn?=
 =?utf-8?B?V0o0Z2JWNkNEWDBteC8wcUVhL0NRcDVLNVBBNEsvRElWRXE2cXdtb1VHWnBP?=
 =?utf-8?B?MEIyQlFNV3VqbzllU3VZVDNocWNQSGdwYmdKRXdKOU9EbFc2SjBNeG10RTlO?=
 =?utf-8?B?RHN5bDBtU1NJbmtvUlNJbjVuZXZMT00vTFUreTBOWXIzZ0xMZXlVYTRleW9H?=
 =?utf-8?B?cmwwLzN6UlFRNU1WOFVYT1R1Nkk2WXRtY0YwMEZ1SFp2amR5UWMzdXRwRDFa?=
 =?utf-8?B?dkxmNHk1MzZpVzlVQlk0ZklsclBZdlg3UGRvMC9tNHNwSVduaTlReUpMYkNo?=
 =?utf-8?B?THdEUDFjQWxiWHo0cjhBdlltTUExK0piOTdDNnN0NFdVT1VzWVk4WjBoUWh6?=
 =?utf-8?B?aFBzdnpzaHE1cDV0V1NkWE4xY3h0QkVGU0lwRk1IbnNSem5IL2d6MFYzdVgz?=
 =?utf-8?B?cWFzMC8zSTdYY3VjanVYdkczLzByZyswNGVIVGNhRU8wbEkzSy9JMlFKZU1j?=
 =?utf-8?B?K2dYOEt1dXZzUGpiaHdpdStQTXZKN0xSOFlMVjdqbTVlU0d0SUxNbXREampD?=
 =?utf-8?B?akF1NVB2UkxPWkswT3RVaWJMZTVQeE5GSlNzcTFNVTFEalhBc3lmMXFRZ1kr?=
 =?utf-8?B?WnhXT3VQakVpR0VTNktKam9HTnpYSG9RSDNiSnFIWkFqNUlnS1F4MjZUdmts?=
 =?utf-8?B?T0x2NEt2NkVlY3E1VVZSNHVWYU5rN3RKaDFKN28vdVo1UGQ4NDZZaDkwbWFX?=
 =?utf-8?B?Uk9BcXkxVGQ1bHBzZHZSZ3BPbUloazV0SDZDNEdrQjN6S2Qzc0I4YVkwbWxP?=
 =?utf-8?B?T0dvTVg4SC8rbDlCUWZ2cGpMQ2sxU0QvU2VTZnljdEhvV3ZybFQxSkFXYi94?=
 =?utf-8?B?OTlCOFZmODJTU1RSSjdmL09YUWVqSS9KdkpQNUgrckpxNTBacGVZNzFyT2lP?=
 =?utf-8?B?Y1QxdXlBMUpDOXVZbVY5VTZ5Z0p6R3BzTS9LVDVNbEpLVTU4c2drR01YTHF1?=
 =?utf-8?B?UlB1TjFabi9WeHFUZVA3dFVFcTRkSHBKdTBCTGYvNzlIT2xmV0hoajVTb1Z4?=
 =?utf-8?B?MjhyTWV6Um1YYkMvOFVTT0MrTFA1d3hBdWducHpyOU9rdFpkK3hHNkYxYXJz?=
 =?utf-8?B?OWJOZUczdlJvaE1PQ0RXYWtnNFFBS1lWOEhRU2xDdEd6UFppekUremo2S0o2?=
 =?utf-8?B?aEYyLytiaXp3LzFnMjUrdUdhZWdvVFJtSjNabUtOT1U0eWxqTjhmWU80WEx4?=
 =?utf-8?B?YnV3amdyRkNMQmpYT1FyYkpJQmE4MVhjamx2T2pqWUgvdVZ0VkF4K1BENEZ2?=
 =?utf-8?B?OG5laE9tanRETThlcXRZdVVhT01Tc2VYNVJBT3dUUXdWRlgwSGpBSnRzV1ZX?=
 =?utf-8?B?VW5WWkNOTUhhWVE5M2N5SzdCYUtobGFJaHJwSjJQMldXL3RXTU9TQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: uffFuiS+eN8svw70aqnAY/H4OQTcLRJQibYPveXdEX3noeJwCM/OyadqFe+7J+VmZs+q5vluqaGP+ByRfWkFsB9RmOa1awrLKwnxt/lfnQMkAPUYUoCFOr0rsde9T+9o+98cw8oa6F23TgXo7aeL3tqyjLszwMhgfklbKBadG/mMwHgYwsr4jnnfD9UaHdEuTVE0SmxZG6LAHAVDYzcs1eoTUmYpzA9VZLY32xMoirZ5B/0aguQrmaQClELSEETZBrhhkcGaGmrApkp3YJ0SwMgSEOYNLd3XDONeDJpx2AXHcEXDjK5vjoD+MPIfB+aP7Dyrio1QXpLdjHjvH3XJWw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8ac9e02-afe2-4637-a67b-08de8679a36d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 12:10:12.3730 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AFoc0/LC7QXqRO+fuinIDsTFWFBYZLPU6U3hWlPLn4Klg3J+lm4gxODsUlYgp+LhIwWx4RDYTomAA+93RNIiiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7562
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BF5AE2D9F64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBNb25kYXksIE1hcmNoIDE2LCAyMDI2IDEwOjEwIFBNDQo+IFRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVl
ZGVza3RvcC5vcmc7IEFsbWFoYWxsYXd5LCBLaGFsZWQNCj4gPGtoYWxlZC5hbG1haGFsbGF3eUBp
bnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAzLzNdIGRybS9pOTE1OiBTa2lwIHJlZHVuZGFu
dCBOVjEyIHBsYW5lIHVubGlua2luZw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IHBsYW5lX2F0b21pY19jaGVjaygpIHdp
bGwgYWxyZWFkeSBoYXZlIHVubGlua2VkIHRoZSBvbGQgTlYxMiBwbGFuZXMgYnkgdGhlIHRpbWUN
Cj4gaWNsX2NoZWNrX252MTJfcGxhbmVzKCkgZ2V0cyBjYWxsZWQuIERyb3AgdGhlIHJlZHVuZGFu
dCBzZWNvbmQgdW5saW5raW5nLg0KDQpDaGFuZ2UgTG9va3MgR29vZCB0byBtZS4NClJldmlld2Vk
LWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IENjOiBLaGFsZWQg
QWxtYWhhbGxhd3kgPGtoYWxlZC5hbG1haGFsbGF3eUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5jIHwgMTEgLS0t
LS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BsYW5lLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BsYW5lLmMNCj4gaW5kZXggYmMxYzgw
MWEwNmQ3Li41MzkwY2ViMjFjYTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcGxhbmUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3BsYW5lLmMNCj4gQEAgLTE1NDcsMTcgKzE1NDcsNiBAQCBzdGF0aWMgaW50IGlj
bF9jaGVja19udjEyX3BsYW5lcyhzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwN
Cj4gIAlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAxMSkNCj4gIAkJcmV0dXJuIDA7DQo+IA0K
PiAtCS8qDQo+IC0JICogRGVzdHJveSBhbGwgb2xkIHBsYW5lIGxpbmtzIGFuZCBtYWtlIHRoZSBZ
IHBsYW5lIGludmlzaWJsZQ0KPiAtCSAqIGluIHRoZSBjcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVz
IG1hc2suDQo+IC0JICovDQo+IC0JZm9yX2VhY2hfbmV3X2ludGVsX3BsYW5lX2luX3N0YXRlKHN0
YXRlLCBwbGFuZSwgcGxhbmVfc3RhdGUsIGkpIHsNCj4gLQkJaWYgKHBsYW5lLT5waXBlICE9IGNy
dGMtPnBpcGUpDQo+IC0JCQljb250aW51ZTsNCj4gLQ0KPiAtCQl1bmxpbmtfbnYxMl9wbGFuZShj
cnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSk7DQo+IC0JfQ0KPiAtDQo+ICAJaWYgKCFjcnRjX3N0YXRl
LT5udjEyX3BsYW5lcykNCj4gIAkJcmV0dXJuIDA7DQo+IA0KPiAtLQ0KPiAyLjUyLjANCg0K
