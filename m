Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D18318B0DA9
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 17:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E58E3113BFF;
	Wed, 24 Apr 2024 15:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from GBR01-CWX-obe.outbound.protection.outlook.com
 (mail-cwxgbr01on2126.outbound.protection.outlook.com [40.107.121.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52835113BFD
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 15:11:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NH325l65WaSUl2m5L6PGhJBNpqEOi2G0KH96ODFxDb+FXO1Awvv6j0OfNg8ZPZVgsCyEhrM8NXxMXlqUl4H99QWW34nXdc35SuZHj41ooXHBzw8htZGcoOM+jkCBwGQ66Sk+CPbPm7mWP3CvY3oi4eTbV/nUAi+lZkvmjpB0LM3mvI/w97Dgj6Zc/YbWibx4HQccPTVswDKKfhmGecVnUIDjjwsOzZ0sjF33U2c12uWcTJGeFzX3+qhHiRXkQZS7jTB5F+z3oKSmw4gLixTv0g67I7wOHtCQzRvV8VI9TzGI6pyuMBeRvDka2NxID4sjA3Vff+gfMsgOQ2ilaWm+mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KfeU3vZ4Tk7IGPfondsNH/VRwG5sFY9yCIIZZZKJtfM=;
 b=daDwPsyaN78tmeFawmOecCE95lwsLahOyAh0cD4MmaGc46F97wlJjdH7Ztoxj1p8q/rFignA2LZO2z6wQJhXDg54+dTiMsuLq5rGQtzAuKSmPPiYoyN5pp4gnDpUPvvga01uJe0M1NYJ4UuKma44m03Qlo53mM0LrZNjI8M8bCO15Su76DPzFgwjmYIjz8LNjLxoURHG/vl2iUbHlM3PMp7GKSOkH0H+817O9QLiH4p+cgSaoZiU2QXykBYtOu8c//0RaV5BobHZtF/5IQOU/rQ2k503VuKXN2+eYZaMB+21HRY9SVO1j2KKkKwsFs6sKrVQy8lKHzvAtD8xTdEaDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wonksw.tech; dmarc=pass action=none header.from=wonksw.tech;
 dkim=pass header.d=wonksw.tech; arc=none
Received: from CWXP123MB4696.GBRP123.PROD.OUTLOOK.COM (2603:10a6:400:10f::8)
 by LO6P123MB7063.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:344::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Wed, 24 Apr
 2024 15:11:10 +0000
Received: from CWXP123MB4696.GBRP123.PROD.OUTLOOK.COM
 ([fe80::fe6e:4ae0:652f:6958]) by CWXP123MB4696.GBRP123.PROD.OUTLOOK.COM
 ([fe80::fe6e:4ae0:652f:6958%7]) with mapi id 15.20.7472.044; Wed, 24 Apr 2024
 15:11:08 +0000
From: Andy Pont <andy.pont@wonksw.tech>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: Timeout with USB-C video adapter
Thread-Topic: Timeout with USB-C video adapter
Thread-Index: AQHalkYaNrVlBuMoe0qtU2fve5TdibF3dkuAgAAQbIA=
Date: Wed, 24 Apr 2024 15:11:07 +0000
Message-ID: <em975139f9-4450-4cac-8cc5-60e2313607df@04c694f6.com>
References: <em32687794-85ba-4ce2-98ce-16af8fe460d1@04c694f6.com>
 <87sezaq27u.fsf@intel.com>
In-Reply-To: <87sezaq27u.fsf@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wonksw.tech;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CWXP123MB4696:EE_|LO6P123MB7063:EE_
x-ms-office365-filtering-correlation-id: eacdedd2-0f4d-4de7-6b99-08dc6470c4c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?utf-8?B?YWtaMWM3RGx4c0J2VE50YytDMEUxZEYvSFQ2SkZLUk5oaHhlY0hMcXByUTBD?=
 =?utf-8?B?b0lRUDI5R202cUprYVBGTDNHNmJtYzNaclFITm9LT3VDblBNdHNpZEo4ZnZJ?=
 =?utf-8?B?UWdWdlp6SFM3a0NlMlp0YVkvUm5FZG9Kd3lGZGJ4YjkxN1MrNGtvZ3VkcDZG?=
 =?utf-8?B?Ym1CdXlWN2k3RjBLL0pLNXhOZ2FUUzYxczVMdUt4emZJbHNuQUZpYzh0Mk5p?=
 =?utf-8?B?RjRaaEFwUFF0bmtDU210N25tMnZtdEp4Z2tGYTdDQzlmRTdRbWlYZmtJZm1R?=
 =?utf-8?B?NFZnb2oxeWJUUFBsUDZTN3Yvc3JkQ2pqK1U3U1lGdnY4Q0tDWVVYY291bXd2?=
 =?utf-8?B?aGUrWVhsdTRvSXUyVGZTMnpwVVpvN0xIcjR0MG9XWkEzcHhZMmk5UGZzNUpO?=
 =?utf-8?B?MTVEcmFIdjN5ZmQ4VzV5aVUxaEEwemdjMDFReC9QSDB3VHhWQ3ZoSkxyRHpW?=
 =?utf-8?B?enlPRjFOSjRpcVZsZXhhek5xdTFBeFhuYkRXTXZDV0xycG1Db1ZHS0ZBbzNv?=
 =?utf-8?B?OXdmNEZrZVBpSHJGRGEvV3dOYlZyaThqWDQrNm0wTXJKMElJc1ZHNXlwb21G?=
 =?utf-8?B?alhKSnN6OU1CbnAwTmpoUFc4cGNHeHVDNXpmQWFpN3JsVUwrblpEK0c0RFlo?=
 =?utf-8?B?aXIra3RqeWlTY0dhcVA1KzVyaDVsSEpHNVBKSllOclVsb0JUSWVGVHpvNHJH?=
 =?utf-8?B?MUkrSTJuZWkwTEt5bTA4SUxZOGdxSmNMTWNqRHBtQmRzcjUySC9NNFFwSWdP?=
 =?utf-8?B?YTlFNHpURTJHYWRya2JPTEVSU1NWazMyRlg1VVhjYmVGNXBoZFQwa0lpcXhz?=
 =?utf-8?B?bzlDTDB6dGQ3eCt4K085cE4zWXpwZEVqZDRJWm9LblpBcVluZnBnTFVSbUpS?=
 =?utf-8?B?TyszbXNrTWsyeDY2ejlwTVZORWw4T3BwVVpZSkI1NjdMaEk3dmtIcENaWEtO?=
 =?utf-8?B?MUc1dkxvMzBRalRVaTM2RVFRYXNLNVJvWGlIeFIrNGpUWDZVNDVIMTBkQkNR?=
 =?utf-8?B?MEM3ZmVRWUh2YXNtRjc2QUQ0VzlqdC82REcwV240dHdBeTdtckRnT2V4TXlE?=
 =?utf-8?B?Um1oTkFZT3lPS2ZqcVFmSVVZRFVKdUZSQnpnME44SnIzdlVvckxBRmtNcS9Z?=
 =?utf-8?B?WklFYzhlVzNoQjVIQ001MjcwazlSNzROSHZnSjJ2M0N2UndZZ21uWERRMW1v?=
 =?utf-8?B?YUVzcXJ5MHdCY00xQ0s1dmUvcDB2dDBHL0ZLV2s3OFc1RDRuWFhXT1phZGlO?=
 =?utf-8?B?L3dnVEZrVjhSY056Zno0eURORzN0bjlsMGVQMnk4V1pYa2ZVMlJ3UjNVYXpW?=
 =?utf-8?B?K0hjLzhwbGh0Y1NVRnhpcWRpZ0tabTdMV1pVRWZ6YU5weWMwQ1BOWG8rcjJK?=
 =?utf-8?B?dDdxMkM1MDJMNVhPcDlzNThGMi9HVWlLK0dEZG9LL3FveGlOd3dGQ0RIYlpk?=
 =?utf-8?B?Q3RBaU5uVVc3NGFOQ0wwYVRFUXlTbUVrRUNQbmJINzRxWCtZVSt2eHB2Rk1J?=
 =?utf-8?B?Zmh0Mk0rMlZoa25kOE1BelF4eDhORW9BZzJxUWt4ZjBMSERocFZvYXpXczZR?=
 =?utf-8?B?WDlRMU1xbUVmeUx2SW11ZmhqTjd0Nm80ME1SY0JvZGEzVW1LUVFVYnI0YWZJ?=
 =?utf-8?B?TnlaRk9PN0c4THJZN1JxeVlKUThPQTVJb2NkWHM2RnQyRjZjdi95djUvTVVt?=
 =?utf-8?B?bWVwVWFZQ1ZrUjBGVUN4ZFNlSzRKb0orWERLMEwweEhDcXgxa2hJMTBNN09X?=
 =?utf-8?B?Kzk0R3ZqaWdlaUlyY0N1THp1MFJyanlwY3drSGtWTG5Dd2h6VFgvcWk5NTFl?=
 =?utf-8?B?VldDbFQ3UmFiUU15VTZwQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CWXP123MB4696.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cHRZeXJoNElmamhWSjdFTjYrRGtTRHVaRlZzUGVSZ1lmSTNkb1ZqS3h3TFdF?=
 =?utf-8?B?c3VFUkl1NGpweSswVStqOWI1a3UzZTdHa1ZGdzhxUlRqNmI0NGlpbkFWbUx1?=
 =?utf-8?B?Z3hmN1J6dm9IcFcyRXdKdXcySnBoME56UWdtSHdlREkyNHRDVGM3U212OU5t?=
 =?utf-8?B?WmJJZmMzOThmU2VJSzJmQzF0bUtKT0FPek5hVGhzeVZYUXl6bHpRajEvMFpx?=
 =?utf-8?B?Znk4SHkwaHViMGFVZGs1UEhoMWR1UE5BVlc2WU15ZFEzRVdmNFJhYnQ1WUJm?=
 =?utf-8?B?d0VTOXliOTJoVlZYZkh6MU43NHFndWRwQWlvQzZscGRObUtLdjd6bUUxMDRU?=
 =?utf-8?B?eEprdy91dENkNURISG5YMjJvRHFDOVFTRGx0MnVFeldPNC95MnM0VHVKMmI3?=
 =?utf-8?B?ZFlZR1ZxWGtQbGR0Q25lT1luZU9NSFZ3bUN2N2FsYlpkczZ2bVdHYkN2M05F?=
 =?utf-8?B?ZnZUZm1ReFE1WTZjR1VvUHNOWC9wY21OWlBUNGxBWXFBckk4WkpTMGw4WmQv?=
 =?utf-8?B?RDNjaG5RSkIxakNaYVowMkgreHhWM3pxRE52bzVzTERxWlQxN2kvOE5xbG9s?=
 =?utf-8?B?SDd5OG04a0o4bkxPWWpSTnNSRW5UaFJXYVpTelBLME1JN3hxaHlzWi9wd1JI?=
 =?utf-8?B?UUZ5cFhmY1lFclVzdWFnVnFjMk1Ba2tPZjJTcE5qNkpUb1BudmRBblJKTklZ?=
 =?utf-8?B?U1VIU2RHbllmeDUwM2t1MzNaZVBTL0t0WjJSY2FacTBOdmpja3V6MXZXcVNV?=
 =?utf-8?B?d3NmeUl2RTMzbHo3bnRmZG9teDZ3LzFPdTdDd3U1Z2xnb0p2V09tK1FmSzBo?=
 =?utf-8?B?d3psZ3JLRGluQmlCQ1o5QzFpZGppelRWWlpBL0hqa081YnhIWFptMEpjeXQz?=
 =?utf-8?B?dzV6QXpmVWI5cWwvSlozem0xeGpUOXhoTWlsL3h0b3MxaFIxWDZuU21zcEFu?=
 =?utf-8?B?ZTBtV2dPMnZ5WWNyMVkveVNSbEtxL3JYaXhkL2VGS3YrWGVDQStobHhWejNj?=
 =?utf-8?B?MlYxVWhuWE9KZ3IyY0RNL3VKZ0JscG02RHJwVTl1Z05Za1hDaFRZcCtEYUhn?=
 =?utf-8?B?MG0rU2N3UVZ3RC9hUXBLWFJLVTRhSHNvOWdhRkpUV0Uza2hBdXRjRGsxL1Ru?=
 =?utf-8?B?V1lSYUMvS1ZFTjRvY3ZkMCthditCcW50RFZvM0I2OHFJUHdsbElxLzVqUFN5?=
 =?utf-8?B?bkI3Y2RhWktaeHNaNVJobmI0MzJ5Uy9oWEp4M1NiOEtkaVNNYXo5bm05K3hS?=
 =?utf-8?B?cEkzcUM0U25BcnFsS3BCTGJHT21ySlRmVVNSeHdEYTZLbHhyeUt0VkswclFU?=
 =?utf-8?B?Vm84Z1ZoejhKVTI5LzJvQzNiUW1QdU5hMmx0TFpCdTM2b21RS20xb0pJbTZO?=
 =?utf-8?B?QjZnUmJCbEdveXNyc0lESlptZGZERnhJT3gyY0tCVTN2NTY4dVdsVzZYdHBu?=
 =?utf-8?B?YktrNVB6RU5ES2xmaW1pbWo2dzZKM3hYRTJXZksvSFV0OWZ3MGcyQ1RPRGxa?=
 =?utf-8?B?ZlJHQkQ3NVZFRlp2YkZCdkV5dU5kaUtJek1zWXZWMlhlTEluZjJaN0NSTnBo?=
 =?utf-8?B?WmxoN1FEcFNHem1FUUc1cEpFaW45MW4zc1ZSVm1QdkxUUmtvVFAzZ0lnek15?=
 =?utf-8?B?QTcxWmdmd0M4bzJBNjYxamE0Ujd0QTZYeDFoNkNaZDJhM1pVK29pWkNVY0ZJ?=
 =?utf-8?B?bGw0bVRWandTakRXN28vVnRyS2cxOVhpK3Y1a0xUdzd6cHA2NXExK3hHQTRR?=
 =?utf-8?B?UzJmKzA2SWV6cUk5aWlOSnlaZEJ0SG4xRnN6dHBicUIwdFZITCtHQXkzOWQ5?=
 =?utf-8?B?SHBQZ1Y2Zjg3RFRKcW9Tb2QxWld4Mk1LTnpkMThneC9hMXBNTEJnUjFpSmxO?=
 =?utf-8?B?VVpuTTI2WDdtdFJMYkh4aGtLdEV0QVZ6ZEpPc1UwRFZRWVNxdmZ5bmlUY1dB?=
 =?utf-8?B?dmF5ZktBSHovYlo1M1M5WVZjaDR5dDYzZzd5dS9QeTAzWmVDSlplRFJOaFcz?=
 =?utf-8?B?M2hiNjlEMHJOZ1AzZ2pTcFMxNkhNVUk1eDZRS2ZDT0hGdzJJa1BUWTlmeG9B?=
 =?utf-8?B?ako4TDJSdml4NW8rRTlHcEFlR2psaHJleXhXckdoZVNla2V0OTN1VmhUQ2Rw?=
 =?utf-8?B?eXllaThmWTZKMFp6Wnk3RTFWKzdSUUNIbVZBY2ZReHU2eXhLZmhhdnZ5U0ZH?=
 =?utf-8?B?Ymc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F23C2C5861C03A4A9FE6618F51D05364@GBRP123.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wonksw.tech
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CWXP123MB4696.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: eacdedd2-0f4d-4de7-6b99-08dc6470c4c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2024 15:11:08.0042 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6fbe171c-fc2f-48c7-b6cc-ccb76203ff8e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gi8gdBIBymGSV5dJwqxEm6nJ1siakLzasxC6ZUBtR0+HIbeRRt5vx365X00Z+KqBDOpVURtD8hzRgKtHxMT0LQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO6P123MB7063
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
Reply-To: Andy Pont <andy.pont@wonksw.tech>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SmFuaSB3cm90ZS4uLg0KDQo+RG9lcyBpdCB3b3JrIGFsbCByaWdodCB3aXRoIHRoZSBzdG9jayBV
RUZJIGJvb3QsIGFuZCB5b3UncmUgb25seSBzZWVpbmcNCj5pc3N1ZXMgd2l0aCBjb3JlYm9vdD8N
CldpdGggdGhlIHN0b2NrIFVFRkkgc29sdXRpb24gKEFNSSkgdGhlIFVTQi1DIEhETUkgYWRhcHRl
cnMgd29yayBib290aW5nIA0KZnJvbSB0aGUgc2FtZSBVYnVudHUgZGlzay4gIEludGVyZXN0aW5n
bHksIHRoZXkgZG9u4oCZdCB3b3JrIHVuZGVyIFdpbmRvd3MgDQoxMSB3aXRoIHRoZSBBTUkgZmly
bXdhcmUgc28gSeKAmW0gbm90IGNvbnZpbmNlZCB0aGVpciBpbXBsZW1lbnRhdGlvbiBpcyANCmNv
cnJlY3QgZWl0aGVyLg0KDQo+SXMgL3N5cy9rZXJuZWwvZGVidWcvZHJpLzAvaTkxNV92YnQgdGhl
IHNhbWUgZm9yIGJvdGg/DQpZZXMsIHRoZSBWQlQgZmlsZSBidWlsdCBpbnRvIHRoZSBjb3JlYm9v
dCBmaXJtd2FyZSBpcyB0aGUgb25lIEkgDQpleHRyYWN0ZWQgZnJvbSAvc3lzL2tlcm5lbC9kZWJ1
Zy9kcmkvMC9pOTE1X3ZidCBoYXZpbmcgYm9vdGVkIGludG8gDQpVYnVudHUuDQoNCknigJlsbCBy
YWlzZSBpdCBhcyBhIGJ1ZyAoYWxiZWl0IEkgZG9u4oCZdCB0aGluayBpdCBpcyB0aGUgZHJpdmVy
IGF0IGZhdWx0KS4NCg0KLUFuZHkuDQoNCg==
