Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C851B4AF9
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 18:55:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F436E0B9;
	Wed, 22 Apr 2020 16:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from alexa-out-sd-02.qualcomm.com (alexa-out-sd-02.qualcomm.com
 [199.106.114.39])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FC136E4A7;
 Wed, 22 Apr 2020 02:57:29 +0000 (UTC)
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 21 Apr 2020 19:57:28 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg03-sd.qualcomm.com with ESMTP; 21 Apr 2020 19:57:26 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id 8A1B94CB2; Tue, 21 Apr 2020 19:57:26 -0700 (PDT)
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: linux-pwm@vger.kernel.org
Date: Tue, 21 Apr 2020 19:57:12 -0700
Message-Id: <cover.1587523702.git.gurus@codeaurora.org>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 22 Apr 2020 16:53:58 +0000
Subject: [Intel-gfx] [PATCH v13 00/11] Convert PWM period and duty cycle to
 u64
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, linux-fbdev@vger.kernel.org,
 David Collins <collinsd@codeaurora.org>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, Michael Turquette <mturquette@baylibre.com>,
 Kamil Debski <kamil@wypas.org>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Atish Patra <atish.patra@wdc.com>,
 linux-riscv@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 linux-clk@vger.kernel.org, Guru Das Srinagesh <gurus@codeaurora.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alexander Shiyan <shc_work@mail.ru>, Lee Jones <lee.jones@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Mark Brown <broonie@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Subbaraman Narayanamurthy <subbaram@codeaurora.org>,
 Thomas Gleixner <tglx@linutronix.de>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-hwmon@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Richard Fontana <rfontana@redhat.com>, Stephen Boyd <sboyd@kernel.org>,
 Jingoo Han <jingoohan1@gmail.com>, linux-kernel@vger.kernel.org,
 Yash Shah <yash.shah@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Joe Perches <joe@perches.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

