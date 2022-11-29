Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 016FB63B6C6
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 01:51:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC9E710E358;
	Tue, 29 Nov 2022 00:51:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42D7110E358
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 00:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669683073; x=1701219073;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=BzD01WKFLDSqL0XHowiWV5+1EvOQTyw32XXSFvawaXU=;
 b=eRStFbmXRuRJcMxbgjEkll4X37fOcDyWakfSWPpchC0MREKtX8S8gbIP
 HkBJtREPLiFRezCWPKeGsj20SU0iAjwwQoBp+1fA6jIvnmZHhEyS1OrTj
 siONxBuq783/BEVKi5ypJVVbSY683sdNXmDRc2DTmdHjVMvqQdvGUnCrn
 dUu5BZDL50nOknr+HHaiRo0Ns0FeMrCBOz4p3qpeoLilMq7Nx/42QKTYD
 i07dBtBzP2TaJwoeOG2PXsgKBSOm1GTAoU6LBWBjg0CpQ/2GjSa20KgwE
 SUXxN4rnkNvBCwiBZF2QcPvKB9s5seS8hcfpQtUCkxD+OR6SuVKhQ8EL/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="312613206"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="312613206"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 16:51:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="674432368"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="674432368"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 28 Nov 2022 16:51:11 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 16:51:11 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 16:51:11 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 16:51:11 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 16:51:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b1z8zzBDQhhso0/9WQf/Y8smpqaTUGAxwEfj9pA96h+ZUYVwCmc5VA41wgB9gSBUnYYObHjDw7FApAM9JScpdvnvSjuZ1G9s9JbqvYlxQnjCPVQZkXvICZyVBtqre6Ot6W2jPohwSAAkjD1+4k72Dlcb6KQfhjIgqQ4M7/SDOt0EsP7qX6QeA9bGO6Nqxcm94hcX5hOvidMRLaTOdFkRiSWkEm8Aw8OKA1AUMUvnUzXUul/+Lgb3EtAuSBKyeCm6CkyRlRMIupXkpXWlH4fLp1RAzyC7GE6AfK+VqDsStCqg2I4iMNiUJ9SMKRqVIbPsyvq2acCP0T/5inGDBKNKUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BzD01WKFLDSqL0XHowiWV5+1EvOQTyw32XXSFvawaXU=;
 b=Zvu1dLiiS5E8c5xt1u5Hr1VTnr+/sJ5Td8YdWEXW9J+/I7WJm/Yl1yNYiABE+Ua92MikRNtZyGuR0E+FVENd/q4erxnyRYCgcBVsq2lCZJb+c/xXJVKv6wAyhLYe39pdKa1gaCgTJqgo0IuTd6KSrjkkm6N08vPPGisd/s5XKMbuL4lyWgZVVABd8B8hX/M5hweDSRQX934Lc+lHoZ4llqMV+T6G1h+0KT4wUFltVD0a3CJ6Dqmn1P6q2xF8xvZUFNoKX4fLzV/VNGW0IwoxTer4AQ71GvAU4SmbtWv0PJA6xO2J5Xo7IYwzydm6LTMcYhYOwuZSMqBLqwsDzZ9X2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SA3PR11MB7414.namprd11.prod.outlook.com (2603:10b6:806:31c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 00:51:08 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%3]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 00:51:08 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v5 0/1] drm/i915/pxp: Prepare intel_pxp entry
 points for MTL
