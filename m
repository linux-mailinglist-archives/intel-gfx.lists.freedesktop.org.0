Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BB0321417
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 11:25:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EE926E93E;
	Mon, 22 Feb 2021 10:25:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Mon, 22 Feb 2021 10:25:36 UTC
Received: from esa5.hc3370-68.iphmx.com (esa5.hc3370-68.iphmx.com
 [216.71.155.168])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E78416E93E
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 10:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=citrix.com; s=securemail; t=1613989536;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=f0ntnzxrAcCCprETtimTZivIvh35hgF0Y6cUad1bI1I=;
 b=TcVvPMdZQ0iWYCkn5PIm8CLKcI6FsmP+rwytSFyUKvCAv6Rtt2X2TYHA
 GvK43PC0E7tCtYxjmHuT/2xtFAX1yGkCuDOjj/x8Z0RJMECrZndqt4SZD
 k7HyIFo3z1n9vff7zqTk3C/SwTapMoT6gXOuX5EoyQGQBnapz3RW4DHMF c=;
Authentication-Results: esa5.hc3370-68.iphmx.com;
 dkim=pass (signature verified)
 header.i=@citrix.onmicrosoft.com
IronPort-SDR: HlacU/Q282O7oSGayqyDunGI1sO5TLbsmIAkhNxDbld4Pn+EQUewy6RYP6LZArAbuJyYhZ0Uhc
 H76fHuIsoMr/agFt5DHGVT500fnUvUatDHLkIJ/MPyzN6zxczVRhlFrnXVIO6XD4NflEKvmC3d
 kw8iwGB06NkrJw0TuVUCEYs5DeGglIxmLlITcHZdNHztAQhbVTK6g17Tlj+KxpzHzsY6aRMtiP
 iIaJg1vwqpqnfOa5bEHpIkwjGoZ2FDCoxuLf8Kx4c57g1od0KUe0uRKLtkhot+22Zg+btb9P1Y
 0UU=
X-SBRS: 5.2
X-MesageID: 37652739
X-Ironport-Server: esa5.hc3370-68.iphmx.com
X-Remote-IP: 162.221.156.83
X-Policy: $RELAYED
X-IronPort-AV: E=Sophos;i="5.81,196,1610427600"; d="scan'208";a="37652739"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mFR7OQkD+1fqoh5cJFRlDT05llPXilOQrlyU5nmoAV5OnYP8hQwkpbIZGaI/5dUf/TG3Ftv2zaiO6r7K/hsV9ij5P2j6DvsvD3ujqPDtSRQMjvgTVgqhlDGciZZB/YnFYO+IQGTw9az53/Zq32LsvgalCh7ShjJZBCaVx6e3MX5hFt17CIg0vbyJhv92knx7MMz+zzwxWA2AJ0h9BYCzpyEXhWt0EnXOCogW1POoRqs5K8yw3uN6nj0updmE0ydHt55FrsVYN5nuofYlg7+t0bdVA0eBXjfK4OaO7+15axAqouXJkOEbw9CDAxt0b8yaXqtOHtQ+jGVXu+Zb5fJehQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TDEZAqvOuOUDzy7reVKXP2Cxh0gmJnOMxrdxjFePi4k=;
 b=DKWwfz7W4SYD1Y9JruaDyE4CnnmE0Nk1I4dbUPJQlRPnwiCz98HE/jcEnR0DkTtoaMWW8HJlSn8rY0JLShw22GDcOJAWU2y+CN1yQDrJXA5227r9sLv8+RQYZaWQqY8JfD0dqdoODfXwqpUZIefQml0MOdqGMjLoTcMZHZzj7p9Hf5V9atKVWlst6rhjCa3y6NeFa6zd9JwsVi6gTX2qubH0YVGTCZt8gJmaGW3cgtspIc/hdrW3AqARhFvgDuKY/S3oakad1CcLQrvyfo7NL072CxvI5icPH0tL7NJENlq8xteBprhx/1uZ6rl46ogZgkpzldb37SmvO4rM7M963Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=citrix.com; dmarc=pass action=none header.from=citrix.com;
 dkim=pass header.d=citrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=citrix.onmicrosoft.com; s=selector2-citrix-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TDEZAqvOuOUDzy7reVKXP2Cxh0gmJnOMxrdxjFePi4k=;
 b=vrLY8iU/XRRQ6ki10tm3m7cFhHKb5etEb0nWJlRdAKliSl3LongsFOyTw9mtBom+Q2P72ElY/PQpklYJ4YNbsaeWZNNDBiadVo7vUxQaJxU5qQB+iDj/7apaDcUOhLjrWM27PJrel8OURBfjVwWO1m0Of3U6inhHb3c8j/zFwEQ=