W1JFUVVFU1RdCgpXb3VsZCBpdCBiZSBwb3NzaWJsZSBmb3IgdGhlIHBhdGNoZXMgdGhhdCBoYXZl
IGFscmVhZHkgcmVjZWl2ZWQgQWNrZWQtYnkncyBpbgp0aGlzIHNlcmllcyB0byBiZSBhY2NlcHRl
ZCBhbmQgYXBwbGllZCB0byB0aGUgdHJlZT8gSSBsb3N0IGFuIEFja2VkLWJ5IChpbgppbnRlbC1w
YW5lbC5jKSBiZWNhdXNlIGl0IGhhZCBhIG1lcmdlIGNvbmZsaWN0IHdpdGggYSBuZXcgY2hhbmdl
IHRoYXQgY2FtZSBpbgphZnRlciBJIHJlYmFzZWQgdG8gdGlwLiBJIHdhc24ndCBzdXJlIGVhcmxp
ZXIgYWJvdXQgYWNjZXB0aW5nIHNpbmdsZSBwYXRjaGVzIGFzCm9wcG9zZWQgdG8gdGhlIGVudGly
ZSBzZXJpZXMgZW4gbWFzc2UsIGJ1dCB0aGlzIGV2ZW50IGhhcyBnb3QgbWUgdGhpbmtpbmcuCgpb
Q09WRVIgTEVUVEVSXQoKQmVjYXVzZSBwZXJpb2QgYW5kIGR1dHkgY3ljbGUgYXJlIGRlZmluZWQg
aW4gdGhlIFBXTSBmcmFtZXdvcmsgc3RydWN0cyBhcyBpbnRzCndpdGggdW5pdHMgb2YgbmFub3Nl
Y29uZHMsIHRoZSBtYXhpbXVtIHRpbWUgZHVyYXRpb24gdGhhdCBjYW4gYmUgc2V0IGlzIGxpbWl0
ZWQKdG8gfjIuMTQ3IHNlY29uZHMuIENvbnNlcXVlbnRseSwgYXBwbGljYXRpb25zIGRlc2lyaW5n
IHRvIHNldCBncmVhdGVyIHRpbWUKcGVyaW9kcyB2aWEgdGhlIFBXTSBmcmFtZXdvcmsgYXJlIG5v
dCBiZSBhYmxlIHRvIGRvIHNvIC0gbGlrZSwgZm9yIGluc3RhbmNlLApjYXVzaW5nIGFuIExFRCB0
byBibGluayBhdCBhbiBpbnRlcnZhbCBvZiA1IHNlY29uZHMuCgpSZWRlZmluaW5nIHRoZSBwZXJp
b2QgYW5kIGR1dHkgY3ljbGUgc3RydWN0IG1lbWJlcnMgaW4gdGhlIGNvcmUgUFdNIGZyYW1ld29y
awpzdHJ1Y3RzIGFzIHU2NCB2YWx1ZXMgd2lsbCBlbmFibGUgbGFyZ2VyIHRpbWUgZHVyYXRpb25z
IHRvIGJlIHNldCBhbmQgc29sdmUKdGhpcyBwcm9ibGVtLiBTdWNoIGEgY2hhbmdlIHRvIHRoZSBm
cmFtZXdvcmsgbWFuZGF0ZXMgdGhhdCBkcml2ZXJzIHVzaW5nIHRoZXNlCnN0cnVjdCBtZW1iZXJz
IChhbmQgY29ycmVzcG9uZGluZyBoZWxwZXIgZnVuY3Rpb25zKSBhbHNvIGJlIG1vZGlmaWVkIGNv
cnJlY3RseQppbiBvcmRlciB0byBwcmV2ZW50IGNvbXBpbGF0aW9uIGVycm9ycy4KClRoaXMgcGF0
Y2ggc2VyaWVzIGludHJvZHVjZXMgdGhlIGNoYW5nZXMgdG8gYWxsIHRoZSBkcml2ZXJzIGZpcnN0
LCBmb2xsb3dlZCBieQp0aGUgZnJhbWV3b3JrIGNoYW5nZSBhdCB0aGUgdmVyeSBlbmQgc28gdGhh
dCB3aGVuIHRoZSBsYXR0ZXIgaXMgYXBwbGllZCwgYWxsCnRoZSBkcml2ZXJzIGFyZSBpbiBnb29k
IHNoYXBlIGFuZCB0aGVyZSBhcmUgbm8gY29tcGlsYXRpb24gZXJyb3JzLgoKQ2hhbmdlcyBmcm9t
IHYxMjoKICAtIFJlYmFzZWQgdG8gdGlwIG9mIGZvci1uZXh0CiAgLSBDb2xsZWN0ZWQgQWNrZWQt
YnkgZm9yIHN1bjRpCiAgLSBSZXdvcmtlZCBwYXRjaCBmb3IgaW50ZWwtcGFuZWwuYyBkdWUgdG8g
cmViYXNlLCBkcm9wcGVkIEphbmkncyBBY2tlZC1ieSBhcwogICAgYSByZXN1bHQKCkNoYW5nZXMg
ZnJvbSB2MTE6CiAgLSBSZWJhc2VkIHRvIHRpcCBvZiBmb3ItbmV4dC4KICAtIENvbGxlY3RlZCAi
QWNrZWQtYnk6IiBmb3IgdjcgKHVuY2hhbmdlZCkgb2YgcHdtOiBzaWZpdmU6IFs0XQogIC0gU3F1
aXNoZWQgc3RtMzItbHAuYyBjaGFuZ2Ugd2l0aCBmaW5hbCBwYXRjaCBpbiBzZXJpZXMKICAtIHN1
bjRpOiBVc2VkIG5zZWNzX3RvX2ppZmZpZXMoKQogIC0gaW14Mjc6IEFkZGVkIG92ZXJmbG93IGhh
bmRsaW5nIGxvZ2ljCiAgLSBjbHBzNzExeDogQ29ycmVjdGVkIHRoZSBpZiBjb25kaXRpb24gZm9y
IHNraXBwaW5nIHRoZSBkaXZpc2lvbgogIC0gY2xrOiBwd206IFJldmVydGVkIHRvIHY4IHZlcnNp
b24sIGFkZGVkIGNoZWNrIHRvIHByZXZlbnQgZGl2aXNpb24tYnktemVybwoKQ2hhbmdlcyBmcm9t
IHYxMDoKICAtIENhcmVmdWxseSBhZGRlZCBiYWNrIGFsbCB0aGUgIlJldmlld2VkLWJ5OiAiIGFu
ZCAiQWNrZWQtYnk6ICIgdGFncyByZWNlaXZlZAogICAgc28gZmFyIHRoYXQgaGFkIGdvdHRlbiBt
aXNzZWQgaW4gdjkuIE5vIG90aGVyIGNoYW5nZXMuCgpDaGFuZ2VzIGZyb20gdjk6CiAgLSBHYXRo
ZXJlZCB0aGUgcmVjZWl2ZWQgIlJldmlld2VkLWJ5OiAiIHRhZwogIC0gQWRkZWQgYmFjayB0aGUg
Y2xrLXB3bS5jIHBhdGNoIGJlY2F1c2Uga2J1aWxkIHRlc3Qgcm9ib3QgY29tcGxhaW5lZCBbM10K
ICAgIGFuZCBhZGRyZXNzZWQgcmVjZWl2ZWQgcmV2aWV3IGNvbW1lbnRzLgogIC0gY2xwczcxMXg6
IEFkZHJlc3NlZCByZXZpZXcgY29tbWVudHMuCgpDaGFuZ2VzIGZyb20gdjg6CiAgLSBHYXRoZXJl
ZCBhbGwgcmVjZWl2ZWQgIkFja2VkLWJ5OiAiIGFuZCAiUmV2aWV3ZWQtYnk6ICIgdGFncwogIC0g
RHJvcHBlZCBwYXRjaCB0byBjbGstcHdtLmMgZm9yIHJlYXNvbnMgbWVudGlvbmQgaW4gWzJdCiAg
LSBFeHBhbmRlZCBhdWRpZW5jZSBvZiB1bnJldmlld2VkIHBhdGNoZXMKCkNoYW5nZXMgZnJvbSB2
NzoKICAtIENoYW5nZWQgY29tbWl0IG1lc3NhZ2VzIG9mIGFsbCBwYXRjaGVzIHRvIGJlIGJyaWVm
IGFuZCB0byB0aGUgcG9pbnQuCiAgLSBBZGRlZCBleHBsYW5hdGlvbiBvZiBjaGFuZ2UgaW4gY292
ZXIgbGV0dGVyLgogIC0gRHJvcHBlZCBjaGFuZ2UgdG8gcHdtLXN0aS5jIGFzIHVwb24gcmV2aWV3
IGl0IHdhcyB1bm5lY2Vzc2FyeSBhcyBzdHJ1Y3QKICAgIHB3bV9jYXB0dXJlIGlzIG5vdCBiZWlu
ZyBtb2RpZmllZCBpbiB0aGUgUFdNIGNvcmUuCgpDaGFuZ2VzIGZyb20gdjY6CiAgLSBTcGxpdCBv
dXQgdGhlIGRyaXZlciBjaGFuZ2VzIG91dCBpbnRvIHNlcGFyYXRlIHBhdGNoZXMsIG9uZSBwYXRj
aCBwZXIgZmlsZQogICAgZm9yIGVhc2Ugb2YgcmV2aWV3aW5nLgoKQ2hhbmdlcyBmcm9tIHY1Ogog
IC0gRHJvcHBlZCB0aGUgY29udmVyc2lvbiBvZiBzdHJ1Y3QgcHdtX2NhcHR1cmUgdG8gdTY0IGZv
ciByZWFzb25zIG1lbnRpb25lZAogICAgaW4gaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMv
bGludXgtcHdtL21zZzExNTQxLmh0bWwKCkNoYW5nZXMgZnJvbSB2NDoKICAtIFNwbGl0IHRoZSBw
YXRjaCBpbnRvIHR3bzogb25lIGZvciBjaGFuZ2VzIHRvIHRoZSBkcml2ZXJzLCBhbmQgdGhlIGFj
dHVhbAogICAgc3dpdGNoIHRvIHU2NCBmb3IgZWFzZSBvZiByZXZlcnRpbmcgc2hvdWxkIHRoZSBu
ZWVkIGFyaXNlLgogIC0gUmUtZXhhbWluZWQgdGhlIHBhdGNoIGFuZCBtYWRlIHRoZSBmb2xsb3dp
bmcgY29ycmVjdGlvbnM6CiAgICAgICogaW50ZWxfcGFuZWwuYzoKCURJVjY0X1U2NF9ST1VORF9V
UCAtPiBESVZfUk9VTkRfVVBfVUxMIChhcyBvbmx5IHRoZSBudW1lcmF0b3Igd291bGQgYmUKCTY0
LWJpdCBpbiB0aGlzIGNhc2UpLgogICAgICAqIHB3bS1zdGkuYzoKCWRvX2RpdiAtPiBkaXZfdTY0
IChkb19kaXYgaXMgb3B0aW1pemVkIG9ubHkgZm9yIHg4NiBhcmNoaXRlY3R1cmVzLCBhbmQKCWRp
dl91NjQncyBjb21tZW50IGJsb2NrIHN1Z2dlc3RzIHRvIHVzZSB0aGlzIGFzIG11Y2ggYXMgcG9z
c2libGUpLgoKQ2hhbmdlcyBmcm9tIHYzOgogIC0gUmViYXNlZCB0byBjdXJyZW50IHRpcCBvZiBm
b3ItbmV4dC4KCkNoYW5nZXMgZnJvbSB2MjoKICAtIEZpeGVkICV1IC0+ICVsbHUgaW4gYSBkZXZf
ZGJnIGluIHB3bS1zdG0zMi1scC5jLCB0aGFua3MgdG8ga2J1aWxkIHRlc3Qgcm9ib3QKICAtIEFk
ZGVkIGEgY291cGxlIG9mIGZpeGVzIHRvIHB3bS1pbXgtdHBtLmMgYW5kIHB3bS1zaWZpdmUuYwoK
Q2hhbmdlcyBmcm9tIHYxOgogIC0gRml4ZWQgY29tcGlsYXRpb24gZXJyb3JzIHNlZW4gd2hlbiBj
b21waWxpbmcgZm9yIGRpZmZlcmVudCBhcmNocy4KCnYxOgogIC0gUmV3b3JrZWQgdGhlIGNoYW5n
ZSBwdXNoZWQgdXBzdHJlYW0gZWFybGllciBbMV0gc28gYXMgdG8gbm90IGFkZCBhbgogICAgZXh0
ZW5zaW9uIHRvIGFuIG9ic29sZXRlIEFQSS4gV2l0aCB0aGlzIGNoYW5nZSwgcHdtX29wcy0+YXBw
bHkoKSBjYW4gYmUKICAgIHVzZWQgdG8gc2V0IHB3bV9zdGF0ZSBwYXJhbWV0ZXJzIGFzIHVzdWFs
LgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAxOTA5MTYxNDAwNDguR0I3NDg4
QHVsbW8vClsyXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjAwMzEyMTkwODU5LkdB
MTk2MDVAY29kZWF1cm9yYS5vcmcvClszXSBodHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9s
aW51eC1wd20vbXNnMTE5MDYuaHRtbApbNF0gaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMv
bGludXgtcHdtL21zZzExOTg2Lmh0bWwKClRvOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRl
PgpUbzogRGF2aWQgTGFpZ2h0IDxEYXZpZC5MYWlnaHRAQUNVTEFCLkNPTT4KVG86IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBBbGV4YW5kZXIgU2hpeWFuIDxz
aGNfd29ya0BtYWlsLnJ1PgpDYzogQWxleGFuZHJlIFRvcmd1ZSA8YWxleGFuZHJlLnRvcmd1ZUBz
dC5jb20+CkNjOiBBbGxpc29uIFJhbmRhbCA8YWxsaXNvbkBsb2h1dG9rLm5ldD4KQ2M6IEFybmQg
QmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+CkNjOiBBdGlzaCBQYXRyYSA8YXRpc2gucGF0cmFAd2Rj
LmNvbT4KQ2M6IEJhcnRsb21pZWogWm9sbmllcmtpZXdpY3ogPGIuem9sbmllcmtpZUBzYW1zdW5n
LmNvbT4KQ2M6IENoZW4tWXUgVHNhaSA8d2Vuc0Bjc2llLm9yZz4KQ2M6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRl
ckBvcmFjbGUuY29tPgpDYzogRGFuaWVsIFRob21wc29uIDxkYW5pZWwudGhvbXBzb25AbGluYXJv
Lm9yZz4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KQ2M6IERhdmlkIEFpcmxp
ZSA8YWlybGllZEBsaW51eC5pZT4KQ2M6IERhdmlkIENvbGxpbnMgPGNvbGxpbnNkQGNvZGVhdXJv
cmEub3JnPgpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogRmFiaW8gRXN0
ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPgpDYzogRmFicmljZSBHYXNuaWVyIDxmYWJyaWNlLmdh
c25pZXJAc3QuY29tPgpDYzogR3VlbnRlciBSb2VjayA8bGludXhAcm9lY2stdXMubmV0PgpDYzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogSmVhbiBEZWx2YXJlIDxqZGVsdmFy
ZUBzdXNlLmNvbT4KQ2M6IEppbmdvbyBIYW4gPGppbmdvb2hhbjFAZ21haWwuY29tPgpDYzogSm9l
IFBlcmNoZXMgPGpvZUBwZXJjaGVzLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxh
aHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IEthbWlsIERlYnNraSA8a2FtaWxAd3lwYXMub3Jn
PgpDYzogS2F0ZSBTdGV3YXJ0IDxrc3Rld2FydEBsaW51eGZvdW5kYXRpb24ub3JnPgpDYzogTGVl
IEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KQ2M6IExpYW0gR2lyZHdvb2QgPGxnaXJkd29v
ZEBnbWFpbC5jb20+CkNjOiBsaW51eC1jbGtAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1mYmRl
dkB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LWh3bW9uQHZnZXIua2VybmVsLm9yZwpDYzogbGlu
dXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1wd21Admdlci5rZXJuZWwub3JnCkNj
OiBsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBNYXJrIEJyb3duIDxicm9vbmll
QGtlcm5lbC5vcmc+CkNjOiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWJAa2VybmVsLm9y
Zz4KQ2M6IE1heGltZSBDb3F1ZWxpbiA8bWNvcXVlbGluLnN0bTMyQGdtYWlsLmNvbT4KQ2M6IE1h
eGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KQ2M6IE1pY2hhZWwgVHVycXVldHRlIDxt
dHVycXVldHRlQGJheWxpYnJlLmNvbT4KQ2M6IE5YUCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhw
LmNvbT4KQ2M6IFBhbG1lciBEYWJiZWx0IDxwYWxtZXJAZGFiYmVsdC5jb20+CkNjOiBQYXVsIFdh
bG1zbGV5IDxwYXVsLndhbG1zbGV5QHNpZml2ZS5jb20+CkNjOiBQZW5ndXRyb25peCBLZXJuZWwg
VGVhbSA8a2VybmVsQHBlbmd1dHJvbml4LmRlPgpDYzogUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBw
ZW5ndXRyb25peC5kZT4KQ2M6IFJpY2hhcmQgRm9udGFuYSA8cmZvbnRhbmFAcmVkaGF0LmNvbT4K
Q2M6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KQ2M6IFNoYXduIEd1byA8
c2hhd25ndW9Aa2VybmVsLm9yZz4KQ2M6IFN0ZXBoZW4gQm95ZCA8c2JveWRAa2VybmVsLm9yZz4K
Q2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpDYzogIlZpbGxlIFN5cmrD
pGzDpCIgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogWWFzaCBTaGFoIDx5YXNo
LnNoYWhAc2lmaXZlLmNvbT4KCkd1cnUgRGFzIFNyaW5hZ2VzaCAoMTEpOgogIGRybS9pOTE1OiBV
c2UgNjQtYml0IGRpdmlzaW9uIG1hY3JvCiAgaHdtb246IHB3bS1mYW46IFVzZSA2NC1iaXQgZGl2
aXNpb24gbWFjcm8KICBpci1yeDUxOiBVc2UgNjQtYml0IGRpdmlzaW9uIG1hY3JvCiAgcHdtOiBj
bHBzNzExeDogQ2FzdCBwZXJpb2QgdG8gdTMyIGJlZm9yZSB1c2UgYXMgZGl2aXNvcgogIHB3bTog
cHdtLWlteC10cG06IFVzZSA2NC1iaXQgZGl2aXNpb24gbWFjcm8KICBwd206IGlteDI3OiBVc2Ug
NjQtYml0IGRpdmlzaW9uIG1hY3JvIGFuZCBmdW5jdGlvbgogIHB3bTogc2lmaXZlOiBVc2UgNjQt
Yml0IGRpdmlzaW9uIG1hY3JvCiAgcHdtOiBzdW40aTogVXNlIG5zZWNzX3RvX2ppZmZpZXMgdG8g
YXZvaWQgYSBkaXZpc2lvbgogIGJhY2tsaWdodDogcHdtX2JsOiBVc2UgNjQtYml0IGRpdmlzaW9u
IGZ1bmN0aW9uCiAgY2xrOiBwd206IFVzZSA2NC1iaXQgZGl2aXNpb24gZnVuY3Rpb24KICBwd206
IGNvcmU6IENvbnZlcnQgcGVyaW9kIGFuZCBkdXR5IGN5Y2xlIHRvIHU2NAoKIGRyaXZlcnMvY2xr
L2Nsay1wd20uYyAgICAgICAgICAgICAgICAgICAgICB8ICA3ICsrKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYyB8ICAyICstCiBkcml2ZXJzL2h3bW9uL3B3bS1m
YW4uYyAgICAgICAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9tZWRpYS9yYy9pci1yeDUx
LmMgICAgICAgICAgICAgICAgIHwgIDMgKy0KIGRyaXZlcnMvcHdtL2NvcmUuYyAgICAgICAgICAg
ICAgICAgICAgICAgICB8IDE0ICsrKystLS0tCiBkcml2ZXJzL3B3bS9wd20tY2xwczcxMXguYyAg
ICAgICAgICAgICAgICAgfCAgNSArKy0KIGRyaXZlcnMvcHdtL3B3bS1pbXgtdHBtLmMgICAgICAg
ICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL3B3bS9wd20taW14MjcuYyAgICAgICAgICAgICAg
ICAgICAgfCA1MyArKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0KIGRyaXZlcnMvcHdtL3B3
bS1zaWZpdmUuYyAgICAgICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL3B3bS9wd20tc3Rt
MzItbHAuYyAgICAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9wd20vcHdtLXN1bjRpLmMg
ICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvcHdtL3N5c2ZzLmMgICAgICAgICAg
ICAgICAgICAgICAgICB8ICA4ICsrLS0tCiBkcml2ZXJzL3ZpZGVvL2JhY2tsaWdodC9wd21fYmwu
YyAgICAgICAgICAgfCAgMyArLQogaW5jbHVkZS9saW51eC9wd20uaCAgICAgICAgICAgICAgICAg
ICAgICAgIHwgMTIgKysrLS0tLQogMTQgZmlsZXMgY2hhbmdlZCwgODIgaW5zZXJ0aW9ucygrKSwg
MzUgZGVsZXRpb25zKC0pCgotLSAKVGhlIFF1YWxjb21tIElubm92YXRpb24gQ2VudGVyLCBJbmMu
IGlzIGEgbWVtYmVyIG9mIHRoZSBDb2RlIEF1cm9yYSBGb3J1bSwKYSBMaW51eCBGb3VuZGF0aW9u
IENvbGxhYm9yYXRpdmUgUHJvamVjdApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
