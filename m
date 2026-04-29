Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEJwM8jm8WlZlAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 13:08:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3350A49358E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 13:08:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3DE810EF2E;
	Wed, 29 Apr 2026 11:08:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aE/pkRJQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BF6510EF2E;
 Wed, 29 Apr 2026 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777460933; x=1808996933;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0ETnCowwZB4e1J7ETEOKGKL2I2jdqKVWYjG0Ce//R1E=;
 b=aE/pkRJQW6DDbNCdn7PaKU1Uxc0wekPmAcN5grqvjHti8y0okAitnAB4
 wYAMwSXd3n1DIavx4Tn61cKJmpcy5BgShTGBE+gAcpy1wdlvWrcPv1ikh
 m1wBjIU3vso3BHFni2+pnREyneMV00VRWeIJMUzvpW1eFInJitQn+ew4k
 J3plvhr8yI6w/NTs3MGF4m3SyZ+arC+v/6JTPXOHKpMEYKpNpks3CUCK/
 UMkpcOwd4ftJi5Ia7KvwzMN3i9IAKy/uwU9ZQyJs748w9OM65STxAo0Ig
 xebKgIW4US+LdrqSpy+4iG86TFL+NwNuwlGJlyLNj/tIq+mhWwsiWrN5o w==;
X-CSE-ConnectionGUID: GGw7VCkKQ1One+RlZkzWtg==
X-CSE-MsgGUID: YxBOwLd9S7CdJhq/jleKQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="89081547"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="89081547"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 04:08:53 -0700
X-CSE-ConnectionGUID: Hp83yDYVSjK1ch/Y/AYfyQ==
X-CSE-MsgGUID: 9GVyNPXSTCugxVJGYvR5Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="234500574"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 04:08:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 04:08:46 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 04:08:46 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.56) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 04:08:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EhraSAdwmhmfzxwa8kgE26kNcNWo03AsY3HFMxAMeolY3+q/1cHHtNINUB3dpel8HbNYX4zoafnSU6QcBHa+GZsHTwij7qw6mnghEi5Tbjz4tijhyVnxLchnO9t9MTagnU6UK34xp1IREC7sXIbJcRULmkLhKISC5QzG75UwfZXHoB5FbUmAD47E9yib+9beweh8D8sasuWwLiC052M+DYrxqAn6E6GF7TwKAdNbBYELysCG+kFfJ6hrNleLWCI6rMpEZiKN/CO+3pPYAEdZCkXJ/ftn0igLWTE10QSunGCgwrWPI1ceEL1bZzN2p11Ry5JyxJczZi+tIE034ungpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ETnCowwZB4e1J7ETEOKGKL2I2jdqKVWYjG0Ce//R1E=;
 b=KljxGFFbDHtLZTsJlabsWIg8Gs3NdevouEQpdLCphQQqk6avNJh5O/0sZSV2Qtuf9BZKQ3GE7oCwWXBYYd0BcwGkiYQgqt5W6iXo/sMwhz7dNDCVbjloqOAP/rA7gJ37+vjK41j2/yaXwpeljuul+GFAOFQQmqGzT/BKjgmTHCQCQxanTFSRu66xtXSH7DO2LWL3MCB+Sy3JGr8Mvd3dmBFULFt8pmFvUSq/cgi/Syqi33DcEZSohP9azCPYzJW7HLzr1VvO7dD8E2RJ71uT87RCLq6t77sH9RrKN31Jp4T445Z4H11tIor2Kik9N4ncSXFBx1w9pYvJRxh11XOfnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by SA3PR11MB7534.namprd11.prod.outlook.com (2603:10b6:806:305::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Wed, 29 Apr
 2026 11:08:43 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%4]) with mapi id 15.20.9870.020; Wed, 29 Apr 2026
 11:08:43 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?utf-8?B?SnVoYS1QZWtrYSBIZWlra2lsw6Q=?= <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH] [RFC v3]: drm/i915/display: Use ceiling division for NV12
 UV surface offset calculation
Thread-Topic: [PATCH] [RFC v3]: drm/i915/display: Use ceiling division for
 NV12 UV surface offset calculation