Date: Mon, 22 Feb 2021 11:18:07 +0100
From: Roger Pau =?utf-8?B?TW9ubsOp?= <roger.pau@citrix.com>
To: Jason Andryuk <jandryuk@gmail.com>
Message-ID: <YDOE35zhQYwgaxke@Air-de-Roger>
References: <1a3b90f4-564e-84d3-fd6a-3454e8753579@citrix.com>
 <20201015113109.GA68032@Air-de-Roger>
 <CAKf6xpsJYT7VCeaf6TxPNK1QD+3U9E8ST7E+mWtfDjw0k9L9dA@mail.gmail.com>
 <CAKf6xps1q9zMBeFg7C7ZhD-JcwQ6EG6+bYvvA9QT8PzzxKqMNg@mail.gmail.com>
 <20201021095809.o53b6hpvjl2lbqsi@Air-de-Roger>
 <CAKf6xpuTE4gBNe4YXPYh_hAMLaJduDuKL5_6aC4H=y6DRxaxvw@mail.gmail.com>
 <a4dd7778-9bd4-00c1-3056-96d435b70d70@suse.com>
 <CAKf6xpvKiWiU5Wsv2C1EiEFr77nMZTd+VHgkdk7qcKw1OFD8Vg@mail.gmail.com>
 <9bbf6768-a39e-2b3c-c4de-fd883cc9ef85@suse.com>
 <CAKf6xpuTbvGtTRHPK9Ock7rxJk4DfCumgTW7-2_PADm9cSaUBg@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAKf6xpuTbvGtTRHPK9Ock7rxJk4DfCumgTW7-2_PADm9cSaUBg@mail.gmail.com>