Thread-Index: AQHZA4mvSHvHqBZ1wEmo85Wr9b4DZq5VEvGA
Date: Tue, 29 Nov 2022 00:51:08 +0000
Message-ID: <65dd3712d9c47436d3b09d2ad0390bf956a1a013.camel@intel.com>
References: <20221129003152.3652072-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221129003152.3652072-1-alan.previn.teres.alexis@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SA3PR11MB7414:EE_
x-ms-office365-filtering-correlation-id: bc0c02b9-73b9-4d77-f9ab-08dad1a3cdb1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mmn71fVFWAwR0/Lv5ipew2f1/XDf/CiiVCDJON9dafydbONFR4X2CzWu9rBj5ya30DcADtyEhdK745lhjTl+IoDiHw51IakCqIaZedflGz27kmIKKeYNV4IaDP2HPvjyzy9lldLWOzaB8tHk04GTou8seN9LbajVI9UwXG5CNaJDU9EI5P2vE88vOxTk/5ilrIUETemZz6Y72TPbtiyHWzpbMG/Gth2aUy6MQMGz0HKAauhJ0ugNed4BE/eP11tZsZ1vYBbJ84GPJDUWqT1F3rS41L0YNOcvrnQzfT5cRrX6ixKN/6oMcQCnfKIIVHwAittPytwjdep6CWturg2xUrEECYYoRbbxuGh17qbvHclbzgV9HmXi6NYpPbiM1K4QrjAANIQECC2ztyCyonMAmW3UGDQsAkq+f7ASC/i9Z0Pal6W8c3FSTb0o4a955Jm/HJpZpKoe7g7roQgLSl8wd2VeM/8X7+cnz0QdM2jLTqfVDPzk+NvJ9eX4jdj+ioil7Rp3s6TQicm4kuLB6LGmLcCWr1NsktKA3LE/OQplYoyvkJlgdloZM3EmhI5zwDX2X0rSmQf9UEsC+ZFlV+ICmvSvuqym0H4g1vvW1HUkI75bVKLlcQPyjJ0OQ5y0zF5pakBcO8Mv1ViCaWcizHeuMQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(376002)(346002)(396003)(366004)(451199015)(38100700002)(6506007)(82960400001)(86362001)(26005)(36756003)(316002)(110136005)(6512007)(66476007)(66556008)(66946007)(5660300002)(76116006)(91956017)(66446008)(122000001)(4326008)(8936002)(8676002)(64756008)(107886003)(71200400001)(2616005)(4001150100001)(2906002)(83380400001)(478600001)(6486002)(966005)(41300700001)(38070700005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Uk56VUJNSEJFaW9lS0l3eUZvaEJ2azd1RlY5cWsvb3p1L25iSjVNOERDNzFG?=
 =?utf-8?B?VCthWU1wOHpYWFRETHV2NTh3aGJSaG0wZ1lPY09lVUtvOVJLWXZrMkR1c25T?=
 =?utf-8?B?ekhHUHk5TmJ4Zmk2bks2RjlEaSt3VERTa0hNVGtEVFhudnFqbTdJS1YwMURs?=
 =?utf-8?B?dDRZdUNHVDA0QzNHRzVRMitXNlQzVzRhMitwZU5PYkx2bDhBNjlpK0tKdUM2?=
 =?utf-8?B?ZjQ2a21CbUhSejkrOFdWSnZBY25kT0FXU29sQXFOVElzQTVDZ1RWanBsME1V?=
 =?utf-8?B?UnJmd3lZOUdjUzhIRElSOFkwU3I4RzdDcWZZWlVVSU1PekZvNjUvY2ZxOVNG?=
 =?utf-8?B?bjJxb0VqbGlma2xibGFjUmlhL3RYbENsTnBhSzlWTXZBdnNmVlhTSS8vOG9Y?=
 =?utf-8?B?U0d2eCtpU0pQbGJraHpnQjJSMW5idVo4S251eTNaak1GTFZJbWJiQ1B6ZW0w?=
 =?utf-8?B?Y21rT2tRRy9TbnZyQ0dCeU4wMkVyU3QrNm00ak5LMHh1YXhnVnVnLzMxMXpY?=
 =?utf-8?B?MkdyVjdyRDNBMWdYalhyVUZRMVphVVlHZWJlOC9GUEw3VEVhRmd4UGQ0TVp6?=
 =?utf-8?B?dG9nbzRjQUVpby9zZHpXOHplSkxteHhmQm01bTFLdVAxamtXVTBMVHRVdWQv?=
 =?utf-8?B?bG5TM0dQck1KZHNTK1puQVN2MjZTaVdzRmZiaHp3NTYzbU5jaUpqc0VMV3Bm?=
 =?utf-8?B?ODVDVGduOEQwNit5aTM1SlYvazRMaSszd2F1ajNmUGNZb3pwUVA3b01vU3Zx?=
 =?utf-8?B?K1k0UFF3SktPbUJLWGNUNkxCSlF1RWp2dERCRmNucFVoWXFBRTZONXdNaVJW?=
 =?utf-8?B?VEx3eEF4RlpzU0xIUnUxZUt5WXozNXZPWXRFMkxEWnVJVUZyckIwemJSWWZI?=
 =?utf-8?B?Y3ptQXpsUVBFS2E1allaanZLR2ZZR1NjYm5YU3pLWGVoUEw3cDB4aUxBZzMz?=
 =?utf-8?B?bkU0NDU0cjJKdTRyOEpqTjV4QWRlM3crcmZ6OEliYWRzRXgxMHY0RVpTMlJw?=
 =?utf-8?B?MlRrb0ZxU0UzRFQ5NTJ2UW9YZnlrTzZ5R0FXMFJWcytDSzFDZmR1b05NUGdD?=
 =?utf-8?B?Z1greG1GSzhsNER2SXlETlZXajB5c2U0WXJyZExmdithaDVCL21SN1BjcUJI?=
 =?utf-8?B?di9TNjUxdnZjQWdVWFpGa0szLzh1aVczY1Fzbys1QjFHb3ByVlFpdDhWaTIz?=
 =?utf-8?B?WmhtMmJTaDlXalFZTFJIZDhJcUwyQlpGK2tEL3lQVks2WlNIU21MUk1BWjQz?=
 =?utf-8?B?N3lQbThZSmZrVW05U0ZtaStrRkw0MXZMTHdqMjdObittWml0OGphR3V3Zncx?=
 =?utf-8?B?RXFqZ0hqZ0l3b1hWdlZsQllyWnZFVnhPb0hzVzJrTng2OFd2b01USDFsc001?=
 =?utf-8?B?WkNubzNjSmhFUzF0RG1ubitSSjNEdXdjZGYrVG83MUc2eVJQOVFwNzFhSmky?=
 =?utf-8?B?RGpJeWtCTjhTcTgrVTR2L0VNd251TTQwcXRVbEo4V3htNHRzMnh6NlR2WDlq?=
 =?utf-8?B?S1pxVGUyL0gwZGZNK3ZhUmgyRHZHVlZnVUFYT0laSG5vRXFRNXJvSHpRZVBT?=
 =?utf-8?B?QlhEK2hJMmQ0cUsyZzF5QjNkVnB5eWRONFpNQjV2Mk1GVnNuNVZDWWtmanhT?=
 =?utf-8?B?SUZEM0tFSlp5bjdKY2NMci9meDlhRCt5bkYyMFJNOFFHdFZ0M0hnMVk0UkhE?=
 =?utf-8?B?cXlETkloenZacUs5T2tWWlhHUXVORkJFT0tCdXp2NnltMHNtRXBkZG5EbXdU?=
 =?utf-8?B?S0VNQlBaYlk0ZitKc2V2NWJ4bHczK1E0QnUwelFRamtLbEU2clU3ZkkvL3JQ?=
 =?utf-8?B?d3g5cnFRTFVGNE1NR2NaOEZOU1lwcy9PU0FhOGQwMXo2TUIrS2EveHNLT1Fr?=
 =?utf-8?B?VHJZZFA2WXB0QTJCQ1hrWG84QWVLd29DZjJhUFp4RTRWc0FWYnhGQWg2QWtY?=
 =?utf-8?B?WGxKb3BUZWtYUngrZUFiSUJTUUhHVXV5STNYY282a0VpRituV3NneXdzTnJC?=
 =?utf-8?B?L1k2cE82UmhscnJsM2wvemRFVEZzUlRZNWU0UHJ1ZjFMeUQ1V1BNRGRNQlNU?=
 =?utf-8?B?WGZicjZQK0pXUnJKYm41MXBoL3F3SWRWS3hGSTJVb2d6N2s2TmRWQjJKaXhC?=
 =?utf-8?B?U2tCRjJHUGk0SWpXTkpBRm1MNDhJamZVS214REdNSmZWWEpQY2tZYmRLeGw4?=
 =?utf-8?Q?A//yuH2yXhj2Vn3DEsC/1OI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B41F216E2F43DE43983F25B24172A00D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc0c02b9-73b9-4d77-f9ab-08dad1a3cdb1
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2022 00:51:08.6901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0g7txHlkaxAvyn9O0DBYcOB5RwaRjKPNpEJ8RUeZG+EuCReSV/ssYCKOwG5wjbtiU9bd2m07yzCfRPLw1frSFhg6x4x2a8l4c6VDGWbB/lZAzi0cGJt6RNgMXx+Rvpzm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7414
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 0/1] drm/i915/pxp: Prepare intel_pxp
 entry points for MTL
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

