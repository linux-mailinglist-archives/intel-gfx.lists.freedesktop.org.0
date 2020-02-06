Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 095D81547E9
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 16:24:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4889E6FA85;
	Thu,  6 Feb 2020 15:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 4790 seconds by postgrey-1.36 at gabe;
 Thu, 06 Feb 2020 15:24:10 UTC
Received: from 9.mo6.mail-out.ovh.net (9.mo6.mail-out.ovh.net [87.98.171.146])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8480F6FA85
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 15:24:10 +0000 (UTC)
Received: from player688.ha.ovh.net (unknown [10.110.208.83])
 by mo6.mail-out.ovh.net (Postfix) with ESMTP id 0F3B11FB105
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 15:04:17 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player688.ha.ovh.net (Postfix) with ESMTPSA id 65491EFDAF33;
 Thu,  6 Feb 2020 14:04:12 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Thu,  6 Feb 2020 16:03:59 +0200
Message-Id: <20200206140402.11790-1-andi@etezian.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 2080663031133356637
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrheefgdehkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrieekkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: [Intel-gfx] [PATCH v6 0/3] Add basic selftests for rc6
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Andi Shyti <andi.shyti@intel.com>

Hi,

unfortunately rc6 is still a mysterious system and not all tests
provide the expected results.

I split the three tests in three different patches in order to
have more flexibility in picking them.

Thanks Chris and Mika for the reviews,
Andi

Changelog:
* v5 -> v6:
	- the tests are split in three different patches, nothing
	  else.
* v4 -> v5:
        - added changes in v4 which I forgot to include
        - a small renaming and refactoring suggested by Mika to
          make clear the purpose of the test function. Now it's
          called "is_rc6_active" in a question format (and I
          believe Chris won't like my creativity) and it returns
          true if rc6 is active and false otherwise. Thanks, Mika!
        - fixed a couple of typos.
	- dropped the live_rc6_basic test.
* v3 -> v4:
        - just a small refactoring where test_rc6 becomes a
          measure function while another test_rc6 checks the
          return value from the measure.
* v2 -> v3:
        - rebased on top of the latest drm-tip
        - fixed exiting order in rc6_basic to avoid exiting
          without releasing the pm reference
* v1 -> v2:
        - some changes from Chris.

Andi Shyti (3):
  drm/i915/selftests: add busy selftests for rc6
  drm/i915/selftests: add threshold selftests for rc6
  drm/i915/selftests: add basic on/off selftests for rc6

 drivers/gpu/drm/i915/gt/selftest_gt_pm.c |   3 +
 drivers/gpu/drm/i915/gt/selftest_rc6.c   | 216 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/selftest_rc6.h   |   3 +
 3 files changed, 222 insertions(+)

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