X-ClientProxiedBy: PR3P189CA0074.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:b4::19) To DS7PR03MB5608.namprd03.prod.outlook.com
 (2603:10b6:5:2c9::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3e8ac64a-49b4-4f0f-99c0-08d8d71b28b9
X-MS-TrafficTypeDiagnostic: DM6PR03MB5354:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR03MB53547C0B39A488BBB74521BE8F819@DM6PR03MB5354.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SgNZg9C/akNhstNAJman/iFsW4+lyM4190OIPdMeUw3I4qiM2uwFC90eVQCoWrX6HDdFfterMlVNhEUws5BD9wO1+OZ8qkamUoLRvzQ8yznvvpLM0WI1Z1P1WfDIN+qxJYSV4aRmjnoMOoTFpUikHps4y1ErdeHU76Xix+2zK4prVQa4VMiu40DzLkhj2fFC+eZ89o++59DF3viGdk1f9fQ3Dt5QBDqd7iWRwtF/K3hGSf3ZVAoXFnekiuADCDXlTGwB1V7NsiyONa3nzNmSC2X2LQ5S8rw+GPkFSDy8aEXly59U1evhRNXXs18v794/kgAR7WilWL4TzXNQ67sdt9HXSA8mFRZNXSPDE0MzZNC5CQuNoc7aljxCb6e/+exCKyERcYNGKSxyUAKEp7GGzK0O+sjTjA+PM9e0rIOCFkjWUhqoBwjFZWMrGYHFtZ7i76rgTFbFhKBFB+WByf2xO4mtiBHxqcsC8p0HS6QIqOhRaWfknEzDcx+Sjr6vcvEX4TqJSjYyrlq/lylFtESCVA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR03MB5608.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(39860400002)(396003)(366004)(136003)(346002)(376002)(33716001)(186003)(66476007)(9686003)(83380400001)(54906003)(6916009)(6666004)(26005)(2906002)(8676002)(86362001)(316002)(16526019)(956004)(478600001)(8936002)(53546011)(6496006)(5660300002)(85182001)(66946007)(66556008)(4326008)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?Z3ExdG1kaWtiQ05RQ3hhU2NOUWxnQUhQNi9KM2ExbFQ2bURjYnpBR1ppUEQx?=
 =?utf-8?B?SGZSMDlWMUpwdks1Z204ditYVEFJeFlhS0tEblpQbXFCYWJVclIyS1BMWFlE?=
 =?utf-8?B?QWFXQXNSTlp2RHhIaWFCbkd1QldpVjY0T2dobjVldDRUaEtoTi9VamVoVGln?=
 =?utf-8?B?aU5hVGxPbzcwMTNjaHRhanRFVkVkYTg4ZW80NllQcXdHZnMwU3VHbTJmZFNm?=
 =?utf-8?B?QXhDSXdOM1EweXhtL2lqeTBjQWdSWFlzdHpZdXFiZTRQd0haMStJa1dBNE96?=
 =?utf-8?B?TTBUeTFDSEpMb3lrL2xRZVRraGdNeXhrWk1HOGJwdkVjOENNdW5MVWUyQWho?=
 =?utf-8?B?amY4UlZscGJGUTlsT1BkYk9qN3ZFekxxY09xWStVeWJKUjN0WUhnaFlPNC8r?=
 =?utf-8?B?Wjd0Y3dtSjI0bFdnNTdwRGdrSVBjc2V1SnRwMkNpU2ZQRHRkV2lQUFRSdG94?=
 =?utf-8?B?Y1QrRTZUNnhvMnVKUFlidzJaaTFUbVVzY0UzS2doNXVsdTF6eGVSZVRPRjBq?=
 =?utf-8?B?N2tMMllYVWhUTHE5bEVQc3FSWjM4bi9NVFNTK2t0MWs3cUNGeFU0RzF3bisx?=
 =?utf-8?B?UHo3cUFIZ0FZSFlvcnJHaGlaYUNyTHFWTThKTXlDSk8yZXpkellSM2F3QmZ3?=
 =?utf-8?B?OWxLaisxRUErcjlyWVFCd25XdVFUZ1o0SnRYYXBld3pXZVN5WjIvWklIbWJs?=
 =?utf-8?B?SVJja1Y2TTVuN3lmaGpvd050OWlpUlFUUVB3OXVCOFNtL1EvblQ4ZVExK1Y1?=
 =?utf-8?B?Vmh6TEdEdlhxRnZoRVVkSE1LZ1dBZ3FiYWZtKzg3eTdzTGxUNzJRcE5TeFpq?=
 =?utf-8?B?d0dXS3hwQ0I0L2V5VGZRWWZ3VWxlWjV0Ulc1dmt5SjRUOW5JN1BraUNIZjdX?=
 =?utf-8?B?Qzh5RzltMFQ3VzZ2L3ZUcXlMc2dndWdJb01xcWpzbE10cDlhRmVWZTdrbXFI?=
 =?utf-8?B?TXN0MWc0a2VlakxNYTE1NjNZSGtnUU1VQTJIZnliOG5memVnbzhBNDk0c1Zw?=
 =?utf-8?B?VG1ZcnJZUnR6b1ZoQmpQMUJiQ0tIZm9XSytVL3BNZ1BvN2J6RnRmTGsvZVpR?=
 =?utf-8?B?cThKK0xFUmlkQ1FLd1ZIUy9kdzdsa21PRWwrc3lHMTRVcFAySmxEMnhYWjBF?=
 =?utf-8?B?R1kzRno1RFJ5dy9OdEpJc2REWm9wTTZOYVpnQTBjWmJjV2dDdHNyTVlvMUVu?=
 =?utf-8?B?UmRKUmdvaWlBZ1lVOWNxMUpYemtGTElCcXNOUSs0SVN6TjZkRUczTmVreFM0?=
 =?utf-8?B?aHhxdzJoSk1UZTZmWkpkTUNKWVR2emxPRjYyV2xVSFl3UmtJMDJuN0k4Rkw4?=
 =?utf-8?B?T2dFSmhabzJFNzM0eGhtR1RXajdKYlhBYW1zaWJkVUJuNXVGUmYvYUhPVjg5?=
 =?utf-8?B?Y05UK1lsdm01SHBjZm4rcUhwTno4SVlFYXA5RHh6T2IyZklGUXQwYU1pY1p4?=
 =?utf-8?B?ZElLVnp5aC9HWnJ2U3JnV1dXcCs5NHdOOHJYclZxcFBIZnhpNi8xVDdvR1My?=
 =?utf-8?B?YVFSS1Z2WUxnQStWNy81OHRxYjF4Mk1PWnY4U0o4eHNVejlpNTFJbE1pWHVV?=
 =?utf-8?B?cjlERk1lYitwUlEwdk9iakdwN3NnN3M3OXJiUkdwLzZDTmVMaFUwdEVjbUNM?=
 =?utf-8?B?elRMdU1ZNkhXL2ZtMEZOTld1dnpCTlJqaWk5azlma1JORFAwYi9lbWt0Sktj?=
 =?utf-8?B?VzdJUDNBcFBLR2lYMW1iNkIwQkZzMkpOdTRiNGcvZE12UUJSS3JObFR3RzVM?=
 =?utf-8?Q?3gkErRIH70ca51WbEwiz+0SzHEUjYY0ux8zVoPi?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e8ac64a-49b4-4f0f-99c0-08d8d71b28b9
X-MS-Exchange-CrossTenant-AuthSource: DS7PR03MB5608.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2021 10:18:12.2536 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335836de-42ef-43a2-b145-348c2ee9ca5b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5L3q2t2vBwrItu306GyTWLI8xDuTCEJOxyTzLBG8sRxeg2di2TLiC8VTJCCVnq2EQVXNoqkOfAoauRukFhBrAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB5354
X-OriginatorOrg: citrix.com
Subject: Re: [Intel-gfx] i915 dma faults on Xen
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
Cc: Andrew Cooper <andrew.cooper3@citrix.com>, intel-gfx@lists.freedesktop.org,
 eric chanudet <eric.chanudet@gmail.com>, Jan Beulich <jbeulich@suse.com>,
 xen-devel <xen-devel@lists.xenproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBGZWIgMTksIDIwMjEgYXQgMTI6MzA6MjNQTSAtMDUwMCwgSmFzb24gQW5kcnl1ayB3
cm90ZToKPiBPbiBXZWQsIE9jdCAyMSwgMjAyMCBhdCA5OjU5IEFNIEphbiBCZXVsaWNoIDxqYmV1
bGljaEBzdXNlLmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gMjEuMTAuMjAyMCAxNTozNiwgSmFzb24g
QW5kcnl1ayB3cm90ZToKPiA+ID4gT24gV2VkLCBPY3QgMjEsIDIwMjAgYXQgODo1MyBBTSBKYW4g
QmV1bGljaCA8amJldWxpY2hAc3VzZS5jb20+IHdyb3RlOgo+ID4gPj4KPiA+ID4+IE9uIDIxLjEw
LjIwMjAgMTQ6NDUsIEphc29uIEFuZHJ5dWsgd3JvdGU6Cj4gPiA+Pj4gT24gV2VkLCBPY3QgMjEs
IDIwMjAgYXQgNTo1OCBBTSBSb2dlciBQYXUgTW9ubsOpIDxyb2dlci5wYXVAY2l0cml4LmNvbT4g
d3JvdGU6Cj4gPiA+Pj4+IEhtLCBpdCdzIGhhcmQgdG8gdGVsbCB3aGF0J3MgZ29pbmcgb24uIE15
IGxpbWl0ZWQgZXhwZXJpZW5jZSB3aXRoCj4gPiA+Pj4+IElPTU1VIGZhdWx0cyBvbiBicm9rZW4g
c3lzdGVtcyB0aGVyZSdzIGEgc21hbGwgcmFuZ2UgdGhhdCBpbml0aWFsbHkKPiA+ID4+Pj4gdHJp
Z2dlcnMgdGhvc2UsIGFuZCB0aGVuIHRoZSBkZXZpY2UgZ29lcyB3b25reSBhbmQgc3RhcnRzIGFj
Y2Vzc2luZyBhCj4gPiA+Pj4+IHdob2xlIGxvYWQgb2YgaW52YWxpZCBhZGRyZXNzZXMuCj4gPiA+
Pj4+Cj4gPiA+Pj4+IFlvdSBjb3VsZCB0cnkgYWRkaW5nIHRob3NlIG1hbnVhbGx5IHVzaW5nIHRo
ZSBybXJyIFhlbiBjb21tYW5kIGxpbmUKPiA+ID4+Pj4gb3B0aW9uIFswXSwgbWF5YmUgeW91IGNh
biBmaWd1cmUgb3V0IHdoaWNoIHJhbmdlKHMpIGFyZSBtaXNzaW5nPwo+ID4gPj4+Cj4gPiA+Pj4g
VGhleSBzZWVtIHRvIGNoYW5nZSwgc28gaXQncyBoYXJkIHRvIGtub3cuICBXb3VsZCB0aGVyZSBi
ZSBoYXJtIGluCj4gPiA+Pj4gYWRkaW5nIG9uZSB0byBjb3ZlciB0aGUgZW5kIG9mIFJBTSAoIDB4
MDQsN2M4MCwwMDAwICkgdG8gKAo+ID4gPj4+IDB4ZmYsZmZmZixmZmZmICk/ICBNYXliZSB0aGF0
IHdvdWxkIGp1c3QgcXVpZXQgdGhlIHBvaW50bGVzcyBmYXVsdHMKPiA+ID4+PiB3aGlsZSBsZWF2
aW5nIHRoZSBJT01NVSBlbmFibGVkPwo+ID4gPj4KPiA+ID4+IFdoaWxlIHRoZXkgbWF5IHF1aWV0
ZW4gdGhlIGZhdWx0cywgSSBkb24ndCB0aGluayB0aG9zZSBmYXVsdHMgYXJlCj4gPiA+PiBwb2lu
dGxlc3MuIFRoZXkgaW5kaWNhdGUgc29tZSBwcm9ibGVtIHdpdGggdGhlIHNvZnR3YXJlIChsZXNz
Cj4gPiA+PiBsaWtlbHkgdGhlIGhhcmR3YXJlLCBwb3NzaWJseSB0aGUgZmlybXdhcmUpIHRoYXQg
eW91J3JlIHVzaW5nLgo+ID4gPj4gQWxzbyB0aGVyZSdzIHRoZSBxdWVzdGlvbiBvZiB3aGF0IHRo
ZSBvdmVyYWxsIGJlaGF2aW9yIGlzIGdvaW5nCj4gPiA+PiB0byBiZSB3aGVuIGRldmljZXMgYXJl
IHBlcm1pdHRlZCB0byBhY2Nlc3MgdW5wb3B1bGF0ZWQgYWRkcmVzcwo+ID4gPj4gcmFuZ2VzLiBJ
IGFzc3VtZSB5b3UgZGlkIGNoZWNrIGFscmVhZHkgdGhhdCBubyBkZXZpY2VzIGhhdmUgdGhlaXIK
PiA+ID4+IEJBUnMgcGxhY2VkIGluIHRoYXQgcmFuZ2U/Cj4gPiA+Cj4gPiA+IElzbid0IG5vLWln
ZnggYWxyZWFkeSBsZXR0aW5nIHRoZW0gdHJ5IHRvIHJlYWQgdGhvc2UgdW5wb3B1bGF0ZWQgYWRk
cmVzc2VzPwo+ID4KPiA+IFllcywgYW5kIGl0IGlzIGZvciB0aGUgcmVhc29uIHRoYXQgdGhlIGRv
Y3VtZW50YXRpb24gZm9yIHRoZQo+ID4gb3B0aW9uIHNheXMgIklmIHNwZWNpZnlpbmcgYG5vLWln
ZnhgIGZpeGVzIGFueXRoaW5nLCBwbGVhc2UKPiA+IHJlcG9ydCB0aGUgcHJvYmxlbS4iIEkgaW1w
bHkgZnJvbSBpbiBpbiBwYXJ0aWN1bGFyIHRoYXQgb25lCj4gPiBiZXR0ZXIgd291bGRuJ3QgdXNl
IGl0IGZvciBub24tZGV2ZWxvcG1lbnQgcHVycG9zZXMgb2Ygd2hhdGV2ZXIKPiA+IGtpbmQuCj4g
Cj4gSSBzdG9wcGVkIHNlZWluZyB0aGVzZSBETUEgZmF1bHRzLCBidXQgSSBkaWRuJ3Qga25vdyB3
aGF0IG1hZGUgdGhlbSBnbwo+IGF3YXkuICBUaGVuIHdoZW4gd29ya2luZyB3aXRoIGFuIG9sZGVy
IDUuNC42NCBrZXJuZWwsIEkgc2F3IHRoZW0KPiBhZ2Fpbi4gIEVyaWMgYmlzZWN0ZWQgZG93biB0
byB0aGUgNS40LnkgdmVyc2lvbiBvZiBtYWlubGluZSBsaW51eAo+IGNvbW1pdDoKPiAKPiBjb21t
aXQgODE5NTQwMGY3ZWE5NTM5OWY3MjFhZDIxZjRkNjYzYTYyYzY1MDM2Zgo+IEF1dGhvcjogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gRGF0ZTogICBNb24gT2N0IDE5
IDExOjE1OjIzIDIwMjAgKzAxMDAKPiAKPiAgICAgZHJtL2k5MTU6IEZvcmNlIFZUJ2Qgd29ya2Fy
b3VuZHMgd2hlbiBydW5uaW5nIGFzIGEgZ3Vlc3QgT1MKPiAKPiAgICAgSWYgaTkxNS5rbyBpcyBi
ZWluZyB1c2VkIGFzIGEgcGFzc3Rocm91Z2ggZGV2aWNlLCBpdCBkb2VzIG5vdCBrbm93IGlmCj4g
ICAgIHRoZSBob3N0IGlzIHVzaW5nIGludGVsX2lvbW11LiBNaXhpbmcgdGhlIGlvbW11IGFuZCBn
ZnggY2F1c2VzIGEgZmV3Cj4gICAgIGlzc3VlcyAoc3VjaCBhcyBzY2Fub3V0IG92ZXJmZXRjaCkg
d2hpY2ggd2UgbmVlZCB0byB3b3JrYXJvdW5kIGluc2lkZQo+ICAgICB0aGUgZHJpdmVyLCBzbyBp
ZiB3ZSBkZXRlY3Qgd2UgYXJlIHJ1bm5pbmcgdW5kZXIgYSBoeXBlcnZpc29yLCBhbHNvCj4gICAg
IGFzc3VtZSB0aGUgZGV2aWNlIGFjY2VzcyBpcyBiZWluZyB2aXJ0dWFsaXNlZC4KClNvIHRoZSBj
b21taXQgYWJvdmUgZml4ZXMgdGhlIERNQSBmYXVsdHMgc2VlbiBvbiBMaW51eCB3aGVuIHVzaW5n
IGEKaTkxNSBnZnggY2FyZD8KClRoYW5rcyBmb3IgZGlnZ2luZyBpbnRvIHRoaXMuCgpSb2dlci4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
