Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B946BE7BE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 12:12:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EC3110E05B;
	Fri, 17 Mar 2023 11:12:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CCF910E05B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 11:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679051535; x=1710587535;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Qn8ib1c4qPcADRmLrwM1dcTlqZjjcRxetJNmgfFbA1Y=;
 b=TXHKf7eF+V6G4ilYcxTXsDN+YFKBY3ahZ+ZKvTuj6IQngt1LjtVmmlFe
 +9iOifcEeyl59akNkeW5yCVmxCfNJZQDj6qKtxDchYnO19gbYndzhNxhn
 EDHV328sQIjjDGwTL+B1pxxqFl7CfAMugLI3fhWEzuzahy9Qt0WkM3jCi
 CPATDfAokkRQOzbKGlew4bZHMaVwJEJ7x1HdCP9SgGqsJVOKCZfn6csEk
 LVWdgLFheygew7HBRN216ui/nJYmiwvouv9UI+nk0buhjLx9jLYs7HS/1
 5Ywk4hzjk83bcnFhoyqPBcZ1xZ+PGZdjHcwGgO34m3G/wPm7iYs+gjlrT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="340600632"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="340600632"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 04:12:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="712719345"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="712719345"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 17 Mar 2023 04:12:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 04:12:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 04:12:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 17 Mar 2023 04:12:14 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 17 Mar 2023 04:12:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QmxZuLI+DUVUkrORg3WJdpe9ihisx6/DKK5V9LJ5IgoV0Ye4rt59R6aZ9xAnKnYY1oxsu/U9yUA2eNYxxpHRPGt2hMO+IZFUVRdQpMH3s83PE4irAlQ0OmOW8oCRDqsfu7O1ebgRrgPEyFyCrwkfvSYwp1GKLlSKXhPxXroPXaj+3EinGilwhLHTmBTFFbYZm70RoTj2yi9E6eHpMG0nnI2AEmRcjGfM8DmgQeSzM66q0Y6ReFx3c43UjJl/ryTX9oPECakXcUwPxI7jJBdeL1rKfTle3UOs7yS4nWbsaYOZJ2BOTIEngLoFsBP8b3TVtiYDd+MbjWSYRFHmOrAupQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qn8ib1c4qPcADRmLrwM1dcTlqZjjcRxetJNmgfFbA1Y=;
 b=mosvaxh96Pmn8OSRHB3W4JiZmNXqKA9gdAlvWnkkq4SOV5WYJUnKcq641i2UewuT+wmVH9bSsWZfGDcfoX9tTtR/tipB4w6pUfYlWaSsAwMY8ridHkRoSYFeFVgDBx0CeYy7V54KjO4Fvc2bGuos5YbOE+ZptSM/qFXhNiX5W4wVsfiDNm+lrdT+QC+yJ/1CsnkiTKl/MdJw04O5a8HIaZU9LMHHRZD49cwch+cwKtu0V4j+I08bV8Q+ikXtV3eOOSWhcNABlCGsf3ZCj6E6XK1SxoW5L6d3cKjrGe9J5rJ3+fmjxtWT1Kra+KlQwpeWbGT2kD3Z7Au2y91VlPCYLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.29; Fri, 17 Mar
 2023 11:12:12 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6178.031; Fri, 17 Mar 2023
 11:12:11 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 0/9] drm/i915: Plane cleanups and extra
 registers
