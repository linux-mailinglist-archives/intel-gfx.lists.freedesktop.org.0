Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zLwuIdoAMWowaQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 09:52:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CB968CF73
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 09:52:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=mXN4ADMu;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A9A410E89E;
	Tue, 16 Jun 2026 07:52:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 155B110E88E;
 Tue, 16 Jun 2026 07:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781596375; x=1813132375;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P0d3yfKcGawNB/IZBtSky9NBaqyO9ZpOdOKKFMKcKHQ=;
 b=mXN4ADMujpk6SBoiHQP8lyjKpNLtd4qX+Oh5JDW/0eEX0OJMgq3HdULH
 KNBLPmmE1KWvmDO/KpE2HHcO83BocansNFlmBMo8m2calvg75TUe4vrCo
 CiflcPo5B49k7QeN2ykqysXlluB5cfFC85iRNPUNY4Wr41R6m8cnjzX0G
 km8ThyClu2miFzyW1iyYogP25QBtCNYWf5OxZAqRR/96o7GfO6Q4Ub1Cc
 mwU1qaiAxASYoRrRt8c3Q62je5zQgb0bxl6dXU3F+fs6L3ryFMFPjhq07
 ERLqlOKZIhE3XXTqZ4c4sI2/ZHFLAhgOGi8xLXKys8gMnfAetxTw+cy74 g==;
X-CSE-ConnectionGUID: ljmrqIYzQQaQRxq267oEhw==
X-CSE-MsgGUID: FI8v0v0QSoG1eISNsWUWng==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82366193"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="82366193"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 00:52:54 -0700
X-CSE-ConnectionGUID: 2EI8zIEkRTa49WewpTap2Q==
X-CSE-MsgGUID: JqR5eBt+Tc+qbfWzriuZrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="271766850"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 00:52:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 00:52:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 00:52:52 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.5) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 00:52:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ffyhOSqE2CndtWcA6brrOwHUsx+spOj/jAb/zVCdREW0RpnLtXhReVHVdmj6ljmFbdMXtyVbogasEaJOciHSMPT+S8BSjtktibHj1gyDuvYv3HsDDm8MFTnR1+GdkVRAjiGP5ZiSdPOJIr/qt+hu3UjMTtIJ9EjPZ/6mUPAtuPWuiCEO9AIldYo3PAmNX9bPMRhlz3m+f7qOvZ+7VQ36HU04/uPVgnG6egI2PJ7rJKhE+G9m+btV5U7AsalYFHDGDGzORZ9makusf05CuW4keB1/pyhlOiifpq5QcDloXJi9i3o1NxbZ2IGFUpja2Yf0m0F1tfqT9iPbf1AidRyRGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P0d3yfKcGawNB/IZBtSky9NBaqyO9ZpOdOKKFMKcKHQ=;
 b=ynovFwqqAG3qVtcobFeH10oZ/CXovhpofXmsO5SLVGjrdI1Mv7PJgTCA3VSSnItxtrlU1ahb39l+6JAh4fOa6Wws5BW5T2Q6JnsyRKzymrXzQymMKqPajOufNsiOCH7mEPoiGtDgrL0g3QccBG69pMnoC8X1tJdv0HSmcyiGQnnrtFnvsr9eyhC4xnXGReA27lx8nB/sxJ+umMtEpXCxCnAlCi3mj4/KN4uHH95H3fMPOLu6kjvqLZdWstHIeDLv7uXnUzq6fcri9+NDa4I4YDuwyXbhUlhUW+dobB3E6o1nxdz2Vz401yoKhvCi9Vntqbb9UhzOj+hSOLrSYeSG0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by DM6PR11MB4755.namprd11.prod.outlook.com
 (2603:10b6:5:2ae::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 07:52:50 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 07:52:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v1] drm/i915/display: Program TRANS_VTOTAL from mode vtotal
Thread-Topic: [PATCH v1] drm/i915/display: Program TRANS_VTOTAL from mode
 vtotal