Thread-Index: AQHczPno/CvebKE4ZUW5n0rrvH4orLX19saAgAAARbA=
Date: Wed, 29 Apr 2026 11:08:43 +0000
Message-ID: <PH7PR11MB8252A3D0F358669F7A6FBFCE89342@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20260411171521.162189-1-vidya.srinivas@intel.com>
 <20260415165849.187693-1-vidya.srinivas@intel.com>
 <4fcaf7b2-05de-48e5-8d0f-10d6a4e8d4ee@gmail.com>
In-Reply-To: <4fcaf7b2-05de-48e5-8d0f-10d6a4e8d4ee@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|SA3PR11MB7534:EE_
x-ms-office365-filtering-correlation-id: 95fcc46b-91c3-42a9-83fb-08dea5dfad55
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info: GYk1P8gB47MvXqq4bZyOITvchX63mJBAvOFLD1FRhOoevEntxcaZDAd9mCcf55WdHSfZ6UaynU3Hv/Pss5iqD/bageBZHQ0QuD+BcJyCzYrsjKfkZNk0bNDAUKwRB9reuOAgipYIX3TWfyB1n6LJvVYGvesgmUKpVl9jwTvKRLIi8UN/k2GU1ldy+czAmzgybWw9tYcORBNSXAaS7bLYgOXBgI3ySO6InmbdUXRjmuVQZhQU1UgiVxFAi8fpOuEM+sjqPDUOcYY2wHid8PWBYWW7x9Pwl7JbMjK+wTsSZCUNlqmYpLQ562iQSlNs+Y+B6VIDl62dyXnWGaUL2/uvePmQwPACdyfmGeWbP7OiCBWX7xyu3HHtRmkFgbeI5/1cqr3FgUnVyoTvXzgvq8mV1ruyELvcEBXlGro/b9dnfsHLfqctx7/1mTOYU6A9QUT+KyrMzV+chSRPoPA5ln2qeUQhSbS+4hwQ87TUE720/gPpSW/O9Ba71HmhFKE7koR20HxwJBO1qa3/qIdtmHSjOoSdJJly37e6yAzgmoeInqhXx5Fcz6UGBs6Se8GFn37wPBYpkD7Vdcb8kDqGUrLwvZMQa8WYWRPG7v0m7Pqm2LBo8hg13NWpLGA3arlE4zhkjTAeKLY5Q4L6SJMSLLa06YVMi5mbJMo1GNLpRXYD6X9fji1iFG0DrqYphHingmCk91okfsLvUFoKbEy0tTXKYuovEGd7SkBjeddicyVTQrv3fo+iwI+C7n+dwToqC6rtx2tGOq9H1LetMp6koDQw7IxtlQ0ifTb+hrFTEHTHYeM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VTlNRkVla0FFd2F3VzI1MjFNTG9jb3Q2Y3dXRFVYUVRZTmswNk8xMWVaa0dE?=
 =?utf-8?B?VUJQVkJJc3IvMWkzQmpKVk4rcmtXSGF5eHJtRTBtWmg0T1lmTEVzaDhucDMx?=
 =?utf-8?B?Q3hnQlNvRnh5czBQZG5TYW9iL2NlU2R6dm1CQkkrVk0zalh2d0toVi85YUty?=
 =?utf-8?B?dExTWnAybkZ3aER3SjQ5RDgxbk9NRG0xQ0ZBR2dLZ2hqWFBnc1RCZTVqUGdB?=
 =?utf-8?B?S1ZoeUNZb3c2a3BWcGxoeUFuZ3JwY3hEbm9kOS9qdmdtKzF0OUZ1eXdGejBq?=
 =?utf-8?B?ai9WblZBWWtLUzZ5Mm5OY0hSbUh3Tm5hS1RvSGlHSHEza2p3UjBvSE0ycW9S?=
 =?utf-8?B?T2w1dnpnUVJCeUtZT1UxWGJjdkZ5OWVsYTNwTjZLUHNoamF4VUhKQkxjd3lH?=
 =?utf-8?B?Q0d3bVVrRklrQ0hvSUlEcy9mSzZPWnNWaWEvZnN4cWFuK1hwQ2UrL3R0THNR?=
 =?utf-8?B?aWswOWJENnZrKzk3aHYyby82U2xFQWIycFZNZzBMVTBGUjFtc3VuQVhwdUV4?=
 =?utf-8?B?N2Rsc2JHTUJyQkk0Y0JNRkV5VWZlTWd0cVpWTUJjbU8rR2RvUElnSmdHM0FS?=
 =?utf-8?B?Vm5xQWxKUW5icUhiZUxSU2J6V1B1VDVSUENIQkhBYk56dGFjelUxOE9TNUtM?=
 =?utf-8?B?U0JKakxyRnd5MFlobnF0ZUNrYzVhaG1lRTRQMzFYQWtQbzlFdXQzTHdXQjRB?=
 =?utf-8?B?Y1c1dkx5RTc5NmxKYklnNVBKYTk0L21ENmNrekp2bjZOZXhyakV6dUx0SVRp?=
 =?utf-8?B?eWF5dXFXSFJxNVhvN3hsKys2dzhmOXVyMnJBTTVvTkU5WVUzSVl1SjdmalIy?=
 =?utf-8?B?M2ROaHU0SkFGWmFUSUU4ZENNRmVwYlJhYXdpc2dmQnpkNDRlSXJGaDg0aHFF?=
 =?utf-8?B?bzZoRkh1YWlSZElrbUw4QlRFb0VIM3VxKyt3REt6YnM2QVpHbldTei9ObkNw?=
 =?utf-8?B?a05zN3FlZDliMGpQS210OWpXWTdNMGdxWlBjVDFoZHZwaUxxMzhRMHEvMXJp?=
 =?utf-8?B?Lzk3dVM3VjJ3TzROYjhuUVFCeTlGSkVYMmdUNFNQOXc4eEpmeDM0VzJzREI5?=
 =?utf-8?B?MzJ6TlhhU0JhWVNVNkg3ZUpGTFQ4UlFVOTBUZWY2bUdGc3VLK0JNRzRaS0pN?=
 =?utf-8?B?SHpvaUNzdE95b2M5Tk54c0hidnBEZXdUV0MyNmxMYWUvaGE5aSthYzJIWWJZ?=
 =?utf-8?B?cGFOWXJsR2wrYmUvRS9ySTcxK3Z2Qy9kN0QyVmwvaVRqcWlSbGh4MlNCZkRO?=
 =?utf-8?B?Z1ZkWHo4cy9qMWpLaWNaK2pYTnJpekdTYmZKelR6T1pRdSs2akpkTXhwaGl2?=
 =?utf-8?B?S082L21oUk9nV1pzOUp4ZnIyTHNZNEFOZDRMNFppSWhMb05VTDVyOEVPZnN1?=
 =?utf-8?B?WjNoaDVJNms2THQ1ZlBDYTliY3YwM1FGNldORXY5RjF3REtHbU85SExzc0RS?=
 =?utf-8?B?UDhIYi9pMGswOXBvMHFWMnk2eGg5cUQ1ZXNhbENGOUZyeWlEdldVeE9vRGVS?=
 =?utf-8?B?cThiUDV0cUZwNk01M0tLZ2NwaDNJWjVldjVMMWlweWU0cDB5eTM2RUo0Vkhz?=
 =?utf-8?B?cEhZNmxFcXVlamx4M2JhbG4xK3dzYXllUVNWSkVxdlc5Z2FReHBhQnpRbXFl?=
 =?utf-8?B?V1NSbEg2eVNyY3FzRjhYclJoSHlEZklKSWRXOEYwaGNuQndsdWw4OVZkOXI1?=
 =?utf-8?B?bC95ZjJGeTZNRGh5TTcxWVg1WHpkK1J5T0RwdnZVMjNlQldrZXAyTlI3ZUtZ?=
 =?utf-8?B?VG5DcFlua2lHYUQ4ZGgzVE9XUCtLTlFka2FaYkV5cnpjY09xTnBXcmVxQkts?=
 =?utf-8?B?QVZhOC96TzM0Q3o1eDJFRHNadXlaVHdWSFpmZW1HbWY2cWxENmZCNElDNVlT?=
 =?utf-8?B?Q0FBRFYwTkNweW95M0V4cWkxVjVEMGhQNUw2U3VSSFdna0h2Z2VjSlVxcDZS?=
 =?utf-8?B?WTNHMzd4MWhBSk5sVjNxRTJvOVJYSklyUCtRUzlJbExZc09ORVVMRE5wdGhS?=
 =?utf-8?B?anFqaFo5cm9iUDlNV0JpV25UYlZ1dlNtWFJmaUIwekp6cDVieXhLYjNzL3Ex?=
 =?utf-8?B?enJsN1FNOEowYXp0VEFWSWo5OEtXc01BZ01aSjZJSHg4WXByUmVCanBXcFhW?=
 =?utf-8?B?NXFMbDJoTVB3WCtFeHNSekZzV01OQzRlVWhTWFdQYTVEVkMxUEkxS1EvRng2?=
 =?utf-8?B?MkNJK3JVR0RCalBIcFpOUWxPSEFqMWc3QVdwZTNZUnpQb3QzY1J6ZWFody9t?=
 =?utf-8?B?eW9VdnNGaDBkekNDczhCaTZONFEzdW9JQmZlSHhDTzE0ZjNmRnN2U2Z0YkVv?=
 =?utf-8?B?MytnblF4L01HcGd6UHVHM1lXTTB2M0pJUnZIZ1BQbk5tZFZYVmdDdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Ke/P7dOwMbZEz7us5vWaW1wUNVPm6fHghSiO3ldKQo1dYl+LFRHi/eHMWZgbXQ/HvNIgMuoZGSQO4874x8NkMOocIObkZVHjiDvM33twi5XL7vlKV7daWQEIleUJaqjA24gKTN/3Tme8JSgPH5jX/Grhzqc2nmiZNFR0MpS329VFhg8GuLRQPQa/Jw76hDbTJPudi7b8LVO5QSn5RMIh3k1buWmCFsPv9eYtO+MkzE27yNNCjJzGZD+QdGq1PpRjIJqjwXDWcW75xbJ5n47z6DTlKg1OO7VLZadvPw1nBVe6HXKkE5foLozS8CS9/yLg4/7Do6bYi1EiqGfZDHrPtw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95fcc46b-91c3-42a9-83fb-08dea5dfad55
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2026 11:08:43.7011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +q0wTvIvXFphDxW3cNKU1TNGjuQvGvAKUWaHmpzmB9YoeObW9pgvyvxUrX3sIXDv12YxWnNznueTxcUmLzbfzrRy5wikJanwejJUdQpSIlk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7534
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
X-Rspamd-Queue-Id: 3350A49358E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,lists.freedesktop.org:email,PH7PR11MB8252.namprd11.prod.outlook.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSnVoYS1QZWtrYSBIZWlr
a2lsw6QgPGp1aGFwZWtrYS5oZWlra2lsYUBnbWFpbC5jb20+DQo+IFNlbnQ6IDI5IEFwcmlsIDIw
MjYgMTY6MzcNCj4gVG86IFNyaW5pdmFzLCBWaWR5YSA8dmlkeWEuc3Jpbml2YXNAaW50ZWwuY29t
PjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogaW50ZWwteGVAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47DQo+
IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BB
VENIXSBbUkZDIHYzXTogZHJtL2k5MTUvZGlzcGxheTogVXNlIGNlaWxpbmcgZGl2aXNpb24gZm9y
IE5WMTINCj4gVVYgc3VyZmFjZSBvZmZzZXQgY2FsY3VsYXRpb24NCj4gDQo+IExvb2sgb2sgdG8g
bWUuIEkgdGVzdGVkIHRoaXMgbWFrZSByZWxhdGVkIGZhaWxpbmcgdGVzdCBwYXNzIGFuZCBJIGRp
ZG4ndCBzcG90DQo+IHBsYW5hciBmb3JtYXRzIG9yIHNjYWxlciByZWxhdGVkIGZhaWx1cmVzIGlu
IHJlc3VsdHMgZm9yIHRoaXMgcGF0Y2guDQo+IA0KPiBSZXZpZXdlZC1ieTogSnVoYS1QZWtrYSBI
ZWlra2lsYSA8anVoYXBla2thLmhlaWtraWxhQGdtYWlsLmNvbT4NCg0KVGhhbmsgeW91IHZlcnkg
bXVjaCBKdWhhLg0KDQpSZWdhcmRzDQpWaWR5YQ0KDQo+IA0KPiBPbiAxNS8wNC8yMDI2IDE5LjU4
LCBWaWR5YSBTcmluaXZhcyB3cm90ZToNCj4gPiBGb3IgTE5MKywgb2RkIHNvdXJjZSBzaXplIGFu
ZCBwYW5uaW5nIGZvciBZVVYgNDIyLzQyMCBzdXJmYWNlcyBpcw0KPiA+IHN1cHBvcnRlZC4gSG93
ZXZlciwgaXQgcmVxdWlyZXMgdGhlIFVWIChjaHJvbWEpIHN1cmZhY2UgU3RhcnQgWC9ZIGFuZA0K
PiA+IHdpZHRoL2hlaWdodCB0byBiZSBjYWxjdWxhdGVkIGFzIGNlaWxpbmcoaGFsZiBvZiBZIHBs
YW5lIHZhbHVlKSByYXRoZXINCj4gPiB0aGFuIGZsb29yLg0KPiA+DQo+ID4gVGhlIGN1cnJlbnQg
Y29kZSB1c2VzICg+PiAxNykgd2hpY2ggY29tYmluZXMgdGhlIFUxNi4xNiBmaXhlZC1wb2ludCB0
bw0KPiA+IGludGVnZXIgY29udmVyc2lvbiAoPj4gMTYpIHdpdGggYSBkaXZpZGUtYnktMiBmb3Ig
Y2hyb21hIHN1YnNhbXBsaW5nDQo+ID4gKD4+IDEpIGludG8gYSBzaW5nbGUgZmxvb3IgZGl2aXNp
b24uIEZvciBvZGQgWSBwbGFuZSB2YWx1ZXMgdGhpcw0KPiA+IHByb2R1Y2VzIGFuIG9mZi1ieS1v
bmUgZXJyb3IgaW4gdGhlIFVWIHBsYW5lIG9mZnNldC4NCj4gPg0KPiA+IE9uIEFuZHJvaWQgc3lz
dGVtcyB3ZSBzZWUgUExBTkUgQVRTIGZhdWx0IHdoZW4gTlYxMiBvdmVybGF5cyBhcmUgdXNlZA0K
PiA+IHdpdGggb2RkIHNvdXJjZSBkaW1lbnNpb25zOg0KPiA+DQo+ID4gWyAgMTI2Ljg1NDIwMF0g
eGUgMDAwMDowMDowMi4wOiBbZHJtOmludGVsX2F0b21pY19zZXR1cF9zY2FsZXIgW3hlXV0NCj4g
PiBbQ1JUQzoxNDg6cGlwZSBBXSBhdHRhY2hlZCBzY2FsZXIgaWQgMC4wIHRvIFBMQU5FOjMzIFsg
IDEyNi44NTQ2MTddIHhlDQo+ID4gMDAwMDowMDowMi4wOiBbZHJtOnNrbF91cGRhdGVfc2NhbGVy
IFt4ZV1dIFtDUlRDOjE0ODpwaXBlIEFdDQo+ID4gc2NhbGVyX3VzZXIgaW5kZXggMC4wOiBzdGFn
ZWQgc2NhbGluZyByZXF1ZXN0IGZvciAxMjc5eDcxOS0+MTM0MHg3NTMgWw0KPiA+IDEyNi44NTQ4
MzddIHhlIDAwMDA6MDA6MDIuMDogW2RybTppbnRlbF9wbGFuZV9hdG9taWNfY2hlY2sgW3hlXV0g
VVYNCj4gPiBwbGFuZSBbUExBTkU6MzM6cGxhbmUgMUFdIHVzaW5nIFkgcGxhbmUgW1BMQU5FOjEy
MzpwbGFuZSA0QV0gWw0KPiA+IDEyNi44NTQ5MjZdIHhlIDAwMDA6MDA6MDIuMDogW2RybV0gKkVS
Uk9SKiBbQ1JUQzoxNDg6cGlwZSBBXSBQTEFORSBBVFMNCj4gPiBmYXVsdA0KPiA+DQo+ID4gV2l0
aCBZIHBsYW5lIHdpZHRoIDEyNzk6DQo+ID4gICAgZmxvb3IoMTI3OS8yKSA9IDYzOSAoY3VycmVu
dCkNCj4gPiAgICBjZWlsKDEyNzkvMikgID0gNjQwIChyZXF1aXJlZCkNCj4gPg0KPiA+IEludHJv
ZHVjZSBmcF8xNl8xNl9kaXYyKCkgYW5kIGZwXzE2XzE2X3RvX2ludF9jZWlsKCkgaGVscGVycyB0
bw0KPiA+IGNsZWFubHkgc2VwYXJhdGUgdGhlIHR3byBvcGVyYXRpb25zOiBmaXJzdCBoYWx2ZSB0
aGUgVTE2LjE2DQo+ID4gZml4ZWQtcG9pbnQgdmFsdWUgZm9yIGNocm9tYSBzdWJzYW1wbGluZyAo
c3RheWluZyBpbiBmaXhlZC1wb2ludA0KPiA+IGRvbWFpbiksIHRoZW4gY29udmVydCB0byBpbnRl
Z2VyIHdpdGggY2VpbGluZyByb3VuZGluZy4NCj4gPg0KPiA+IHYyOiBVc2UgRElWX1JPVU5EX1VQ
KHZhbHVlLCAxIDw8IDE3KSB0byBwcmVzZXJ2ZSBzdWItcGl4ZWwgcHJlY2lzaW9uDQo+ID4gICAg
ICB3aGlsZSBtYWtpbmcgdGhlIGNlaWxpbmcgZGl2aXNpb24gcmVhZGFibGUgKEphbmksIFVtYSkN
Cj4gPg0KPiA+IHYzOiBTcGxpdCBpbnRvIHR3byBoZWxwZXJzIC0gZnBfMTZfMTZfZGl2MigpIGZv
ciBmaXhlZC1wb2ludCBkaXZpc2lvbg0KPiA+ICAgICAgYnkgMiBhbmQgZnBfMTZfMTZfdG9faW50
X2NlaWwoKSBmb3IgY2VpbGluZyBjb252ZXJzaW9uIHRvIGludGVnZXIsDQo+ID4gICAgICBjbGVh
bmx5IHNlcGFyYXRpbmcgY2hyb21hIHN1YnNhbXBsaW5nIGZyb20gZml4ZWQtcG9pbnQgdG8gaW50
ZWdlcg0KPiA+ICAgICAgY29udmVyc2lvbiAoSmFuaSkNCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6
IFZpZHlhIFNyaW5pdmFzIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4g
ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMgICAgfCAyNyArKysr
KysrKysrKysrKysrLS0tDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gPiBpbmRleCA3YTlkNDk0MzM0YjUu
LmU3NzJiMGQ3MTZjNyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+ID4gQEAgLTIxMjYsNiArMjEyNiwxOSBA
QCBzdGF0aWMgaW50IHNrbF9jaGVja19tYWluX3N1cmZhY2Uoc3RydWN0DQo+IGludGVsX3BsYW5l
X3N0YXRlICpwbGFuZV9zdGF0ZSkNCj4gPiAgIAlyZXR1cm4gMDsNCj4gPiAgIH0NCj4gPg0KPiA+
ICsNCj4gPiArLyogRGl2aWRlIGEgVTE2LjE2IGZpeGVkLXBvaW50IHZhbHVlIGJ5IDIsIHN0YXlp
bmcgaW4gZml4ZWQtcG9pbnQNCj4gPiArZG9tYWluICovIHN0YXRpYyBpbmxpbmUgdTMyIGZwXzE2
XzE2X2RpdjIodTMyIGZwKSB7DQo+ID4gKwlyZXR1cm4gZnAgPj4gMTsNCj4gPiArfQ0KPiA+ICsN
Cj4gPiArLyogQ29udmVydCBhIFUxNi4xNiBmaXhlZC1wb2ludCB2YWx1ZSB0byBpbnRlZ2VyLCBy
b3VuZGluZyB1cCAqLw0KPiA+ICtzdGF0aWMgaW5saW5lIGludCBmcF8xNl8xNl90b19pbnRfY2Vp
bCh1MzIgZnApIHsNCj4gPiArCXJldHVybiBESVZfUk9VTkRfVVAoZnAsIDEgPDwgMTYpOw0KPiA+
ICt9DQo+ID4gKw0KPiA+ICAgc3RhdGljIGludCBza2xfY2hlY2tfbnYxMl9hdXhfc3VyZmFjZShz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gKnBsYW5lX3N0YXRlKQ0KPiA+ICAgew0KPiA+ICAg
CXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShwbGFuZV9z
dGF0ZSk7IEBADQo+ID4gLTIxMzksMTAgKzIxNTIsMTYgQEAgc3RhdGljIGludCBza2xfY2hlY2tf
bnYxMl9hdXhfc3VyZmFjZShzdHJ1Y3QNCj4gaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRl
KQ0KPiA+ICAgCWludCBtaW5faGVpZ2h0ID0gaW50ZWxfcGxhbmVfbWluX2hlaWdodChwbGFuZSwg
ZmIsIHV2X3BsYW5lLA0KPiByb3RhdGlvbik7DQo+ID4gICAJaW50IG1heF93aWR0aCA9IGludGVs
X3BsYW5lX21heF93aWR0aChwbGFuZSwgZmIsIHV2X3BsYW5lLA0KPiByb3RhdGlvbik7DQo+ID4g
ICAJaW50IG1heF9oZWlnaHQgPSBpbnRlbF9wbGFuZV9tYXhfaGVpZ2h0KHBsYW5lLCBmYiwgdXZf
cGxhbmUsDQo+IHJvdGF0aW9uKTsNCj4gPiAtCWludCB4ID0gcGxhbmVfc3RhdGUtPnVhcGkuc3Jj
LngxID4+IDE3Ow0KPiA+IC0JaW50IHkgPSBwbGFuZV9zdGF0ZS0+dWFwaS5zcmMueTEgPj4gMTc7
DQo+ID4gLQlpbnQgdyA9IGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+
IDE3Ow0KPiA+IC0JaW50IGggPSBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT51YXBpLnNy
YykgPj4gMTc7DQo+ID4gKw0KPiA+ICsJLyoNCj4gPiArCSAqIExOTCsgVVYgc3VyZmFjZSBzdGFy
dC9zaXplID0NCj4gPiArCSAqIGNlaWxpbmcoaGFsZiBvZiBZIHBsYW5lIHN0YXJ0L3NpemUpLiBV
c2UgY2VpbGluZyBkaXZpc2lvbg0KPiA+ICsJICogdW5jb25kaXRpb25hbGx5OyBpdCBpcyBhIG5v
LW9wIGZvciBldmVuIHZhbHVlcy4NCj4gPiArCSAqLw0KPiA+ICsJaW50IHggPSBmcF8xNl8xNl90
b19pbnRfY2VpbChmcF8xNl8xNl9kaXYyKHBsYW5lX3N0YXRlLQ0KPiA+dWFwaS5zcmMueDEpKTsN
Cj4gPiArCWludCB5ID0gZnBfMTZfMTZfdG9faW50X2NlaWwoZnBfMTZfMTZfZGl2MihwbGFuZV9z
dGF0ZS0NCj4gPnVhcGkuc3JjLnkxKSk7DQo+ID4gKwlpbnQgdyA9DQo+IGZwXzE2XzE2X3RvX2lu
dF9jZWlsKGZwXzE2XzE2X2RpdjIoZHJtX3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLQ0KPiA+dWFw
aS5zcmMpKSk7DQo+ID4gKwlpbnQgaCA9DQo+ID4gK2ZwXzE2XzE2X3RvX2ludF9jZWlsKGZwXzE2
XzE2X2RpdjIoZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0ZS0+dWFwaQ0KPiA+ICsuc3JjKSkp
Ow0KPiA+ICAgCXUzMiBvZmZzZXQ7DQo+ID4NCj4gPiAgIAkvKiBGSVhNRSBub3QgcXVpdGUgc3Vy
ZSBob3cvaWYgdGhlc2UgYXBwbHkgdG8gdGhlIGNocm9tYSBwbGFuZSAqLw0KDQo=
