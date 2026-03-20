Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGgMCeA4vWkN7wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 13:09:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F092D9EBA
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 13:09:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D9110EADD;
	Fri, 20 Mar 2026 12:09:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e6tV6jr2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3218210EAD8;
 Fri, 20 Mar 2026 12:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774008541; x=1805544541;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wNW55cTzJ98Ts0hnrn5RRJj2CbjKHOWKvHKIXrDYgIQ=;
 b=e6tV6jr2FbOdb5LVC8Yy53JMiiaqN+5VB/9NK23lqCfGgFr6r1e8kpQt
 5FcpZwbRxzkW+wKD05Zm89AtbbKE2IQ46C0tv3zyJgc+hAcSXS7s7g313
 aFx4sb9ALqxs1UvCpPrZSpdmu7oxh0JF/huVkArmM+R+OJe+mVrdfMDsx
 MexJEWXvs3FaDIZsQ1WPJsmTBgajsbuwwPl7gfAocP1M7ZKVogT+6o4BZ
 1qNgHAAoJQ+nfobQ8X62/LCiZLRuniYrE7YdA1YaolF9/LuIqDbbByeUx
 10K1C90uHFdzTXK4d1kgRPJL68zr4e+alX17ZVNEqa5YnF0UUr9QKmnyG Q==;