KCsrdGFnZ2luZyBSb2RyaWdvKQ0KVGhpcyBzZXJpZXMgaXMgYSByZXBsYWNlbWVudCBmb3IgaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMDk0MjkvLiBQYXRjaHdvcmsg
YmVzdG93ZWQgYSBuZXcgVVJMIGFzIHRoZQ0Kc2VyaWVzIGlzIHNpZ25pZmljYW50bHkgZGlmZmVy
ZW50IG5vdyB3aXRoIHRoZSBuZXcgZGVzaWduIGFwcHJvYWNoIGRpcmVjdGlvbiBmcm9tIFJvZHJp
Z28uDQoNCi4uLmFsYW4NCg0KDQpPbiBNb24sIDIwMjItMTEtMjggYXQgMTY6MzEgLTA4MDAsIEFs
YW4gUHJldmluIHdyb3RlOg0KPiBNVEwgaGFzIHR3byB0aWxlcyB0aGF0IGlzIHJlcHJlc2VudGVk
IGJ5IHRoZSBpbnRlbF9ndCBzdHJ1Y3R1cmUgaW4gdGhlIGk5MTUNCj4gY29kZS4gVGhlIFBYUCBm
ZWF0dXJlIGhhcyBhIGNvbnRyb2wtc3RydWN0dXJlIHRoYXQgY3VycmVudGx5IGhhbmdzIG9mZiB0
aGUNCj4gaW50ZWxfZ3Qgc3RydWN0dXJlLiBJbiBNVEwsIHRoZSBzdGFuZGFsb25lIG1lZGlhIHRp
bGUgKGkuZS4gbm90IHRoZSByb290DQo+IHRpbGUpIGNvbnRhaW5zIHRoZSBWREJPWCBhbmQgS0NS
IGVuZ2luZSB3aGljaCBhcmUgYW1vbmcgc2V2ZXJhbCBhc3NldHMNCj4gdGhhdCBQWFAgcmVsaWVz
IG9uIGZvciBlc3RhYmxpc2hpbmcgYW5kIHRlYXJpbmcgZG93biB0aGUgUFhQIHNlc3Npb24uDQo+
IA0KPiBIb3dldmVyIFBYUCBpcyBhIGdsb2JhbCBmZWF0dXJlIGFzIG90aGVyIGVuZ2luZXMgb24g
b3RoZXIgdGlsZXMgY2FuIHJlZmVyZW5jZQ0KPiB0aGUgUFhQIHNlc3Npb24gaW4gYW4gb2JqZWN0
J3MgaW5mbyB3aXRoaW4gYmF0Y2ggYnVmZmVyIGluc3RydWN0aW9ucy4gVGhhdA0KPiBjb2hlcnJl
bmN5IGlzIGhhbmRsZWQgaW1wbGljaXRseSBieSB0aGUgSFcuIEluIGZhY3QsIGZvciB0aGUgZm9y
c2VlYWJsZSBmdXR1cmUsDQo+IHdlIGFyZSBleHBlY3RpbmcgdGhpcyBsaW5rIHdoZXJlYnkgb25s
eSBvbmUgb2YgdGhlIHRpbGVzIHdpbGwgYmUgdGhlIGNvbnRyb2wtZ3QNCj4gZm9yIHRoZSBQWFAg
c3Vic3lzdGVtLg0KPiANCj4gS2VlcGluZyB0aGUgaW50ZWxfcHhwIHN0cnVjdHVyZSB3aXRoaW4g
dGhlIGludGVsX2d0IHN0cnVjdHVyZSBtYWtlcyBzb21lDQo+IGludGVybmFsIGZ1bmN0aW9uYWxp
dGllcyBtb3JlIHN0cmFpZ2h0IGZvcndhcmQgYnV0IGFkZHMgY29kZSBjb21wbGV4aXR5IHRvDQo+
IGNvZGUgcmVhZGliaWxpdHkgYW5kIG1haW50YWluaWJpbGl0eSB0byBtYW55IGV4dGVybmFsLXRv
LXB4cCBzdWJzeXN0ZW1zDQo+IHdoaWNoIG1heSBuZWVkIHRvIHBpY2sgdGhlIGNvcnJlY3QgaW50
ZWxfZ3Qgc3RydWN0dXJlLiBBbiBleGFtcGxlIG9mIHRoaXMNCj4gd291bGQgYmUgdGhlIGludGVs
X3B4cF9pc19hY3RpdmUgb3IgaW50ZWxfcHhwX2lzX2VuYWJsZWQgZnVuY3Rpb25hbGl0eSB3aGlj
aA0KPiBzaG91bGQgYmUgdmlld2VkIGFzIGEgZ2xvYmFsIGxldmVsIGlucXVpcnksIG5vdCBhIHBl
ci1ndCBpbnF1aXJ5Lg0KPiANCj4gVGhhdCBzYWlkLCB0aGlzIHNlcmllcyBwcm9tb3RlcyB0aGUg
aW50ZWxfcHhwIHN0cnVjdHVyZSBpbnRvIHRoZQ0KPiBkcm1faTkxNV9wcml2YXRlIHN0cnVjdHVy
ZSBtYWtpbmcgaXQgYSB0b3AtbGV2ZWwgc3Vic3lzdGVtIGFuZCB0aGUgUFhQDQo+IHN1YnN5c3Rl
bSB3aWxsIHNlbGVjdCB0aGUgY29udHJvbCBndCBpbnRlcm5hbGx5IGFuZCBrZWVwIGEgcG9pbnRl
ciB0bw0KPiBpdCBmb3IgaW50ZXJuYWwgcmVmZXJlbmNlLg0KPiANCj4gQ2hhbmdlcyBmcm9tIHBy
aW9yIHJldnM6DQo+ICAgIHY0OiAtIEluc3RlYWQgb2YgbWFpbnRhaW5pbmcgaW50ZWxfcHhwIGFz
IGFuIGludGVsX2d0IHN0cnVjdHVyZSBtZW1iZXIgYW5kDQo+ICAgICAgICAgIGNyZWF0aW5nIGEg
bnVtYmVyIG9mIGNvbnZvbHV0ZWQgaGVscGVycyB0aGF0IHRha2VzIGluIGk5MTUgYXMgaW5wdXQN
Cj4gICAgICAgICAgYW5kIHJlZGlyZWN0cyB0byB0aGUgY29ycmVjdCBpbnRlbF9ndCBvciB0YWtl
cyBhbnkgaW50ZWxfZ3QgYW5kIGludGVybmFsbHkNCj4gICAgICAgICAgcmVwbGFjZXMgd2l0aCB0
aGUgY29ycmVjdCBpbnRlbF9ndCwgcHJvbW90ZSBpdCB0byBiZSBhIHRvcC1sZXZlbCBpOTE1DQo+
ICAgICAgICAgIHN0cnVjdHVyZS4NCj4gICAgdjM6IC0gUmVuYW1lIGd0IGxldmVsIGhlbHBlciBm
dW5jdGlvbnMgdG8gImludGVsX3B4cF9pc19lbmFibGVkL3N1cHBvcnRlZC8NCj4gICAgICAgICAg
YWN0aXZlX29uX2d0IiAoRGFuaWVsZSkNCj4gICAgICAgIC0gVXBncmFkZSBfZ3Rfc3VwcG9ydHNf
cHhwIHRvIHJlcGxhY2Ugd2hhdCB3YXMgaW50ZWxfZ3RweHBfaXNfc3VwcG9ydGVkDQo+ICAgICAg
ICAgIGFzIHRoZSBuZXcgaW50ZWxfcHhwX2lzX3N1cHBvcnRlZF9vbl9ndCB0byBjaGVjayBmb3Ig
UFhQIGZlYXR1cmUNCj4gICAgICAgICAgc3VwcG9ydCB2cyB0aGUgdGVlIHN1cHBvcnQgZm9yIGh1
YyBhdXRoZW50aWNhdGlvbi4gRml4IHB4cC1kZWJ1Z2ZzLQ0KPiAgICAgICAgICByZWdpc3RyYXRp
b24gdG8gdXNlIG9ubHkgdGhlIGZvcm1lciB0byBkZWNpZGUgc3VwcG9ydC4gKERhbmllbGUpDQo+
ICAgICAgICAtIENvdXBsZSBtaW5vciBvcHRpbWl6YXRpb25zLg0KPiAgICB2MjogLSBBdm9pZCBp
bnRyb2R1Y3Rpb24gb2YgbmV3IGRldmljZSBpbmZvIG9yIGd0IHZhcmlhYmxlcyBhbmQgdXNlDQo+
ICAgICAgICAgIGV4aXN0aW5nIGNoZWNrcyAvIG1hY3JvcyB0byBkaWZmZXJlbnRpYXRlIHRoZSBj
b3JyZWN0IEdULT5QWFANCj4gICAgICAgICAgY29udHJvbCBvd25lcnNoaXAgKERhbmllbGUgQ2Vy
YW9sbyBTcHVyaW8pDQo+ICAgICAgICAtIERvbid0IHJldXNlIHRoZSB1cGRhdGVkIGdsb2JhbC1j
aGVja2VycyBmb3IgcGVyLUdUIGNhbGxlcnMgKHN1Y2gNCj4gICAgICAgICAgYXMgb3RoZXIgZmls
ZXMgd2l0aGluIFBYUCkgdG8gYXZvaWQgdW5uZWNlc3NhcnkgR1QtcmVwYXJzaW5nLA0KPiAgICAg
ICAgICBleHBvc2UgYSByZXBsYWNlbWVudCBoZWxwZXIgbGlrZSB0aGUgcHJpb3Igb25lcy4gKERh
bmllbGUpLg0KPiAgICB2MTogQWRkIG9uZSBtb3JlIHBhdGNoIHRvIHRoZSBzZXJpZXMgZm9yIHRo
ZSBpbnRlbF9weHAgc3VzcGVuZC9yZXN1bWUNCj4gICAgICAgIGZvciBzaW1pbGlhciByZWZhY3Rv
cmluZw0KPiANCj4gQWxhbiBQcmV2aW4gKDEpOg0KPiAgIGRybS9pOTE1L3B4cDogUHJvbW90ZSBw
eHAgc3Vic3lzdGVtIHRvIHRvcC1sZXZlbCBvZiBpOTE1DQo+IA0KPiAgLi4uL2RybS9pOTE1L2Rp
c3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jICAgIHwgIDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgICB8ICA2ICstDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fY3JlYXRlLmMgICAgfCAgMiArLQ0KPiAgLi4uL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwgIDIgKy0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgICAgICAgICAgICB8ICA1IC0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9kZWJ1Z2ZzLmMgICAgfCAgMSAtDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9pcnEuYyAgICAgICAgfCAgMiArLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyAgICAgICAgIHwgIDggLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oICAgICAgfCAgMyAtDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncuYyAgICAgfCAgMiArLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYyAgICAgICAgICAgIHwgMjAgKysrKysrDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgMyArDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmMgICAgICAgICAgfCA3MiArKysrKysr
KysrKysrKy0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmggICAg
ICAgICAgfCAgNiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9jbWQu
YyAgICAgIHwgIDggKystDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX2Rl
YnVnZnMuYyAgfCA0MSArKysrKysrLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2lu
dGVsX3B4cF9kZWJ1Z2ZzLmggIHwgIDQgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9p
bnRlbF9weHBfaXJxLmMgICAgICB8IDEwICsrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhw
L2ludGVsX3B4cF9wbS5jICAgICAgIHwgIDQgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4
cC9pbnRlbF9weHBfdGVlLmMgICAgICB8ICA4ICsrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
cHhwL2ludGVsX3B4cF90eXBlcy5oICAgIHwgMTEgKysrDQo+ICAyMSBmaWxlcyBjaGFuZ2VkLCAx
NTAgaW5zZXJ0aW9ucygrKSwgNzAgZGVsZXRpb25zKC0pDQo+IA0KPiANCj4gYmFzZS1jb21taXQ6
IGQyMWQ2NDc0YTM3ZTVkNDMwNzVhMjQ2Njg4MDdlYTQwYTdlZTlmYzENCj4gLS0gDQo+IDIuMzQu
MQ0KPiANCg0K
