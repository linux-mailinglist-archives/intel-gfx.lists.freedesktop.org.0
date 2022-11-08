Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A35620640
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 02:41:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DB1710E3F7;
	Tue,  8 Nov 2022 01:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BF8410E3F2
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 01:41:10 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id q9so34959213ejd.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Nov 2022 17:41:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=3m6AiWfuY/c5JtWGjyntVyGmhigK7R7Ad8+dzqQqrx4=;
 b=dP3ljPg/9qygiKA/dDPsotHqcRHTNNOnVjVNCwojASOHEm5E24yka0C4NNBcgxXPER
 6F2yEr0kp/pbhtPxzjbZnEFj0iPen3J/L5WPkmN0VzkyyKbHG31yIN6wd2pNx1OPlZ4/
 ZB6D6UCqDFYtBDqzeQLD5VXY5lvb4b8ZTlmMaH4Is4i6jc9pYT0ctrdpMqhHTHtUc621
 MdogFGO+MyutZPPFgOv2ugEM+W2EvLG9MyO/vljdES/yTmDEE71OjDRwCM9LzQLJ53cH
 WtACNmw7fNyD/zNSCLNijQ6PU5SE8ixeZziDVzdmEp9nd8LO9CJ8qTCNSsRzZg7cl2zW
 iaHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3m6AiWfuY/c5JtWGjyntVyGmhigK7R7Ad8+dzqQqrx4=;
 b=MC/3tluwZ2MW5wDLseFDuC4idOFcdm7HZZ7nlqCyStIJjoYwrxZwb0gscccF943I+i
 nYSFIOT9G183jafxGun8sk4R77SeI6gGJhRnGc13SFGVWg6excBbhGYMlSUv0QWBapav
 dXp6D16d6nqufUbtGIOviezIECuc1VuW/zvuNCi24NtwMM43NcXD6M0otvtsdLCTXoye
 6vg9SiPYfZ1NDbiIaswAEkR1mj/OeVvszoJHqBSjixD3HSKR8IL4QGL6m5JO3A9ZF8EI
 fvg/XYkXu2Uwum6GAI2UHvJ8mcDXjKxcwLhhXb37TEy9sQTu3S8zMJ/3bzi5D/jlpthb
 pk9A==
X-Gm-Message-State: ACrzQf0exJUWtHm8DALNGQgAf5YXsebc+Cbs5TuU3uksyjBKtTYJrD4S
 02OdZ7lwJ5y6kfM41+WhJi7inwjvEffi+Ha3X7ptLA==
X-Google-Smtp-Source: AMsMyM6JG7hEJPPIpFHzqUdlCSkKgpCdWyeP888+/ltpZFZGfbfSv4Oyof/GrM3Kl9eRfd4IidhedU8ZKl5k70/OQLc=
X-Received: by 2002:a17:906:1c52:b0:7ad:c6c5:eae8 with SMTP id
 l18-20020a1709061c5200b007adc6c5eae8mr44428635ejg.439.1667871668795; Mon, 07
 Nov 2022 17:41:08 -0800 (PST)
MIME-Version: 1.0
References: <20221103162302.4ba62d72@maurocar-mobl2>
 <CAGS_qxr1=PLFzM8bGjdowZwdOXMEPiJEnffPUGQvwdhYVJJNvA@mail.gmail.com>
 <20221104084955.4e6e1093@maurocar-mobl2>
 <CAGS_qxp3mmhdxKY1PreGRzVW=+4LVQKBRAAJT3VH8APTFtKJxw@mail.gmail.com>
In-Reply-To: <CAGS_qxp3mmhdxKY1PreGRzVW=+4LVQKBRAAJT3VH8APTFtKJxw@mail.gmail.com>
From: Daniel Latypov <dlatypov@google.com>
Date: Mon, 7 Nov 2022 17:40:57 -0800
Message-ID: <CAGS_qxpZokOs5vEhiiTtD4_c0h79MabGm4dmQ=C+t0qoZEc6iQ@mail.gmail.com>
To: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] KUnit issues - Was: [igt-dev] [PATCH RFC v2 8/8]
 drm/i915: check if current->mm is not NULL
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
Cc: David Gow <davidgow@google.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 Brendan Higgins <brendan.higgins@linux.dev>, linux-kselftest@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>, kunit-dev@googlegroups.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 4, 2022 at 12:20 PM Daniel Latypov <dlatypov@google.com> wrote:
> rmoar@google.com was working on them and should hopefully be able to
> send them out real soon.
> You should get CC'd on those.
>
> I think the follow-up work is just crafting an example parser input
> file and iterating until
>   $ ./tools/testing/kunit/kunit.py parse < /tmp/example_input
> produces our desired results.

I briefly played around with this on top of
https://lore.kernel.org/linux-kselftest/20221104194705.3245738-1-rmoar@google.com/
But instead, I tried to make it so kunit.py parse could be just given
a directory as input so we don't have to do `find | xargs cat`.

I can't get module tests to work locally, so I'll replicate the setup
with some regular files.
Say we have /tmp/results with two files:
file1 contains
  # Subtest: suite1
  KTAP version 1
  1..1
    ok 1 test
  ok 1 suite1
and file2 contains
  # Subtest: suite2
  KTAP version 1
  1..1
    ok 1 test
  ok 1 suite2

I think this should match what module output in debugfs would look like.
A key thing to note: the top level test counter resets between modules, iirc.

The patch below makes this almost work

$ ./tools/testing/kunit/kunit.py parse /tmp/results/
============================================================
 ==================== suite2 (1 subtest) ====================
[PASSED] test
===================== [PASSED] suite2 ======================
==================== suite1 (1 subtest) ====================
[PASSED] test
[ERROR] Test: suite1: Expected test number 2 but found 1
===================== [PASSED] suite1 ======================
============================================================
Testing complete. Ran 2 tests: passed: 2, errors: 1

But there's a few issues
a. the error about multiple top level tests with "test number 1"
b. how do we make this handle kernel output with prefixes (timestamps)
c. and what happens if files each have different length prefixes?

diff --git a/tools/testing/kunit/kunit.py b/tools/testing/kunit/kunit.py
index 4d4663fb578b..c5b2eb416c2d 100755
--- a/tools/testing/kunit/kunit.py
+++ b/tools/testing/kunit/kunit.py
@@ -189,6 +189,14 @@ def _map_to_overall_status(test_status:
kunit_parser.TestStatus) -> KunitStatus:
                return KunitStatus.SUCCESS
        return KunitStatus.TEST_FAILURE

+def _kernel_output_from_dir(dir: str) -> Iterable[str]:
+       yield 'KTAP version 1'
+       for root, dirs, files in os.walk(dir):
+               for sub in files:
+                       with open(os.path.join(root, sub),
errors='backslashreplace') as f:
+                               for line in f:
+                                       yield line
+
 def parse_tests(request: KunitParseRequest, metadata:
kunit_json.Metadata, input_data: Iterable[str]) -> Tuple[KunitResult,
kunit_parser.Test]:
        parse_start = time.time()

@@ -496,6 +504,8 @@ def main(argv):
                if cli_args.file is None:

sys.stdin.reconfigure(errors='backslashreplace')  # pytype:
disable=attribute-error
                        kunit_output = sys.stdin
+               elif os.path.isdir(cli_args.file):
+                       kunit_output = _kernel_output_from_dir(cli_args.file)
                else:
                        with open(cli_args.file, 'r',
errors='backslashreplace') as f:
                                kunit_output = f.read().splitlines()