Thread-Index: AQHc/WSTmGxsRbjYjk+9bhyB5F/66rZAztyw
Date: Tue, 16 Jun 2026 07:52:50 +0000
Message-ID: <DS4PPFE901A304FEAE49E0D75D401F0242CE3E52@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260616073805.779362-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20260616073805.779362-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|DM6PR11MB4755:EE_
x-ms-office365-filtering-correlation-id: 659e03e7-277e-4124-ee2e-08decb7c43c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|38070700021|3023799007|22082099003|18002099003|56012099006|11063799006;
x-microsoft-antispam-message-info: gaAlGNpAS+hVcBQnjCyCqjIHIg0OqaFVce0mXx6nDh3+kP35gmeseOHIFUUoGlpnI+dyHka6rpuvBCYsudKtyLtrW+hE//eZJ7EMUx3LoY+ofsvlsYJlSZjO/fCUL/SLxRbrJDimPxls0HtfNy+SlnUZY+4D2shKp2RRGnWkYRf+G4yfjkzxRIPdoVpG55XeGFjNIFc/B1vGJFPGMfsu/Szajn2QVonBQ9brGbbQ+8+BjYSfADSio4Hkdzj9OXHvY/07hzxSnEAgx1AZscx9/jUiQO8i27e3KrnzZddD3C+8ld4RdQAOjFxYkuovcJ2CfaMAU9FCYkBNj8wqeIIOn0L3xxKeR5AD0/phKjgepbUD125FThSu7fV2rROkI5/r+wVcGTKegC8DgJidyDVbz1jm8kvv9B0d1vVcV5fUQI9xPCauzQL+FB0DCcAhhHzcoBhiVvLTse4si6JgxuiFKBUwQLR8xciSaJsOsMafmfGbYbgmAiH2t8RbLEKJR50SAOdwviz6K2SXslzJWI3aKkBsZqwHoSQNdZUt2IoP76iPJ/8KXBKOuhHP3uJ5AwSst1z2mh5aU4DjswA5A1y+cm+idIZxbrVdu95jM9l70MmcwK/9hiLR4NMX57kWWF0gsHU7nn5biwY+UyKlPUM082hPfFHOMXGavhvKcG1DVav92tKN6HggfFWa6y8fa5r0sbO1tKbjsgElooEDlG6F4GplwzeomuefkQDA3M/URN4eLmOlSz24oa2CY1Dqg0SS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(38070700021)(3023799007)(22082099003)(18002099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MWU4T3hDQVg1SEdZWnpsSFRlWGJUb0ZMWVpMVTkxZUZhN1pDckNadDJTVkNR?=
 =?utf-8?B?cEtiMkR1RUo0U0FZNnB1YjhTZ0pyUThoQmV4UEpuRWxUaWtOcHNNbjZTV3JU?=
 =?utf-8?B?Yy9YZ2xRRlROcVhKS0IvcjBiU3dXVmRXcnJRVDhTZjZ0bnpNU1ZscThyM2pO?=
 =?utf-8?B?emJ3SjQrZWtmQVFNWmhYcGNScFlIS0RCem4yMTlJTHBRT1dNRE5Rak5TWGll?=
 =?utf-8?B?UU1ubmdZaXI2TzR0TytKc0o5QThoVmF6cnlSQmQ4dXFIbnZpNzUrbnVjTklT?=
 =?utf-8?B?VWdxcVpwZ28rZDYyOFpiMjJ2eU1IL3JjVi9wOEJQSEt6REc4NWxCQUxuaGh1?=
 =?utf-8?B?NWJFSDFvV282QjlrcWdEaTlVY082SDB1L0JSczFPbGx6T2dvbTRwN1UrVUtO?=
 =?utf-8?B?OS9uS3grL1FaczRENkhvUnhoNVFaVHBQc0RpdG9vV0gyMzFlQlZ3UGVRSmxv?=
 =?utf-8?B?bnJDK0hZWlVWbGM4Q1o5bzRFTXU4RHhtZHpVdVdLUUdRK3VrM2lYbENVQzcy?=
 =?utf-8?B?SkJPSFY3QTIvbFR6MnNMWXp2Q3ZMTklUS3hLRFFWU21jdXpQUUJER0prTXN2?=
 =?utf-8?B?eXNxTlZMbjFwdTZ0cGtJQ0xXbDh5ZHYyZUFucGlzcEx6OTlFLy9LMmhFZGlx?=
 =?utf-8?B?K0xGSWFPdTN0eVJoUEU5Q1cwQWF6QUxUS2RtMWFOd1UvYmw4eFpiTGpiR25L?=
 =?utf-8?B?SExKODRWNVZJdTZLcXlYNkFNdkRXb0h1bmhEOUlrUytMbFBkT2wwbzdOZnhP?=
 =?utf-8?B?UFNzL1hUYmJ6elozOEZkM0RFdUNzSDBmRGswTFJ1dC90SnhxaThHZnpuNXhN?=
 =?utf-8?B?N1VSS1p4eG5Wb243SGs1VURUTWVYakpNWGp0bzdhV24yc3JkSVZKaTdIZ1VG?=
 =?utf-8?B?T1AvandxS0FoT25IS1d0YkEzeStGLzRoOWtzM1IwZmh4RU5MYVN3THZ0Y1F3?=
 =?utf-8?B?MG0ycVdTZ2VsZEZnSGRKaDZhdStlcGtXOXBUbmdCSjZ5eFFXS1BuVWhrYnpt?=
 =?utf-8?B?SFRGTCtMZHdxa2ZmSkp6bm5UWS85ZFJ4T3N6Q0dTaVFJRVhqaWtxWitRMWlW?=
 =?utf-8?B?TklYaWJha0FTL3A3R3pjN0pDNy9jbEcrTG54NGVnZllYYW9lS0Q2dERLeFJX?=
 =?utf-8?B?M1l2ajZrdXErclIrU09PNStweWtGR2pJWXUvRkx2RHlMazRiY0trWjhzMU95?=
 =?utf-8?B?ayswRkFTbUZOcWs2M1BDZWJMcWhkdE9UeklWRXdFbWFCZmZJc1hQem9pVTJW?=
 =?utf-8?B?WlBkR0RuSEJqZGJhSTZvQnBVWW84cXdFSzFmM1ZwalVuZThURHExcTBVM1pM?=
 =?utf-8?B?dWxqWFUxSnBxY3ZrVzhMblhFU3lnVnNxdkFkZjdmVlFzQm9ZeldGY0hZUkVk?=
 =?utf-8?B?Nk1RR3JzVXRXdlg3V1RjMFNLTzJBeng5ZVZSanVEd2NyWThxdzFWSzA0eWVW?=
 =?utf-8?B?Z3poaTBFLzRLM0xLN25LeUJta1kxeWRzb0lRelN4VlJuVmRpRGJnU1JhZnFt?=
 =?utf-8?B?RUtaWS8vbjlCcjB1OEJUcUFMQXpETHNKcFdJWWg0RHlpZEtBQ053SEVlT2oz?=
 =?utf-8?B?QUMvbUNvQ1NvVGFwbENDcjZCM2dkOHlzdHJERkl2MEM0WGVRaU1jaGZIYUtL?=
 =?utf-8?B?emxmQjQ2dVFwbUlZQkRYZzBldHgzWk9vTW80M0ZmSXprUmFjRE9rRlplazk1?=
 =?utf-8?B?Yzhaa3JEZVY0ODZaczZaQ3BzejZxZ212SW9DcU1LUEtPakRvQkdvSnUyM2FS?=
 =?utf-8?B?eWhSaDlEYWJTZGhxNURmeU0zSGcrc1lYdnM3V0dBbUlSeE5JVjgwMFEvSFE1?=
 =?utf-8?B?YXBOQnhGZWpPMEZ6Q1E2OUxQNTRYelRteGFnZWp2N0FPVzRLcU5SY3gyRGt6?=
 =?utf-8?B?TWZWRURRbHorTjczdzMzdDU1VmE4K05iaVdGWlozTVI2ZVI1YzcvWklaUloz?=
 =?utf-8?B?T1JiVkJNbktvZXYwQWYxV0ZISXByWVVENnlOOGNTQm95ZzVaY1V0TWJ1c0F0?=
 =?utf-8?B?SllBZDBPa3FXQkExZmJYdHEyeUNncnVkai9hYkZ6ck1HWUQwWU80Vi9ScWUv?=
 =?utf-8?B?MjBRSGFGODZzKzNVelhOdzNqRGZraHUxRXNCNnVQZGFSNFc2Y0E5NU9HdDJT?=
 =?utf-8?B?ZFJVZGxVTG41RnVkYVh2djlPY1BwcTlGYVFXYlVQbVpxbHBoSTdvdG5rL01j?=
 =?utf-8?B?N3VudllqT1hOOUNCMVlqRlAwN0NXSWJuSU9kdHo0OG91L0tOWDNseWt0R09J?=
 =?utf-8?B?c0huMDM1RWNSUkFwalYwVnlvYUQ3NmZwaUJ5TW1qZmYyTkJFNUJYdlJ0SXJB?=
 =?utf-8?B?aXZFTDdWdkNTKzhLdDBBam1NSWh0MExsenh5VCtMWnVpS2piSUt6UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: j0dDdj7ZoCXvYj9JXnPrEUEi0B4/0YwGgK9JLA4+plY8ayJqi9HQmZ8Luoi42HmQM8496OKhApNBBzmUFv8bDeLaNjWqKDBx2/T4kNgXMzE2lcO38SmlQHS/BNh04keL4vrwmhyeRHnlTSmfKW00tGnONeNFUT+aDSnlJUervoUJZLThv/KFzjASfwdZQ5s7gAX4+EftvwzXV27f1NBPB8sSXi73/KYO1pBvOOHdYVpMsh8y0Q3MvjyP7tCTuMDOonBWMp9pr39BEYXEeMJI5U6Dn4lZP7A859G9VnmFiSpfBrtf90JdWvQJHYj1x8JQxhsvTjt8iw4gCP8MQ1p1Hw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 659e03e7-277e-4124-ee2e-08decb7c43c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 07:52:50.6452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 81TnN3NsqBqkrKLg7aXyIpvK0PjXrAaUF4NLUoff/K4Dk58woST2MzDRKmW6mPtKqn1ylpDgnrEAyPrDoAWwEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4755
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D9CB968CF73