Thread-Index: AQHZVnVkt8PBC8GnBUe6cYGBdRwCnq7+1bcA
Date: Fri, 17 Mar 2023 11:12:11 +0000
Message-ID: <9eeb9076f73ee6d3d8ea682a2d66edf1380ba242.camel@intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN2PR11MB4661:EE_
x-ms-office365-filtering-correlation-id: 31981474-1393-431f-0bcf-08db26d874d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 34zaFciS6a7zuFc+ZH13wNyVF6b4iN/6U7ZyLrUPzwpU0udsHXnNoBbDHRxM7NEPmMgxyr/IeJ4uEF5MV4fOGxyVZ081XrAlcEPSRf5oD3uZ5b/sP3u6cmbmaP3p7B6y6IsX7c8rjdLgFl0H2vKTOzA5dHVBjvLQ8VUZLJRlYeXS5yLQHlnux5B523aD9jAcU7fKk/l5BR9Tis2iQh3X26DDpnHV3Zx7C7sDpbWOfAMjOKGcd/PBedhNRt6bvaSuIno9EhQTqmy8QrDG12lRIhBypTRjJVRXF3Kwswf2QO3inL35IZcqGj+kbtHtWP31DGT74yGm9sItBwLAAxAncwscSFhjxUNqpTbUNXSTewx2M+uzgQwDHrsRsCqwcdDbrtw5ZIqkytHVLZUNAomzVNd6US4mVHFwEbLLpilIY+euJJ7oHaaOL3ucRJhI1ytWM+V2se8ypIls+FqQGg5qz9ik81P0eTBe/7pPLnXvRVQDMltEdH6TpMIeZkS0wnhxiFX+ZR9f+gcY4QZTxlVCWcxRpQBLsoW29tTt3HY3Mrakr9bQvnVecGJNuanA3K0YT/bdYpMSietba7BLAMs5OkWWFaRW6Wsld0yAqi5do7u9xtFWHKtKv2OlwZ9qYz9Q4Jix8LJ0XPbE02FfiNwY3cvpivKXWL96GqmcDWlPKH9S64NDXhPe120b6BfMRQKbDz3gT26ozBLEDB8joNbwNg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(346002)(136003)(39860400002)(396003)(451199018)(2906002)(122000001)(82960400001)(83380400001)(316002)(64756008)(36756003)(5660300002)(8936002)(66556008)(66946007)(66446008)(8676002)(38070700005)(91956017)(38100700002)(86362001)(76116006)(110136005)(66476007)(478600001)(6506007)(2616005)(71200400001)(41300700001)(186003)(6512007)(6486002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UC95TFNLdnorTTdHL1pUcWptOEtCNkVkUE1GenkwenRnL0p3dkh3eUlud3Uz?=
 =?utf-8?B?ZjZ3SUxmWTBUWG5tU3FPb250c3dQQVJUYmJteXEyWVcyUlVSRkVnMzJlcFly?=
 =?utf-8?B?RWNUOGJYeVkvdkZLbVNWNVNTZStvT0E0YWgzWVNjZ1NoUnEyRE9oWS9kMVlu?=
 =?utf-8?B?SGZQNFRQdjZUaVl0WVBBVmZUOXV4RWt4a2YzSUxiVVhYemJoVjJ1cTJlZG5k?=
 =?utf-8?B?QWsxc2dwODUxMDU4cG5taUR6MktGTDBraVU3ZEhEQXVZMFI2aVpIeFF2R3ZQ?=
 =?utf-8?B?YitodmtxaWdNS1BEQnVqb010dWtQazYyRnorTXFvTWdJNUFzQytQbmJ3by9i?=
 =?utf-8?B?Sms1OFEwemcvUEs3T28xZkp2U2xOUUk5Q3ZTOXFPUkpoMEtMc1BGc2ZZZlR4?=
 =?utf-8?B?S1VLR3RTRFk3bTNvZE0rTS8yaUMwV09YM1l5UzZkaHFKOXY2VFI5LysvTzN0?=
 =?utf-8?B?YS9DR0RyT3BHVzFDZVdldkMxWHBvazI4T2htQk9sa0w2ekN2VXJoVXduSFpW?=
 =?utf-8?B?dGtFQWF1dnk0WnlhdWl5VUhYaE4ySW5ocGt1aDFqTHkwUEV6YVhlODkyaHhE?=
 =?utf-8?B?WXhlN2N1OWNJNEpZWkxIV1VlaURQQUUxT0tuSmVIRnZ4dFRhS2NmVFAxbTl3?=
 =?utf-8?B?NzFBdnpKSFFXTnlTQlZJcnFHSis4NDRrUTl0SG9VVi9QRGdhek4vQ0RvMUQy?=
 =?utf-8?B?bE9nQVJjY0NQck81Y0FrS0Z1Ym9HTXF5NlNTaFo0UEQzZWpiWG45a1pSOFBI?=
 =?utf-8?B?Q3hMRUU5ZGE2VjI3YW1VRDFlVm5TbkRyRDl1YmtlVnJDZXZFRW5LL3V2enVk?=
 =?utf-8?B?MEU0azdxYk5LWTFaSjBvU0dFZUlQVGRlN3dGT0tTaDc4Lzh0bHBCbnIvMjFl?=
 =?utf-8?B?R0xNU01sTDJqSzFhWHdRY1owWUNrUGZ2bnBiV3lYL1VVQkhhM3RQaTJqSzRO?=
 =?utf-8?B?VnAyd2d6a2x4eEZ5ZkVGOHNKck1xTktiSmNTcWkxdkV0aXZ2aFgyeExzOUtW?=
 =?utf-8?B?U3V0ekdiN3dJT0JYUWRxZjRuK0JKbDB6eE1lZ2hJbVRRU2ZVUkllUGVoTlUy?=
 =?utf-8?B?OVp1My81dFF5bWdCcmduUzF4LzZQYkR1c3F3MG05aFJkVnFYVjNQOW80OVJk?=
 =?utf-8?B?ckU4enMramsvQW91dFFxcDZMaWJlQjdpQjVCK0dub0RhaDRBVzBoeHJFVTVy?=
 =?utf-8?B?SGM2cENkVmtRZGhHRkxLNUFEWmh0czlLQ1BsTHd2YUJkb2grZDRRMnhJclN5?=
 =?utf-8?B?V2ptQWx3U1doNW1tQkpnK2NSczZ4Uk4xWU1mRjJnMEFtb0xrYVJHWXFRak5o?=
 =?utf-8?B?RHAzVDYyVVBqNkp0NGE4V2RrcklWL294cjFDZ29XYk4yMmU1MlVOOWVMZm00?=
 =?utf-8?B?dEJ5S3NLTGpROC9yT1R5Z0U1S083d3Z3TkZPRHIvMU00OGZJZW1Bdy9WRGJP?=
 =?utf-8?B?RzlFRjhxNXhNRWxCamdZa0NnR3M0ZVA0OGgwejdnem5uNkMxNDRITnpkdkk4?=
 =?utf-8?B?T2dGV04zR3lIWHBzU0JOT3U2UWtadU0zNVNoSmxLeUhJTWVQUkpoaFBSZnNx?=
 =?utf-8?B?TjRoaEY0RlVtMktycy9BVWZZdFpreVhpcEcybDQzR1VDNlE1NzF0dC81Nzly?=
 =?utf-8?B?RGRTTEIvbThMc1ZBaFRwWjRiOEtNblI1VXdKYUZHRWxleFY3VnJNb0FCZW8z?=
 =?utf-8?B?N2tBbkcwZFptdUpDdnJDUGY3M2ZwVFZWRVpMK1kxRDk4UDZubXY5YlMrNjZN?=
 =?utf-8?B?YWZaYzRsYWE4UTFhTlZuRHFOQ01wVWtORG00ZmdLOTlsOXRraE1yVkpBYU9H?=
 =?utf-8?B?d1RXSUlyak5taXdReUVGZWtaT1UrdHhOOWloRDVKd2hrYmduNVZ5NEMxamdu?=
 =?utf-8?B?V0xjZzJrVUNhTzJ6NGVBNWhBTC96c1E5Z3NMOFFmbGhBMXltUnZiNm5Od2JE?=
 =?utf-8?B?REFlUitYRlhLL0tGcVJIRmUwQnp6UlZHaitjTGR1NDY0RGV0QUZrTHJZZUVO?=
 =?utf-8?B?OENoQ2Z0dy9iTzVJdGNVNVRyVFJlQkNVUjVxUG8wdndFaDUvOUtFdU02WDc2?=
 =?utf-8?B?NVdBelV4YXhXRVFReXV6TUY3aDNBZGpmQW9mOHBMSWpkbWtyeG9PS1l4Y1or?=
 =?utf-8?B?WkttYm5wWVNRUnFFM2tnUmpWb1hUMkxXaFFxT3BYcnJaWS9uQzBGMHVqeWVn?=
 =?utf-8?B?cEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CD3E0A010EBC4C419444C8BBA4B69CD1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31981474-1393-431f-0bcf-08db26d874d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2023 11:12:11.7408 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: azr59KQd/sn6SOHRmykhpvz0/XMJsBnweX3FjJlsAvnuHiWLoXMFAXDoIH9drkNB8c7yY1vdk17iD9z+8eruLwOAL5ocmT+hW2DVlaQwYi8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4661
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/9] drm/i915: Plane cleanups and extra
 registers
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