X-CSE-ConnectionGUID: dLedsKNZQdS9h3lL4sZ/hg==
X-CSE-MsgGUID: ot4C+rMDR5SAFgXxrVBvZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11735"; a="97709479"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="97709479"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 05:09:01 -0700
X-CSE-ConnectionGUID: gS3BjP0cSjempWG2fT/siA==
X-CSE-MsgGUID: VfAwok9bRpinyzz7G0mHkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="223293104"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 05:09:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 05:09:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 05:09:00 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.27) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 05:09:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c9S83rt5SeBOxU1WvP9shkif/EEVi4sVGxZuNj+CzRW6bpWi1x+NxG4kW0YnnmIZ7LQxXXip4n3p8IWIR1G8LIHGA4wmGYeGYqA+kcRi+ko/3P5B67GiNCM2Xd8fG1NNJW0ppW5cjFFAXgK2O+tesneGI3XKCWeHoi6x3TzPQ55FP1PuUWZLRZH0XIR6Ud7w3eBmha4Wn5ZqiG7wQ1/uNNpDRt3v2GUgaVUUHKvroRIJpbP7K/mdAxE6vAXIST035EEOHTkIGV6W3+gy1mLuKrkqIh6pVsaC/4pRjjabs+pU8hmKPmzPImShYpuuXV96BugycaL1CPBqGpd63tDJqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wNW55cTzJ98Ts0hnrn5RRJj2CbjKHOWKvHKIXrDYgIQ=;
 b=b5ULKZQuy54z9fELGTQ7033XCR37XBjINKL/0+uC6txcOo/I49vsqtozCZyg00oTkLOY1fwhy9wOCWoxOZS7gUDq9vWEQp3cxeg62HwukVJ0jbr9OHYWgHUgB5/ZRdUhh05w5Iw1+ibEDa+Ln753C8gMWwdHS3mkToG4Nsqi/1ckWcuEfbBMT3TyZH/hDJNgr4W51QjaPHFOxuvU9OpusCL++5hEzz1lak7cOxbXKO9vbvQKc7S5xCgVocRQ9SZz9NlZTNZJHqlCOvw9xqQRHuXLZW2ITDu838lhLaixP+SpWzeCbvY06ZBrglX+JuOlEjg/QSsyvF3yp81aNlSk0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB7562.namprd11.prod.outlook.com (2603:10b6:510:287::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 12:08:57 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9745.007; Fri, 20 Mar 2026
 12:08:57 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
Subject: RE: [PATCH 2/3] drm/i915: Relocate unlink_nv12_plane()
Thread-Topic: [PATCH 2/3] drm/i915: Relocate unlink_nv12_plane()
Thread-Index: AQHctWOYGy5Xk6Vmo0+BJzsoBL+M2rW3WbwQ
Date: Fri, 20 Mar 2026 12:08:57 +0000
Message-ID: <DM4PR11MB6360C1EE7F2914CFE71A0A3CF44CA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260316163953.12905-1-ville.syrjala@linux.intel.com>
 <20260316163953.12905-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20260316163953.12905-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB7562:EE_
x-ms-office365-filtering-correlation-id: 6640e469-ad14-4f42-f1b6-08de867976c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: sDCmuA3Pwt2vs/HCp/mH/6gXY+LBFafEuNKZjq7Q/3d54rcrlgygYm7+XFbL8sygLDKwE3OR0TeLhlNBipGSX7TmnNkfkOg4jxPVDJviAgpJiOL3iP+4u88UovqmOrMBZYr3Lcd/rECDWz7wNTnK4gjJkbO1oLHaQzqDpY/iFhV3h9dwwU/ZRQ5n7yAs2W13VNViiturFwZqb8AU0YlQV/B/fFwXtk+6expDHpTUsyT3VU73JTDy1kz73NYG1TR0qV4PlIJ9aZJ6bwilJSOcizhB7CiOM0h6nwPy19tm0yuZyUIO17iRs8whDqJk9nY6dCBpNWhpZqNdjxDGb2FIyOOer8r48hGPB2QVliyWSAUDnpd0p27vJbysSIxmNoNUKgbv1xtdfDUx7ip+wAV2QlvnkGqPMYqP64N+QGcSphelq+9M9wYRIt+5TTT//YdFIBPvUDd8SHH6k+s0lutDLOwKbdO/z+FS6mXdcO3Y5JAOFlu+4UK0ZZ/8wYrACNaJHmMWl3vG9g2CeXrjaRK60jXbXcG4Ek6/jMAEqUI7VkVCH/sj6hv6j0IDYu8CM6mU6c4pUPSymGLFgznTQB20ypUlUJ0SVoQ3+FqQBeVePZeKGMtyVwQBEvMYsftrbNhDkcqhJvQM7hrPk/9gtKHEX2El89xiU71VILCyFnNBTv/ImK+PnAyKxqb97zKfFs+jypceZ4VYuY4MWgKI2n3RB6WUb/wetVwMSBR0G9tcl6q72WWhlI9f3XH+bIjkX73yULkHm5S/KGamW4uiYhPyuDNkQwdBtZjvpDjKWJzkgqk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MjRFd0NqL25mYlpUSE96VXNseE1nMGJYVDhCUXhpK1o0cWM2S2VuY0JDbkZ4?=
 =?utf-8?B?Yit3TUNLS1NrRVgwbnBRZXZzemVLV1ppOUJWK25SWk9nbmFSeG42RnVxYTBR?=
 =?utf-8?B?cEZnV3ROUW1LUjNWR3krUTZjeGNaUmtUdnczdnkxNGpqUlpDNHgvWUJxenpw?=
 =?utf-8?B?TnRSUmJvdjkvc0Q3L0YwNVEreSt0b0RyQW1yTEo4WGlCd0o1eHpGdWZ1NmZz?=
 =?utf-8?B?ZzVmeHdQRGdnNlV1YnlHV1lzNDZOKzV6Ty9qdk01b08rWW1PZk9mUytUaEw1?=
 =?utf-8?B?dzF3QVhXZEN5eFJiUDllem14b2N1UFdja2E1VWoxQklHSGNXRjFnRXV2Vlc4?=
 =?utf-8?B?WTlnck85L2J1YzZrZUVoUGQyd3JUaVJKNExYTGkzZ2l3SW5iRXh4TVU1OEtV?=
 =?utf-8?B?dDlBdlZYZ0NHcUNvWkN6TlV1dDdOcVNLZHQ4MnZpQ0ZOK3dIUDJYUWxMU2Nm?=
 =?utf-8?B?cGYwNldkNlNJQnlwMm5tc3ZkNm9VS1lsdlM5UVAxZ210S3BXajhaL091SXhZ?=
 =?utf-8?B?NW1YR1c0TzRlMExSK05OM1J0Qm5CQ1FQR0o5KzB0ZE45Zi9zeTNZU0FoUndi?=
 =?utf-8?B?UjZianczMXAwZ2xmYzE2dUJ5UlJXR2VXWmdubS9ydTYzQzZoNThadjExQWho?=
 =?utf-8?B?WnduMnkreTZtU1E4Q3Z6YnpQWjUxS1ZIclRpTUpwVW1UUDFteWtpRFViU1Zx?=
 =?utf-8?B?Ui9NSXJ4U1lJakQ4UTBGOEFOakxrcWp6OS94SHdwNDF2MEFRbnlKZkdLZUND?=
 =?utf-8?B?YjVBQ1RqL29FQThkbnIyczF4ZWszSTl1bE16Zk5pdC8rSFEwSkZOTStqbThI?=
 =?utf-8?B?Z1JBL1pmbGZBOVFRbFk1dzlpbytreHlkL1g5akk2RGhWNDl2dE9GN0V3RmFk?=
 =?utf-8?B?OUp2angrZXFZN01icnEzdmdoVFBMS2Roc3B4Lzg4NTV2N05TelZOR3lSR0Qx?=
 =?utf-8?B?SWlqNEIzd3c2TDQ4bEJEY2xxVER3K0dwYVJRNEZnaDBBY3B6Q0xJN3oxb1gv?=
 =?utf-8?B?bTRMUTZTZzd6T3c1WFY4cUZHRzRia1BCaVdoN0RwQWRESzNDQjRkYjVmT0dB?=
 =?utf-8?B?Z2s1MXZrbVVJZVBieU55WjR1WWJ1Y1N3dkJpSWduNUJPbnNRWjEwVFZPUU05?=
 =?utf-8?B?QVZBMGdyMitGUHJjVitXTkxOWTdkV3Z6L2hDaFEydWtTLy8wOEtoWWxWd3pX?=
 =?utf-8?B?dkllSks3dFJOMDFqRTV5b2Fnd1Q3Z2hSVXVTaUJ2SThZUmZzdVVmOVp5SUpi?=
 =?utf-8?B?S0lmQjFEcnpNR2ZqeG1VL2F3dGpVbGVwd3pUVkMxMStRUHRPRkFicDlWblMw?=
 =?utf-8?B?T1YzaHc1MHF4cTdmSnVONzA3QlcrY0s1b1RPdm1wS1lrTS9BS09NL2RPVVJi?=
 =?utf-8?B?cWFhUnhEblV1U01lTmNGcDRpVGV6T2ZZZEJlSUVMaVArSTVrK2VLUTFkeTQ3?=
 =?utf-8?B?S252am8vU21tY1MwZDRQcWhiSzJWSTYzYzNXVUhtZE9yZzZBc3dJVWZRdDND?=
 =?utf-8?B?aGFNRFlwWnBWU0lPeXBKeVVVSDJUQTNtSDFpLzA2bjRXcVEva2t6T0xRZkdu?=
 =?utf-8?B?WE9TMUlZK3grb3dFb1ZDU3o5U1BxbW94Sjd5aktsZmNMKzZ2eXoreE5RMjJ4?=
 =?utf-8?B?NDd1bnVTUENHeVBSOFNBR0pUTnhvb2dPOWgwUGoyOFBJN0lYV0RZdytKWEVh?=
 =?utf-8?B?c3V1MGN2UzlpRklJbEVGckdyVi95clZxeWRld2pDTkpRQ3N3bHk1ME04SVlS?=
 =?utf-8?B?RENac3RZT29OS3RxZzJIYjNucExjanNnQXIzNWpFVFZPR2VGQkZFbFhsZFJu?=
 =?utf-8?B?VWdsVkF1SFJUbFFlZmZxMExHUmFMR1hwRDh0dUd0d0poODk2RHU5UVNubVEw?=
 =?utf-8?B?cW9Nb2orOFFpUXM5S1dGZzB1ZTNSN3JGMnVaWGpjVmE1UVR0Um9qN3ZRNVBC?=
 =?utf-8?B?K0NjSEh4L2dGbVBCeWp2SUU5blBMUHFNc29BOSsyOGUvTUVhajVFVkE3K1Bt?=
 =?utf-8?B?dUhURFpDVDJvdC9mREtuY3BRNWZUNTM3TGFBdVlsK2cxRlZSUUlrb1N3NC9z?=
 =?utf-8?B?T2ozM0wySjU3REpKb3pSR0NhY3pKeDlSc3JBNUNOa0ZNa0dzMklGbW5SNTRz?=
 =?utf-8?B?SHI5L2tSUHZKV0ZHM1FncXQ1VXlTSXlvNHJ1amg4UTJkL3RTck5JVUd0SlRn?=
 =?utf-8?B?RG9zeXQ4cHgzRlVrSnJTKysxOXN2R1B5VGhqUlhPY1FwYlRqc2ZoUFJtdkJ5?=
 =?utf-8?B?YWFaM2Yxc1I4NHRSeFpjMDVseVF0b0xlTFBwNm5vQWxYbjRvNkpSeDdqYWtT?=
 =?utf-8?B?bENtdVBNMnN0RUovMW9vVm00clI5WkVmYzJkeThCcjZyTTJpUzBZdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kvX2rbdQS1KLRpGQP15eeV/BZmPxgHZQUy/HvgUA11ndniBnUfmOR3xk4OmrgANS/F+zFPrUbCGf8fEoVZRC+oichcwXWXB3ojlMdugYHLVz+tDCiaselYE8lyD7uy1H5e98SFpAEKkShO/cbnssHF8cW6wpEFr9Qv+mYt7l+HAvv0cNXdsO9KiqUxzv53Isr+OOaMPI1IN19BCCAPF6dCi62abhre3OXICijj7XfMTSivbrL90Wvimhiqwngyrq4L86WDWXQDWFFFqWUtivx4WJUxWxBEUJPCt7u5kp5iqskvYJOTO827yMosFdovv9LWIUHsk5Q51tMBbu9r01eA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6640e469-ad14-4f42-f1b6-08de867976c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 12:08:57.4292 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 06r4HrVeFU1Kizxhq9iA28NG8ROrWbd8J8JXfPgf6O5G/Hr5igPpSP3PiplOEsMRqOxfCNMA7q8sfUSRcXosKw==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 80F092D9EBA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBNb25kYXksIE1hcmNoIDE2LCAyMDI2IDEwOjEwIFBNDQo+IFRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVl
ZGVza3RvcC5vcmc7IEFsbWFoYWxsYXd5LCBLaGFsZWQNCj4gPGtoYWxlZC5hbG1haGFsbGF3eUBp
bnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAyLzNdIGRybS9pOTE1OiBSZWxvY2F0ZSB1bmxp
bmtfbnYxMl9wbGFuZSgpDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gTW92ZSB1bmxpbmtfbnYxMl9wbGFuZSgpIGFoZWFk
IG9mIGl0cyBmaXJzdCBjYWxsZXIgdG8gYXZvaWQgdGhlIGZvcndhcmQgZGVjbGFyYXRpb24uDQoN
CkNoYW5nZSBMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEu
c2hhbmthckBpbnRlbC5jb20+DQoNCj4gQ2M6IEtoYWxlZCBBbG1haGFsbGF3eSA8a2hhbGVkLmFs
bWFoYWxsYXd5QGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3BsYW5lLmMgfCA0OSArKysrKysrKysrLS0tLS0tLS0tLS0tDQo+
ICAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5jDQo+IGluZGV4
IDA3NmI5YjM1NjQ4MS4uYmMxYzgwMWEwNmQ3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3BsYW5lLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5jDQo+IEBAIC00MzcsNyArNDM3LDI5IEBAIHZvaWQgaW50
ZWxfcGxhbmVfY29weV9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gKnBsYW5l
X3N0YXRlLCAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIHVubGlua19udjEyX3BsYW5lKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAtCQkJICAgICAgc3RydWN0IGludGVsX3Bs
YW5lX3N0YXRlICpwbGFuZV9zdGF0ZSk7DQo+ICsJCQkgICAgICBzdHJ1Y3QgaW50ZWxfcGxhbmVf
c3RhdGUgKnBsYW5lX3N0YXRlKSB7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkg
PSB0b19pbnRlbF9kaXNwbGF5KHBsYW5lX3N0YXRlKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfcGxhbmUg
KnBsYW5lID0gdG9faW50ZWxfcGxhbmUocGxhbmVfc3RhdGUtPnVhcGkucGxhbmUpOw0KPiArDQo+
ICsJaWYgKCFwbGFuZV9zdGF0ZS0+cGxhbmFyX2xpbmtlZF9wbGFuZSkNCj4gKwkJcmV0dXJuOw0K
PiArDQo+ICsJcGxhbmVfc3RhdGUtPnBsYW5hcl9saW5rZWRfcGxhbmUgPSBOVUxMOw0KPiArDQo+
ICsJaWYgKCFwbGFuZV9zdGF0ZS0+aXNfeV9wbGFuZSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJ
ZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBwbGFuZV9zdGF0ZS0+dWFwaS52aXNpYmxlKTsNCj4g
Kw0KPiArCXBsYW5lX3N0YXRlLT5pc195X3BsYW5lID0gZmFsc2U7DQo+ICsNCj4gKwljcnRjX3N0
YXRlLT5lbmFibGVkX3BsYW5lcyAmPSB+QklUKHBsYW5lLT5pZCk7DQo+ICsJY3J0Y19zdGF0ZS0+
YWN0aXZlX3BsYW5lcyAmPSB+QklUKHBsYW5lLT5pZCk7DQo+ICsJY3J0Y19zdGF0ZS0+dXBkYXRl
X3BsYW5lcyB8PSBCSVQocGxhbmUtPmlkKTsNCj4gKwljcnRjX3N0YXRlLT5kYXRhX3JhdGVbcGxh
bmUtPmlkXSA9IDA7DQo+ICsJY3J0Y19zdGF0ZS0+cmVsX2RhdGFfcmF0ZVtwbGFuZS0+aWRdID0g
MDsgfQ0KPiANCj4gIHZvaWQgaW50ZWxfcGxhbmVfc2V0X2ludmlzaWJsZShzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIAkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfcGxhbmVf
c3RhdGUgKnBsYW5lX3N0YXRlKSBAQCAtMTUxMiwzMQ0KPiArMTUzNCw2IEBAIHN0YXRpYyB2b2lk
IGxpbmtfbnYxMl9wbGFuZXMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+
ICAJaWNsX2xpbmtfbnYxMl9wbGFuZXModXZfcGxhbmVfc3RhdGUsIHlfcGxhbmVfc3RhdGUpOyAg
fQ0KPiANCj4gLXN0YXRpYyB2b2lkIHVubGlua19udjEyX3BsYW5lKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLA0KPiAtCQkJICAgICAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRl
ICpwbGFuZV9zdGF0ZSkNCj4gLXsNCj4gLQlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9
IHRvX2ludGVsX2Rpc3BsYXkocGxhbmVfc3RhdGUpOw0KPiAtCXN0cnVjdCBpbnRlbF9wbGFuZSAq
cGxhbmUgPSB0b19pbnRlbF9wbGFuZShwbGFuZV9zdGF0ZS0+dWFwaS5wbGFuZSk7DQo+IC0NCj4g
LQlpZiAoIXBsYW5lX3N0YXRlLT5wbGFuYXJfbGlua2VkX3BsYW5lKQ0KPiAtCQlyZXR1cm47DQo+
IC0NCj4gLQlwbGFuZV9zdGF0ZS0+cGxhbmFyX2xpbmtlZF9wbGFuZSA9IE5VTEw7DQo+IC0NCj4g
LQlpZiAoIXBsYW5lX3N0YXRlLT5pc195X3BsYW5lKQ0KPiAtCQlyZXR1cm47DQo+IC0NCj4gLQlk
cm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIHBsYW5lX3N0YXRlLT51YXBpLnZpc2libGUpOw0KPiAt
DQo+IC0JcGxhbmVfc3RhdGUtPmlzX3lfcGxhbmUgPSBmYWxzZTsNCj4gLQ0KPiAtCWNydGNfc3Rh
dGUtPmVuYWJsZWRfcGxhbmVzICY9IH5CSVQocGxhbmUtPmlkKTsNCj4gLQljcnRjX3N0YXRlLT5h
Y3RpdmVfcGxhbmVzICY9IH5CSVQocGxhbmUtPmlkKTsNCj4gLQljcnRjX3N0YXRlLT51cGRhdGVf
cGxhbmVzIHw9IEJJVChwbGFuZS0+aWQpOw0KPiAtCWNydGNfc3RhdGUtPmRhdGFfcmF0ZVtwbGFu
ZS0+aWRdID0gMDsNCj4gLQljcnRjX3N0YXRlLT5yZWxfZGF0YV9yYXRlW3BsYW5lLT5pZF0gPSAw
Ow0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgaW50IGljbF9jaGVja19udjEyX3BsYW5lcyhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJCQkgc3RydWN0IGludGVsX2NydGMgKmNy
dGMpDQo+ICB7DQo+IC0tDQo+IDIuNTIuMA0KDQo=