PiBTdWJqZWN0OiBbUEFUQ0ggdjFdIGRybS9pOTE1L2Rpc3BsYXk6IFByb2dyYW0gVFJBTlNfVlRP
VEFMIGZyb20gbW9kZQ0KPiB2dG90YWwNCj4gDQo+IERQIHRyYW5zY29kZXIgdXNlcyBUUkFOU19W
VE9UQUwgdG8gZGVyaXZlIE1TQSBWVG90YWwuIEF2b2lkIG92ZXJyaWRpbmcNCj4gY3J0Y192dG90
YWwgdG8gMSBvbiBwbGF0Zm9ybSB3aGljaCBzdXBwb3J0cyBWUlIgVGltaW5nIGdlbmVyYXRvciBh
bmQgYWx3YXlzDQo+IHByb2dyYW0gVlRPVEFMIGZyb20gbW9kZSB0aW1pbmcgaW4gdHJhbnNjb2Rl
ciB0aW1pbmcgcGF0aHMuDQoNCk1heWJlIG1lbnRpb24gdGhlcmUgYXJlIG1vbml0b3JzIHRoYXQg
ZW5kIHVwIGJsYW5raW5nIG91dCB3aGVuIHdlIG92ZXJyaWRlIFZ0b3RhbC4NCkFuZCBhIGxpdHRs
ZSBoaXN0b3J5IHdoeSB0aGlzIHdhcyBwcmV2aW91c2x5IGFkZGVkLg0KV2l0aCB0aGF0IGZpeGVk
Lg0KDQpMR1RNLA0KUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwNCj4gDQo+IEJzcGVjOiA3MDAw
MQ0KPiBGaXhlczogOTRmNjA4OTkyZjhjICgiZHJtL2k5MTUvZGlzcGxheTogQXZvaWQgdXNlIG9m
IFZUT1RBTC5WdG90YWwgYml0cyIpDQo+IENjOiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0
aXlhbEBpbnRlbC5jb20+DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiBDYzogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5j
b20+DQo+IFNpZ25lZC1vZmYtYnk6IE1pdHVsIEdvbGFuaSA8bWl0dWxrdW1hci5haml0a3VtYXIu
Z29sYW5pQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8IDE3IC0tLS0tLS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMTcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCBlMmU0YjAwYThmYTkuLmViNTRmMjBiMTg1OSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gQEAgLTI3MzEsMTUgKzI3MzEsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZXRfdHJhbnNjb2Rl
cl90aW1pbmdzKGNvbnN0DQo+IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YQ0KPiAg
CQkgICAgICAgSFNZTkNfU1RBUlQoYWRqdXN0ZWRfbW9kZS0+Y3J0Y19oc3luY19zdGFydCAtIDEp
IHwNCj4gIAkJICAgICAgIEhTWU5DX0VORChhZGp1c3RlZF9tb2RlLT5jcnRjX2hzeW5jX2VuZCAt
IDEpKTsNCj4gDQo+IC0JLyoNCj4gLQkgKiBGb3IgcGxhdGZvcm1zIHRoYXQgYWx3YXlzIHVzZSBW
UlIgVGltaW5nIEdlbmVyYXRvciwgdGhlDQo+IFZUT1RBTC5WdG90YWwNCj4gLQkgKiBiaXRzIGFy
ZSBub3QgcmVxdWlyZWQuIFNpbmNlIHRoZSBzdXBwb3J0IGZvciB0aGVzZSBiaXRzIGlzIGdvaW5n
IHRvDQo+IC0JICogYmUgZGVwcmVjYXRlZCBpbiB1cGNvbWluZyBwbGF0Zm9ybXMsIGF2b2lkIHdy
aXRpbmcgdGhlc2UgYml0cyBmb3INCj4gdGhlDQo+IC0JICogcGxhdGZvcm1zIHRoYXQgZG8gbm90
IHVzZSBsZWdhY3kgVGltaW5nIEdlbmVyYXRvci4NCj4gLQkgKi8NCj4gLQlpZiAoaW50ZWxfdnJy
X2Fsd2F5c191c2VfdnJyX3RnKGRpc3BsYXkpKQ0KPiAtCQljcnRjX3Z0b3RhbCA9IDE7DQo+IC0N
Cj4gIAlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBUUkFOU19WVE9UQUwoZGlzcGxheSwgY3B1X3Ry
YW5zY29kZXIpLA0KPiAgCQkgICAgICAgVkFDVElWRShjcnRjX3ZkaXNwbGF5IC0gMSkgfA0KPiAg
CQkgICAgICAgVlRPVEFMKGNydGNfdnRvdGFsIC0gMSkpOw0KPiBAQCAtMjgyNiwxNCArMjgxNyw2
IEBAIHN0YXRpYyB2b2lkIGludGVsX3NldF90cmFuc2NvZGVyX3RpbWluZ3NfbHJyKGNvbnN0DQo+
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjDQo+ICAJaW50ZWxfZGVfd3JpdGUoZGlzcGxh
eSwgVFJBTlNfVlNZTkMoZGlzcGxheSwgY3B1X3RyYW5zY29kZXIpLA0KPiAgCQkgICAgICAgVlNZ
TkNfU1RBUlQoYWRqdXN0ZWRfbW9kZS0+Y3J0Y192c3luY19zdGFydCAtIDEpIHwNCj4gIAkJICAg
ICAgIFZTWU5DX0VORChhZGp1c3RlZF9tb2RlLT5jcnRjX3ZzeW5jX2VuZCAtIDEpKTsNCj4gLQkv
Kg0KPiAtCSAqIEZvciBwbGF0Zm9ybXMgdGhhdCBhbHdheXMgdXNlIFZSUiBUaW1pbmcgR2VuZXJh
dG9yLCB0aGUNCj4gVlRPVEFMLlZ0b3RhbA0KPiAtCSAqIGJpdHMgYXJlIG5vdCByZXF1aXJlZC4g
U2luY2UgdGhlIHN1cHBvcnQgZm9yIHRoZXNlIGJpdHMgaXMgZ29pbmcgdG8NCj4gLQkgKiBiZSBk
ZXByZWNhdGVkIGluIHVwY29taW5nIHBsYXRmb3JtcywgYXZvaWQgd3JpdGluZyB0aGVzZSBiaXRz
IGZvcg0KPiB0aGUNCj4gLQkgKiBwbGF0Zm9ybXMgdGhhdCBkbyBub3QgdXNlIGxlZ2FjeSBUaW1p
bmcgR2VuZXJhdG9yLg0KPiAtCSAqLw0KPiAtCWlmIChpbnRlbF92cnJfYWx3YXlzX3VzZV92cnJf
dGcoZGlzcGxheSkpDQo+IC0JCWNydGNfdnRvdGFsID0gMTsNCj4gDQo+ICAJLyoNCj4gIAkgKiBU
aGUgZG91YmxlIGJ1ZmZlciBsYXRjaCBwb2ludCBmb3IgVFJBTlNfVlRPVEFMDQo+IC0tDQo+IDIu
NDguMQ0KDQo=