QXMgeW91IGhhdmUgY2hlY2tlZCBteSBjb21tZW50cyBhZ2FpbnN0IGRvY3VtZW50YXRpb24geW91
IGhhdmUgZm9yDQpvbGRlciBwbGF0Zm9ybXMgKG9idmlvdXNseSBiZXR0ZXIgdGhhbiB3aGF0IEkg
aGF2ZSk6DQoNCmZvciB0aGUgd2hvbGUgc2V0Og0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2Fu
ZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXIN
Cg0KT24gVHVlLCAyMDIzLTAzLTE0IGF0IDE1OjAyICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3Rl
Og0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiANCj4gRG8gYSBiaXQgb2YgY2xlYW51cC9yZW9yZ2FuaXphdGlvbiBhcm91bmQgbW9zdGx5
IHBsYW5lDQo+IHJlbGF0ZCBzdHVmZiwgYW5kIGFsc28gYWRkIHNvbWUgbW9yZSBwbGFuZS9waXBl
IHJlZ2lzdGVycw0KPiB0aGF0IGFyZSB1c2VmdWwgZm9yIGRldmVsb3BtZW50L2RlYnVnZ2luZy4N
Cj4gDQo+IFZpbGxlIFN5cmrDpGzDpCAoOSk6DQo+IMKgIGRybS9pOTE1OiBTdG9wIHVzaW5nIHBp
cGVfb2Zmc2V0c1tdIGZvciBQSVBFX01JU0MqDQo+IMKgIGRybS9pOTE1OiBzL1BJUEVNSVNDL1BJ
UEVfTUlTQy8NCj4gwqAgZHJtL2k5MTU6IERlZmluZSBtb3JlIHBpcGUgdGltZXN0YW1wIHJlZ2lz
dGVycw0KPiDCoCBkcm0vaTkxNTogUHJvZ3JhbSBWTFYvQ0hWIFBJUEVfTVNBX01JU0MgcmVnaXN0
ZXINCj4gwqAgZHJtL2k5MTU6IERlZmluZSBza2wrIHVuaXZlcnNhbCBwbGFuZSBTVVJGTElWRSBy
ZWdpc3RlcnMNCj4gwqAgZHJtL2k5MTU6IERlZmluZSB2bHYvY2h2IHNwcml0ZSBwbGFuZSBTVVJG
TElWRSByZWdpc3RlcnMNCj4gwqAgZHJtL2k5MTU6IENsZWFuIHVwIHNrbCsgcGxhbmUgYWxwaGEg
Yml0cw0KPiDCoCBkcm0vaTkxNTogUmVsb2NhdGUgaW50ZWxfcGxhbmVfY2hlY2tfc3JjX2Nvb3Jk
aW5hdGVzKCkNCj4gwqAgZHJtL2k5MTU6IEV4dHJhY3QgaW50ZWxfc3ByaXRlX3VhcGkuYw0KPiAN
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHzCoMKgIDEgKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNs
X2RzaS5jwqDCoMKgwqDCoMKgwqAgfMKgwqAgMiArLQ0KPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyB8wqAgNjAgKysrKystDQo+IMKgLi4uL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5oIHzCoMKgIDEgKw0KPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmPCoMKgIHzCoMKgIDEgLQ0KPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmPCoMKgwqDCoMKgIHzCoMKgIDEg
LQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jwqAgfMKg
IDU5ICsrKy0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5owqAgfMKgwqAgMiArLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c3ByaXRlLmPCoMKgIHwgMTgzIC0tLS0tLS0tLS0tLS0tLS0NCj4gLS0NCj4gwqAuLi4vZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlX3VhcGkuY8KgIHwgMTI3ICsrKysrKysrKysrKw0K
PiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGVfdWFwaS5owqAgfMKgIDE1
ICsrDQo+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jwqDCoMKg
IHzCoMKgIDEgLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaS5jwqDC
oMKgwqDCoMKgwqAgfMKgwqAgMiArLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA3NyArKysrKystLQ0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2d2dF9tbWlvX3RhYmxlLmPCoMKgIHzCoMKgIDYgKy0NCj4g
wqAxNSBmaWxlcyBjaGFuZ2VkLCAyOTUgaW5zZXJ0aW9ucygrKSwgMjQzIGRlbGV0aW9ucygtKQ0K
PiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nwcml0ZV91YXBpLmMNCj4gwqBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9zcHJpdGVfdWFwaS5oDQo+IA0KDQo=
